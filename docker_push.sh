#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker-compose -f ./docker-compose-build.yaml push