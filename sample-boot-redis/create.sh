#!/bin/bash

kubectl -n tenant-dev create secret generic boot-redis-config --from-file application.yml
kubectl -n tenant-dev create -f boot-redis.yaml

