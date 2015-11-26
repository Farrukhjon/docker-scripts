#!/bin/bash

docker stop redis
docker rm redis
docker rm redis-data

docker run --detach --name redis-data --volume /data busybox
docker run --detach --name redis --hostname redis --publish 127.0.0.1:6379:6379 --volumes-from redis-data --restart always redis

