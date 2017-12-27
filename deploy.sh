#!/bin/bash
kubectl create -f default-backend.yml
kubectl create -f nginx-ingress-controller-rbac.yml
kubectl create -f nginx-ingress-controller.yml
kubectl create -f nginx-ingress-controller-service.yml

