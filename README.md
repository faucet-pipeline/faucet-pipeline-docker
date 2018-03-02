# faucet-pipeline Docker

## Standalone Usage

[![asciicast](https://asciinema.org/a/tlWTY82OyFcztOkYa9HZh3dK7.png)](https://asciinema.org/a/tlWTY82OyFcztOkYa9HZh3dK7)

## With docker-compose

```
version: "3"
services:
  app:
    # your app...

  faucet:
    image: moonglum/faucet-pipeline:latest
    command: faucet --watch
    env_file: .env
    user: "${USER_MAPPING:-app:app}"
    volumes:
    - .:/code
    - node_modules:/code/node_modules

volumes:
  node_modules:
```
