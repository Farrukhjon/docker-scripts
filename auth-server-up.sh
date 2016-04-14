#!/bin/bash

docker stop auth-server
docker rm auth-server
docker run --detach --name=auth-server --hostname=auth-server -e EUREKA_HOST=registry-server -e EUREKA_PORT=8761 -e SPRING_PROFILES_ACTIVE=docker --publish=8082:8082 --link registry-server --link config-server --link mysql --restart=always dregistery.seller.place:5000/auth-server
