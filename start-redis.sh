#!/bin/bash

if [ -z $1 ] || [ -z $2 ]
then
  echo 'not enought argument'
  echo 'start-redis <conf-path> <redis-port>'
  echo 'e.g. start-redis (pwd)/redis.conf 7000'
else
  docker run -d -p $2:$2 \
    -v $1:/etc/redis/redis.conf \
    -v redis.data:/data \
    redis:alpine \
    redis-server /etc/redis/redis.conf
fi
