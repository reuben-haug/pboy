#!/bin/bash
set -e  # Exit on error
set -x  # Print commands for debugging

# Ensure environment variables are set
export MAMBA_ROOT_PREFIX="/opt/conda"
export MAMBA_EXE="/opt/conda/bin/mamba"

# Initialize shell
source ~/.bashrc
source /opt/conda/etc/profile.d/conda.sh
source /opt/conda/etc/profile.d/mamba.sh
eval "$(mamba shell hook --shell bash)"

# Create environment if it doesn't exist
if [ ! -d "/opt/conda/envs/pboy" ]; then
    MAMBA_NO_BANNER=1 mamba env create -f environment.yaml
fi

# Activate environment
mamba activate pboy

# Install packages in development mode
pip install -e '.[dev,test]'