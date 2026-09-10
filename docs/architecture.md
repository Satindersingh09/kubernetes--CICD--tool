# System Architecture

## Architecture Flow

Developer
   |
   v
GitHub Repository
   |
   v
GitHub Actions
   |
   +----> Install Dependencies
   |
   +----> Run Tests
   |
   +----> Build Docker Image
   |
   +----> Push Image to GHCR
   |
   v
Kubernetes
   |
   +----> Deployment
   |
   +----> Pods
   |
   +----> Service
   |
   v
Flask Application

## Component Responsibilities

### GitHub

Stores the project source code.

### GitHub Actions

Automates the CI pipeline.

### Pytest

Validates application functionality.

### Docker

Packages the application into a container image.

### GitHub Container Registry

Stores the Docker image.

### Kubernetes

Runs and manages application containers.

### Deployment

Maintains the desired number of application Pods.

### Service

Provides stable network access to the Pods.
