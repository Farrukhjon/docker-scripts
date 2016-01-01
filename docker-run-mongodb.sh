#!/bin/bash

docker stop mongodb
docker rm mongodb
docker run --detach --name mongodb --hostname mongodb --publish 127.0.0.1:27017:27017 --restart always --volume mongo-data:/var/lib/mongo-data mongo

