#!/bin/bash

source ./env

response=$(http https://${REGION}.api.konghq.com/v2/control-planes "Authorization: Bearer ${TOKEN}")

echo $response | jq '.data | .[] | select(.labels.env == "tutorial") | {control_plane_endpoint: .config.control_plane_endpoint,telemetry_endpoint: .config.telemetry_endpoint,control_plane_id: .id}'
