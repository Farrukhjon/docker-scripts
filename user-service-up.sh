#!/bin/bash

docker stop user-service
docker rm user-service
docker run --detach --name=user-service --hostname=user-service -e EUREKA_HOST=registry-server -e EUREKA_PORT=8761 -e SPRING_PROFILES_ACTIVE=docker --publish=8081:8081 --link registry-server --link config-server --restart=always dregistery.seller.place:5000/user-service 
