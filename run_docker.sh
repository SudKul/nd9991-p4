#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
# Assuming the image name is nd9991_p4
docker build --tag=nd9991_p4_project .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --name myContainer -it -p 8000:80 nd9991_p4_project 
