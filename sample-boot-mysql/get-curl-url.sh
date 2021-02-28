#!/bin/bash

NODE_IP="$( kubectl get nodes -o json | jq -r '.items[].status.addresses[] | select(.type=="InternalIP") | .address' | shuf | head -1 )"
NODE_PORT="$( kubectl -n tenant-dev get svc boot-mysql -o jsonpath={.spec.ports[*].nodePort} )"

echo "Try run : [ curl http://${NODE_IP}:${NODE_PORT}/api/categories/v1/all ]"
echo "Try run : [ curl http://${NODE_IP}:${NODE_PORT}/api/categories/v1?pagesize=2 ]"
echo 'Try run : [ curl http://'${NODE_IP}:${NODE_PORT}'/api/categories/v1 -XPOST -H 'Content-Type: application/json' -d'"'"'{"name": "Hulu lala", "description": "Hulu description haha!"}'"'"' ]'

