#!/bin/bash

set -e

echo "================================="
echo "Kubernetes Deployment Verification"
echo "================================="
echo ""

echo "Checking deployment rollout..."
kubectl rollout status deployment/cicd-demo-app

echo ""

echo "Checking Pods..."
kubectl get pods -l app=cicd-demo-app

echo ""

echo "Checking Service..."
kubectl get service cicd-demo-app

echo ""

echo "Deployment verification completed successfully."
