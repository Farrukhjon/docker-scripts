#!/bin/bash

docker stop registry-server
docker rm registry-server
docker run --detach --name=registry-server --hostname=registry-server --publish=8761:8761 --restart=always dregistery.seller.place:5000/registry-server 
