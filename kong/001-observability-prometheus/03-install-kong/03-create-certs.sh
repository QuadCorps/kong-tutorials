#!/usr/bin/env bash

source ./env

mkdir ./certs

rm -f ./certs/tls.crt
rm -f ./certs/tls.key

openssl req -new -x509 -nodes -newkey ec:<(openssl ecparam -name secp384r1) -keyout certs/tls.key -out certs/tls.crt -days 1095 -subj "/C=GB/ST=London/L=London/O=Global Security/OU=IT Department/CN=example.com"

# Get the certificate as a single line for the API call
export CERT=$(awk 'NF {sub(/\r/, ""); printf "%s\\n",$0;}' certs/tls.crt)

echo '
{
  "cert": "'$CERT'"
}' | http POST https://${REGION}.api.konghq.com/v2/control-planes/${control_plane_id}/dp-client-certificates "Authorization: Bearer ${TOKEN}"
