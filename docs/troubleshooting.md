# Troubleshooting Guide

## Docker

Check running containers:

```bash
docker ps

Check available images:

docker images
Kubernetes

Check cluster:

kubectl get nodes

Check Pods:

kubectl get pods

Check Deployment:

kubectl get deployment

Check Service:

kubectl get service
Application Access

Start port forwarding:

kubectl port-forward service/cicd-demo-app 8080:5000

Test the application:

curl http://localhost:8080/health
Common Problems
Pod is not running

Check:

kubectl describe pod <pod-name>
Image not found

Check:

docker images

The local Kubernetes deployment uses:

cicd-demo-app:latest

with:

imagePullPolicy: Never
Port 8080 is unavailable

Check whether another process is using the port and stop it before starting port forwarding again.
