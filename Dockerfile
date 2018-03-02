FROM node:9.7-alpine

ENV PATH="/home/faucet/.bin:/home/faucet/.yarn/bin:${PATH}"

RUN addgroup -S faucet && \
  adduser -S -G faucet faucet

WORKDIR /code
USER faucet

ADD scripts /home/faucet/.bin

# TODO: Remove mkdirp when the fix is released
RUN yarn global add faucet-pipeline@1.0.0-rc.1 \
                    faucet-pipeline-js@1.0.0-rc.2 \
                    faucet-pipeline-sass@1.0.0-rc.1 \
                    faucet-pipeline-static@1.0.0-rc.1 \
                    mkdirp

CMD ["compile"]
