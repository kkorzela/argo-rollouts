#!/bin/bash -x
cat init-prod.sh
kustomize build ./canary-analysis/base | sed "s/%SUB_DOMAIN%/$OCP_APPS/" | sed "s/%USER%/user1/" | oc apply -n user1-prod -f - 
