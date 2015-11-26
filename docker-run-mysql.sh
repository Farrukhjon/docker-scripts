#!/bin/bash

docker stop mysql
docker rm mysql
docker rm mysql-data

docker run --detach --name mysql-data --volume /var/lib/mysql --volume /etc/mysql/conf.d busybox
docker run --detach --name mysql --hostname mysql --publish 127.0.0.1:3306:3306 --restart always \
           --env MYSQL_ROOT_PASSWORD=sa --env MYSQL_USER=mysql --env MYSQL_PASSWORD=mysql --env MYSQL_DATABASE=testdb mysql

