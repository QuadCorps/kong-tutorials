#!/bin/bash

source ./env

response=$(bash ./get-control-plane.sh)
control_plane_endpoint=$(echo $response | jq -r '.control_plane_endpoint')
telemetry_endpoint=$(echo $response | jq -r '.telemetry_endpoint')
control_plane_id=$(echo $response | jq -r '.control_plane_id')

sed "s~\$control_plane_endpoint~${control_plane_endpoint#https://}~g ; s~\$telemetry_endpoint~${telemetry_endpoint#https://}~g" ./values.yaml > ./03-values.yaml
echo "control_plane_id=${control_plane_id}" >> ./env
