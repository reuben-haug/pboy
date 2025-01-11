#!/bin/bash
set -e  # Exit on error
set -x  # Print commands for debugging

# Initialize mamba
source /opt/conda/etc/profile.d/mamba.sh
mamba shell init --shell bash --root-prefix=/opt/conda
eval "$(mamba shell hook --shell bash)"

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

# Activate environment and install packages
mamba activate pboy
pip install -e '.[dev,test]'