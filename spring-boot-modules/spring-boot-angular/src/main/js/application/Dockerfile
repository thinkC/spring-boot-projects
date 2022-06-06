#Build Stage
FROM node:14.7.0-alpine3.12 AS build
RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app/
RUN npm install
RUN npm install -g @angular/cli@1.7.4
COPY ./ /app/
RUN npm build --prod
CMD [ "npm", "start" ]
