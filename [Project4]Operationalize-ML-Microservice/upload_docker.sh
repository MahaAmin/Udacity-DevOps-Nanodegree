#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mahaamin97/app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag udacity:latest mahaamin97/udacity:latest
docker login --username=mahaamin97

# Step 3:
# Push image to a docker repository
docker push mahaamin97/udacity:latest

