#!/bin/sh

source ../03-install-kong/env

SERVICE_ID=$1

echo '
{
  "name": "demo-route",
  "paths": [
    "/demo"
  ],
  "service": {
    "id": "'${SERVICE_ID}'"
  }

}' | http https://${REGION}.api.konghq.com/v2/control-planes/${control_plane_id}/core-entities/routes "Authorization: Bearer ${TOKEN}"
