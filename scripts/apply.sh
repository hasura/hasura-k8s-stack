#!/usr/bin/env bash

ROOT="$(readlink -f ${BASH_SOURCE[0]%/*}/../)"
VERSION=$(git rev-parse --short HEAD)

# set docker hub org
HUB_ORG=hasura

# apply latest migrations
# set env vars HASURA_GRAPHQL_ENDPOINT and HASURA_GRAPHQL_ACCESS_KEY
hasura --project $ROOT/hasura migrate apply

# update event triggers image
kubectl set image deployment/event-triggers event-triggers=$HUB_ORG/k8s-stack-event-triggers:$VERSION

# update event triggers image
kubectl set image deployment/remote-schema remote-schema=$HUB_ORG/k8s-stack-remote-schema:$VERSION