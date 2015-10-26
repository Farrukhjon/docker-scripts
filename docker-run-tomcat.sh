#!/bin/bash

docker run --detach --name tomcat --hostname tomcat --publish 8888:8080 --restart always \
                --volume $HOME/Docker/tomcat/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml:ro tomcat:8-jre8
