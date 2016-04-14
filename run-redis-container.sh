#!/bin/bash

docker pull redis
docker stop redis
docker rm redis

docker run --detach --name redis --hostname redis --publish 127.0.0.1:6379:6379 --restart always --volume redis-data:/var/lib/redis-data redis

