#!/bin/bash

docker stop api-gateway
docker rm api-gateway
docker run --detach --name=api-gateway --hostname=api-gateway -e EUREKA_HOST=registry-server -e EUREKA_PORT=8761 -e SPRING_PROFILES_ACTIVE=docker --publish=80:8080 --link registry-server --link config-server --link user-service --link auth-server --restart=always dregistery.seller.place:5000/api-gateway 
