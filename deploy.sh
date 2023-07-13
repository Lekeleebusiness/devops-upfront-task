#!/bin/bash

#Before testing locallly pls make sure you go to settings.py and select the settings for testing locally
# Install Docker if not already installed
command -v docker >/dev/null 2>&1 || { echo >&2 "Docker is required but not installed. Aborting."; exit 1; }

# Install Docker Compose if not already installed
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "Docker Compose is required but not installed. Aborting."; exit 1; }

# Build and start the Docker containers using Docker Compose
docker-compose up -d
