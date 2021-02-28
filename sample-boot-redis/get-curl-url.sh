#!/bin/bash

NODE_IP="$( kubectl get nodes -o json | jq -r '.items[].status.addresses[] | select(.type=="InternalIP") | .address' | shuf | head -1 )"
NODE_PORT="$( kubectl -n tenant-dev get svc boot-redis -o jsonpath={.spec.ports[*].nodePort} )"

echo "Try run : [ curl http://${NODE_IP}:${NODE_PORT}/users/<number> ]"
echo "ex) curl http://${NODE_IP}:${NODE_PORT}/users/10001 "

