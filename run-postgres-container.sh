#!/bin/bash

#docker pull postgres
docker stop postgres
docker rm postgres

docker run --detach --name postgres --hostname postgres --publish 127.0.0.1:5432:5432 --restart always \
           --env POSTGRES_PASSWORD=sa --env POSTGRES_USER=postgres --env POSTGRES_DB=testdb --volume postgres-data:/var/lib/postgres-data postgres


