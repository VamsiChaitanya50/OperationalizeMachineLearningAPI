#!/usr/bin/env bash

docker build --tag=houserent .

docker image ls

docker run -p 8000:80 houserent