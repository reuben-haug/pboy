# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /workspaces

# Install system dependencies including GitHub CLI
RUN apt-get update && \
    apt-get install -y \
    wget \
    bzip2 \
    git \
    gh \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh

# Add conda to path
ENV PATH="/opt/conda/bin:$PATH"

# Copy the current directory contents into the container at /workspaces
COPY . .

# Configure Git to use credential helper
RUN git config --system credential.helper store

# Install global development tools with compatible versions
RUN pip install --no-cache-dir \
    black==21.12b0 \
    pip-tools==6.13.0 \
    mypy \
    flake8==6.1.0

# Create conda environment from environment.yml
COPY environment.yml .
RUN conda env create -f environment.yml

# We'll install project dependencies later via postCreateCommand from devcontainer.json

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
