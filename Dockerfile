FROM node:18-alpine3.18

RUN apk update && apk add --no-cache \
    build-base \
    gcc \
    autoconf \
    automake \
    zlib-dev \
    libpng-dev \
    nasm \
    bash \
    vips-dev \
    git

ENV NODE_ENV=${NODE_ENV}

RUN yarn global add node-gyp
RUN yarn config set network-timeout 600000 -g
USER node
