#!/usr/bin/env bash

dockerpath="rajxxx/houserent"

echo "Docker ID and Image: $dockerpath"

docker login && docker image tag houserent $dockerpath

docker push $dockerpath