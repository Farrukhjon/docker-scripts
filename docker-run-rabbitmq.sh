#!/bin/bash

docker run --detach --name rabbitmq-data --volume /var/lib/rabbitmq busybox
docker run --detach --name rabbitmq --hostname rabbitmq --publish 127.0.0.1:5672:5672 --publish 15672:15672 --volumes-from rabbitmq-data --restart always rabbitmq:management

