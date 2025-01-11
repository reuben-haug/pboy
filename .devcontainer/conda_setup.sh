#!/bin/bash
set -e

# Initialize mamba
source /opt/conda/etc/profile.d/mamba.sh
eval "$(mamba shell hook --shell bash)"

# Set environment variables
export MAMBA_ROOT_PREFIX="/opt/conda"
export MAMBA_EXE="/opt/conda/bin/mamba"

# Activate environment
mamba activate pboy

# Install dependencies
pip install -e '.[dev,test]'