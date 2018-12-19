FROM node:11.4.0

RUN npm install -g sh
RUN npm install -g json-server

WORKDIR /data
VOLUME /data
COPY db.json /data

EXPOSE 3000
CMD json-server --watch db.json
