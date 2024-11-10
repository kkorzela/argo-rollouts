# Argo Rollouts

## Overview
Argo Rollouts is a progressive delivery controller for Kubernetes, providing advanced deployment capabilities such as blue-green, canary, and more.

This repository includes essential scripts and tips for managing and deploying applications in an OpenShift environment.

## Prerequisites
Ensure your OpenShift cluster domain is set up correctly. 

You can define and verify your cluster domain as follows:

```bash
export OCP_APPS=apps.cluster-cmrpx.cmrpx.sandbox640.opentlc.com 
echo $OCP_APPS
```
## Scripts

get-route.sh: Retrieves the route information for services.

init-dev.sh: Initializes the development environment.

init-prod.sh: Initializes the production environment.

./canary-analysis - PROD Directory

## Tips and Tricks
1. Formatting YAML Output using neat

To format the YAML output and remove unnecessary fields such as status, metadata.uid, metadata.creationTimestamp, selfLink, and other auto-generated fields, use the following command:

```bash
oc get svc active -o yaml -n user1-prod | oc neat

oc get Rollout rollouts-demo -o yaml -n user1-prod | oc neat

```

2. siege - HTTP regression testing and benchmarking utility

Smoke testy to testy proste, wykonywane w początkowej fazie tworzenia oprogramowania, mające na celu znalezienie krytycznych dla jego działania błędów. Potwierdzają one, że aplikacja działa. Sanity testy to testy już bardziej zaawansowane, wykonywane po wprowadzeniu aktualizacji i poprawek, dzięki którym wiemy, że aplikacja działa w poprawnie i w sposób zgodny ze wcześniejszymi założeniami.

## Demo 

1 Projekty

2 Zainstalowane operatory

3 Obiekt rolloutmanagers w operatorze RedHat OpenShift GitOps

4 obiekty service oraz rollout 

5 Pipelines