#!/usr/bin/env bash

ROOT="$(readlink -f ${BASH_SOURCE[0]%/*}/../)"
VERSION=$(git rev-parse --short HEAD)

# set docker hub org
HUB_ORG=hasura

# push event triggers
docker push $HUB_ORG/k8s-stack-event-triggers:$VERSION

# push remote schema
docker push $HUB_ORG/k8s-stack-remote-schema:$VERSION