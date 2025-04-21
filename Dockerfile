FROM node:jod-alpine

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache ttyd

WORKDIR /home/node/app

COPY ./package*.json ./

RUN npm i --silent

COPY . .

ENV NODE_PATH=./dist

RUN npm run build

EXPOSE 4000

CMD ["ttyd", "-W", "--port", "4000", "--interface", "0.0.0.0", "node", "dist/index.js"]
