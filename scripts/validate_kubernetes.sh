#!/bin/bash

set -e

echo "Kubernetes Manifest Validation"
echo ""

echo "Validating deployment.yaml..."
kubectl apply --dry-run=client -f k8s/deployment.yaml

echo ""

echo "Validating service.yaml..."
kubectl apply --dry-run=client -f k8s/service.yaml

echo ""

echo "All Kubernetes manifests are valid."
