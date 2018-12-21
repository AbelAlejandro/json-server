FROM node:11.4.0

RUN npm install -g sh
RUN npm install -g json-server

WORKDIR /data
VOLUME /data
COPY db.json /data

CMD json-server --watch db.json --port 3001
