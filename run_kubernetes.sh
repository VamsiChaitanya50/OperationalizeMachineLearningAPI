#!/usr/bin/env bash

dockerpath="rajxxx/houserent"

kubectl run --generator=run-pod/v1 --image=rajxxx/houserent houserent2

kubectl get pod

kubectl port-forward pod/houserent2 8000:80
