#!/bin/bash
kubectl delete -f default-backend.yml
kubectl delete -f nginx-ingress-controller-rbac.yml
kubectl delete -f nginx-ingress-controller.yml
kubectl delete -f nginx-ingress-controller-service.yml

