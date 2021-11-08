#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# It should be all Lowercase without `_`. So I cannot choose sudkul/nd9991_p4_project
dockerpath=app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $dockerpath --image=sudkul/nd9991_p4_project:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pod,svc,deployment

# Step 4:
# Forward the container port to a host
# There are two ways to access k8s cluster - kubectl expose OR kubectl port-forward 
# Use port-forward to mao local port 8000 to pod's port 80. 
kubectl port-forward pod/app 8000:80
