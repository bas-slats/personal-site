#!/bin/bash

IMAGE_NAME="basslats/personal-website"
VERSION="1.0"

docker build -t $IMAGE_NAME:$VERSION .

# Login to Docker Hub
echo "Docker Hub credentials:"
docker login --username basslats

# Push the image to Docker Hub
docker push $IMAGE_NAME:$VERSION