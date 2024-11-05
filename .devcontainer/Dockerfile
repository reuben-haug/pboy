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

# Copy the current directory contents into the container at /workspaces
COPY . .

# Configure Git to use credential helper
RUN git config --system credential.helper store

# Install global development tools with compatible versions
RUN pip install --no-cache-dir \
    click==8.0.4 \
    black==21.12b0 \
    pip-tools==6.13.0 \
    mypy \
    flake8==6.1.0

# We'll install project dependencies later via postCreateCommand from devcontainer.json

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
