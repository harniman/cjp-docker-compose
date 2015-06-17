#!/bin/bash

docker-machine active beedemo-local
eval "$(docker-machine env)"
docker-machine ls
docker-compose up -d
docker-compose logs

