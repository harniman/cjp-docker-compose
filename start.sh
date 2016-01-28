#!/bin/bash

#docker-machine active beedemo-local
docker-machine start beedemo-local
eval "$(docker-machine env beedemo-local) "
docker-machine ls
docker-machine ssh beedemo-local sudo "mkdir -p /Users"
docker-machine ssh beedemo-local sudo /var/lib/boot2docker/bootlocal.sh
docker-machine ssh beedemo-local sudo "mkdir -p /data"
docker-machine ssh beedemo-local sudo "chmod 777 /data"
docker-compose up -d
docker-compose logs

