FROM node:14.8.0-alpine3.10

RUN apk add --no-cache openssl
RUN apk add --no-cache bash

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY ./ ./

EXPOSE 4004

CMD ["yarn", "start"]

