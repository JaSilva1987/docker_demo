FROM node:12-alpine

WORKDIR /apps

COPY package.json .

RUN apk add --no-chache -f python2 g++ make
RUN yarn install --production

COPY . .

CMD ["node", "src/index.js"]

EXPOSE 3000