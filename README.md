# Overview

This is the [NGINX Ingress Controller](https://github.com/kubernetes/ingress-nginx) for use with GKE.

# Deployment

- Deploy the default backend and Nginx Ingress Controller RBAC/deployment/loadbalancer:

```
./deploy.sh
```

(which basically runs...)

```
kubectl create -f default-backend.yml
kubectl create -f nginx-ingress-controller-rbac.yml
kubectl create -f nginx-ingress-controller.yml
kubectl create -f nginx-ingress-controller-service.yml
```

# Uninstall

- To uninstall/remove:

```
./remove.sh
```
