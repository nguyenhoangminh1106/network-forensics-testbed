#!/bin/bash

# Stop and remove all containers
docker-compose down -v

# Remove logs
rm -rf logs/*

echo "Testbed cleaned up."
