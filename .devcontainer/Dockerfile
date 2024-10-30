# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /workspaces

# Install dependencies for Miniconda
RUN apt-get update && apt-get install -y wget bzip2 && rm -rf /var/lib/apt/lists/*

# Install Miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /miniconda.sh && \
    bash /miniconda.sh -b -p /miniconda && \
    rm /miniconda.sh

# Update PATH to include conda
ENV PATH=/miniconda/bin:$PATH

# Debugging: List contents of the working directory
RUN ls -la /workspaces

# Create the Conda environment
COPY environment.yml .
RUN conda env create -f environment.yml

# Activate the environment
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# Copy the current directory contents into the container at /workspaces
COPY . .

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
