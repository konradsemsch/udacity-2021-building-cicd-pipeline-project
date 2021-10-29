#!/usr/bin/env bash

# Build image
docker build --tag=udacity-ks-flask-ml-service .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 udacity-ks-flask-ml-service
