#!/bin/bash

docker pull jenkins
docker stop jenkins
docker rm jenkins
docker run --detach --name jenkins --hostname jenkins --publish 127.0.0.1:7070:8080 --restart always --volume jenkins_home:/var/jenkins_home jenkins

