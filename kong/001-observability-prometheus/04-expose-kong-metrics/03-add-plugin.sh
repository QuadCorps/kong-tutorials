#!/bin/sh

source ../03-install-kong/env

SERVICE_ID=$1

echo '
{
  "name":"prometheus",
  "config":{
    "per_consumer":true,
    "status_code_metrics": true,
    "latency_metrics": true,
    "bandwidth_metrics": true,
    "upstream_health_metrics": true
  }
}' | http https://${REGION}.api.konghq.com/v2/control-planes/${control_plane_id}/core-entities/services/${SERVICE_ID}/plugins "Authorization: Bearer ${TOKEN}"

