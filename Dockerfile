FROM node:lts-alpine

RUN mkdir /app

WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

ENV PORT 5684

EXPOSE 5684

CMD ["yarn", "sucrase-node", "server.js"]
