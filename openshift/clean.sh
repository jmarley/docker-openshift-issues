#!/bin/bash

 oc delete pods,svc,dc,bc,is fdeco-solar
 oc create -f support/openshift/jmarley-base/Dockerfile
