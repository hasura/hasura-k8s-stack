#!/usr/bin/env bash

ROOT="$(readlink -f ${BASH_SOURCE[0]%/*}/../)"
VERSION=$(git rev-parse --short HEAD)

# set docker hub org
HUB_ORG=hasura

# build event triggers
docker build -t $HUB_ORG/k8s-stack-event-triggers:$VERSION -f event-triggers/Dockerfile event-triggers

# build remote schema
docker build -t $HUB_ORG/k8s-stack-remote-schema:$VERSION -f remote-schema/Dockerfile remote-schema