#!/bin/bash

set -euxo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

cd $SCRIPT_DIR

# Install the openshift/imagebuilder binary used to build the container images
go install github.com/openshift/imagebuilder/cmd/imagebuilder@latest

# Buid and tag the images
make images

# Upload to the openshift-psap Quay repo
docker push quay.io/openshift-psap/openshift-acme:controller
docker push quay.io/openshift-psap/openshift-acme:exposer
