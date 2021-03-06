#!/bin/sh

docker run \
  --rm \
  --dns 147.75.69.23 --dns 8.8.8.8 \
  -v $(pwd)/data:/cncf/data \
  -e VSPHERE_SERVER=$VSPHERE_SERVER \
  -e VSPHERE_USER=$VSPHERE_USER \
  -e VSPHERE_PASSWORD=$VSPHERE_PASSWORD \
  -e VSPHERE_AWS_ACCESS_KEY_ID=$VSPHERE_AWS_ACCESS_KEY_ID \
  -e VSPHERE_AWS_SECRET_ACCESS_KEY=$VSPHERE_AWS_SECRET_ACCESS_KEY \
  -e VSPHERE_AWS_REGION=$VSPHERE_AWS_REGION \
  -e CLOUD=vsphere \
  -e COMMAND=destroy \
  -e NAME=${1:-$(whoami)} \
  -e BACKEND=file \
  -ti provisioning
