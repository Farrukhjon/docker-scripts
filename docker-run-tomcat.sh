#!/bin/bash

docker pull tomcat:8-jre8
docker stop tomcat
docker rm tomcat
docker run --detach --name tomcat --hostname tomcat --publish 127.0.0.1:8888:8080 --restart always \
                --volume $HOME/Docker/tomcat/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml:ro tomcat:8-jre8
