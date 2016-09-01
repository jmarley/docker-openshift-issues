#!/bin/bash

 #oc delete pods,svc,dc,bc,is docker-openshift-issues
 oc delete bc docker-openshift-issues
 oc create -f openshift/Dockerfile
