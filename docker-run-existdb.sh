#!/bin/bash

docker pull davidgaya/existdb
docker stop docker existdb
docker rm existdb
docker run --detach --name existdb --hostname existdb --publish 127.0.0.1:8080:8080 -e EXIST_ADMIN_PASSWORD=sa --restart always --volume exist-data:/var/lib/exist-data davidgaya/existdb:latest

