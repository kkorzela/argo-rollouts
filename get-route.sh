#!/bin/bash -x
echo
oc get route -n openshift-gitops 
echo
oc get route -n user1-tools
echo
oc get route -n user1-dev 
echo
oc get route -n user1-prod 
echo

