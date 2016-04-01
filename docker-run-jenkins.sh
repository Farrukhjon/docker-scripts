#!/bin/bash

docker pull jenkins
docker stop jenkins
docker rm jenkins
docker run --detach --name jenkins --hostname jenkins --publish 8080:8080 --publish 50000:50000 --restart always --volume /var/jenkins_home jenkins

