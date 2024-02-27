#!/bin/bash

cp ../06-grafana-visualization/06-values.yaml ./07-values.yaml
cat ./values.yaml >> ./07-values.yaml

helm upgrade -i prometheus prometheus-community/kube-prometheus-stack -f ./07-values.yaml -n monitoring

