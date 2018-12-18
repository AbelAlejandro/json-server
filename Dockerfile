FROM node:latest
MAINTAINER Abelardo

RUN npm install -g json-server

WORKDIR /data
VOLUME /data
COPY . /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
