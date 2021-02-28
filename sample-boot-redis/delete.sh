#!/bin/bash

kubectl -n tenant-dev delete -f boot-redis.yaml
kubectl -n tenant-dev delete secrets/boot-redis-config

