FROM node:7.7-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm config set registry http://registry.npmjs.org
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080



CMD [ "npm", "start" ]