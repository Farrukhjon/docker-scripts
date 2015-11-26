#!/bin/bash

docker stop mongodb
docker rm mongodb
docker rm mongodb-data

docker run --detach --name mongodb-data --volume /data/db busybox
docker run --detach --name mongodb --hostname mongodb --publish 127.0.0.1:27017:27017 --restart always \
           --volumes-from mongodb-data mongo --storageEngine=wiredTiger --notablescan --journalCommitInterval=300 --directoryperdb --auth

