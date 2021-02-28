#!/bin/bash

kubectl -n tenant-dev create -f ./nginx.yaml
kubectl -n tenant-dev expose deployment/nginx-deployment

