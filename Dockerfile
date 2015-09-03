FROM node:0.10

ENV HOME /home
ENV SERVICE_HOME /home/src

RUN npm install nodemon -g
RUN npm install mocha -g
RUN npm install istanbul -g

RUN mkdir $SERVICE_HOME
RUN mkdir $HOME/logs
RUN mkdir $HOME/files
WORKDIR $SERVICE_HOME

ADD ./service/package.json $SERVICE_HOME/package.json

RUN npm install
RUN mv node_modules ../

ADD ./service $SERVICE_HOME

EXPOSE 3000
EXPOSE 5858

CMD npm start
