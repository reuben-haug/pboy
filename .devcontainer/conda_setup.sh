#!/bin/bash
set -e  # Exit on error
set -x  # Print commands for debugging

# Ensure environment variables are set
export MAMBA_ROOT_PREFIX="/opt/conda"
export MAMBA_EXE="/opt/conda/bin/mamba"

# Create environment if it doesn't exist
if [ ! -d "/opt/conda/envs/pboy" ]; then
    echo "Creating environment pboy..."
    MAMBA_NO_BANNER=1 mamba env create -f environment.yaml
else
    echo "Environment pboy already exists."
fi

# Install packages in development mode
echo "Installing packages in development mode..."
pip install -e '.[dev,test]'