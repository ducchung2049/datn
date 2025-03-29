FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache git curl bash

RUN curl -fsSL https://bun.sh/install | bash \ 
    && ln -s $HOME/.bun/bin/bun /usr/local/bin/bun

ENV NODE_ENV=development

EXPOSE 5173
