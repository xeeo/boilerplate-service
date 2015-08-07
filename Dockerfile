FROM node:0.10

MAINTAINER Raul Geana, geana.raul@icloud.com

RUN npm install -g grunt-cli

COPY ./src /service
WORKDIR /service
RUN mkdir logs
RUN mkdir files
RUN rm -rf node_modules
RUN npm install

ENV NODE_ENV production

# Port 3000 for server
# Port 5858 for debugger
EXPOSE 3000 5858

ENTRYPOINT ["/nodejs/bin/npm", "start"]
