#!/bin/bash
set -e

# Initialize conda first
source /opt/conda/etc/profile.d/conda.sh
conda init bash

# Initialize mamba
export MAMBA_EXE="/opt/conda/bin/mamba"
source /opt/conda/etc/profile.d/mamba.sh
mamba init bash

# Create environment if it doesn't exist
if [ ! -d "/opt/conda/envs/pboy" ]; then
    mamba env create -f environment.yaml
fi

source ~/.bashrc

# Install packages in development mode
pip install -e '.[dev,test]'