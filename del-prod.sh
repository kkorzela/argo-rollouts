#!/bin/bash -x
echo $OCP_APPS

# BLUE GREEN
# kustomize build ./bluegreen-analysis/base | sed "s/%SUB_DOMAIN%/$OCP_APPS/" | sed "s/%USER%/user1/" | oc delete -n user1-prod -f -
# CANARY
# kustomize build ./canary-analysis/base | sed "s/%SUB_DOMAIN%/$OCP_APPS/" | sed "s/%USER%/user1/" | oc delete -n user1-prod -f -
