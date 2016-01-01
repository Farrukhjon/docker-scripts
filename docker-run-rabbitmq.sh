#!/bin/bash

docker stop rabbitmq
docker rm rabbitmq

docker run --detach --name rabbitmq --hostname rabbitmq --publish 127.0.0.1:5672:5672 --publish 15672:15672 --restart always --volume rabbitmq-data:/var/lib/rabbitmq-data rabbitmq:management

