#!/bin/bash

docker pull mysql
docker stop mysql
docker rm mysql

docker run --detach --name mysql --hostname mysql --publish 127.0.0.1:3306:3306 --restart always \
           --env MYSQL_ROOT_PASSWORD=sa --env MYSQL_USER=mysql --env MYSQL_PASSWORD=mysql --env MYSQL_DATABASE=testdb --volume mysql-data:/var/lib/mysql-data mysql

