#!/bin/bash

docker stop config-server
docker rm config-server
docker run --detach --name=config-server --hostname=config-server -e EUREKA_HOST=registry-server -e EUREKA_PORT=8761 --publish=8888:8888 --link registry-server --restart=always dregistery.seller.place:5000/config-server 
