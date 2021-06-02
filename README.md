# Kubeshell

Interactive kubectl shell written in bash.

## Example of usage

```bash
❯ kubeshell
kubeshell$ get nodes
NAME       STATUS   ROLES                  AGE   VERSION
minikube   Ready    control-plane,master   93m   v1.20.2
kubeshell$ get pods
No resources found in default namespace.
kubeshell$ create ns hello-kubeshell
namespace/hello-kubeshell created
kubeshell$ run nginx --image nginx --dry-run=client -o yaml
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: nginx
  name: nginx
spec:
  containers:
  - image: nginx
    name: nginx
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}
kubeshell$ exit

Exiting kubeshell...
```
## Install
1. Download the repository
```
git clone https://github.com/FedericoAntoniazzi/kubeshell
```
2. Go into the kubeshell folder
```
cd kubeshell
```
3. Install using `make`
```
make install
```

## Uninstall
To uninstall using the provided make command
```
make uninstall
```
