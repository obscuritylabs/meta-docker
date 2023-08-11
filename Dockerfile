FROM node:16 AS builder

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
ENV NODE_ENV=production

RUN npm i -g meta

ENTRYPOINT [ "meta" ]