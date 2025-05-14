#!/bin/bash

# Create required directories
mkdir -p logs scripts

# Make scripts executable
chmod +x scripts/*.sh

echo "Setup complete. Run 'docker-compose up -d' to start the testbed."
