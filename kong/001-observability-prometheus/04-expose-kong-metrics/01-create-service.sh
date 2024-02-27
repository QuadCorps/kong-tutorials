#!/bin/sh

source ../03-install-kong/env

echo '
{
  "name": "demo-service",
  "retries": 5,
  "protocol": "https",
  "host": "httpbin.org",
  "port": 443,
  "path": "/anything",
  "enabled": true
}' | http https://${REGION}.api.konghq.com/v2/control-planes/${control_plane_id}/core-entities/services "Authorization: Bearer ${TOKEN}"

