# Overview

This is the [NGINX Ingress Controller](https://github.com/kubernetes/ingress-nginx) for use with GKE.

# Requirement - Cluster Admin

Before applying the RBAC, edit the `cluster-admin.yml` file and edit it to add your user:

```
kind: ClusterRoleBinding
apiVersion: rbac.authorization.k8s.io/v1
metadata:
  name: cluster-admins
subjects:
- kind: User
  name: <YOUR-GCLOUD-USER>
roleRef:
  kind: ClusterRole
  name: cluster-admin
  apiGroup: ""
```

Now apply the setting:

```
kubectl create -f cluster-admin.yml
```

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
