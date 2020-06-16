FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY *.js .
EXPOSE 3000
CMD [ "node", "server.js" ]