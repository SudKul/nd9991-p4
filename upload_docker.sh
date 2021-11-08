#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=sudkul/nd9991_p4_project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker image tag nd9991_p4_project:latest sudkul/nd9991_p4_project:latest
docker login --username=sudkul --email=sudhanshu.kulshrestha@gmail.com
docker push sudkul/nd9991_p4_project:latest