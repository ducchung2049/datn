FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache git curl bash

COPY ./scripts/bun.sh /scripts/bun.sh

RUN chmod +x /scripts/bun.sh \
    && /scripts/bun.sh \ 
    && ln -s $HOME/.bun/bin/bun /usr/local/bin/bun

ENV NODE_ENV=development

EXPOSE 5173
