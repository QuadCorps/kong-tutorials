#!/bin/bash

KIND_EXPERIMENTAL_PROVIDER=podman kind delete cluster
rm ../03-install-kong/certs/*
rm ../03-install-kong/03-values.yaml
rm ../05-install-kong/05-values.yaml
rm ../06-grafana-visualization/06-values.yaml
rm ../07-alerting/07-values.yaml

source ../03-install-kong/env

if grep -q "control_plane_id" ../03-install-kong/env; then
  http DELETE https://${REGION}.api.konghq.com/v2/control-planes/${control_plane_id} "Authorization: Bearer ${TOKEN}"

  sed -i '' '$ d' ../03-install-kong/env
fi
