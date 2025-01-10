# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set environment variables
ENV CONDA_DIR=/opt/conda \
    PATH=/opt/conda/bin:$PATH \
    SHELL=/bin/bash \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# System setup
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget bzip2 git gh openssh-client make && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -ms /bin/bash -d /home/vscode vscode && \
    # Install conda
    wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh && \
    bash /tmp/miniconda.sh -b -p $CONDA_DIR && \
    rm /tmp/miniconda.sh && \
    # Install mamba
    conda install -n base -c conda-forge mamba && \
    mamba shell init --shell bash && \
    echo "source ~/.bashrc" >> ~/.profile && \
    # Set permissions
    chown -R vscode:vscode $CONDA_DIR /home/vscode

# Switch to non-root user
USER vscode
WORKDIR /workspaces

# Copy project files first
COPY --chown=vscode:vscode . .

# Setup environment
COPY --chown=vscode:vscode environment.yaml .
RUN conda init bash && \
    mamba env create -f environment.yaml && \
    echo "mamba activate pboy" >> ~/.bashrc

# Configure git
RUN git config --global credential.helper store

SHELL ["/bin/bash", "-c"]

# Install global development tools with compatible versions
RUN pip install --no-cache-dir \
    black==23.10.1 \
    pip-tools==6.13.0 \
    mypy \
    flake8==6.1.0

# We'll install project dependencies later via postCreateCommand from devcontainer.json

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
