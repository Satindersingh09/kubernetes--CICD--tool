# Automated CI/CD Pipeline for Kubernetes Development

This project demonstrates an automated CI/CD workflow for a containerized Flask application deployed using Kubernetes.

## Technologies

- Python
- Flask
- Pytest
- Docker
- GitHub Actions
- GitHub Container Registry
- Kubernetes
- kubectl

## Workflow

Developer → GitHub → GitHub Actions → Tests → Docker Build → GHCR → Kubernetes

## Project Structure

```text
demo_web_app/
├── app.py
├── requirements.txt
├── Dockerfile
├── templates/
└── tests/

k8s/
├── deployment.yaml
└── service.yaml

.github/
└── workflows/
    └── ci.yml
