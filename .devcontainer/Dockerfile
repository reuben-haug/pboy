# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /workspaces

# Install Git and other dependencies
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Install pip-tools and other dependencies
RUN pip install pip-tools

# Install Sphinx and other dependencies
RUN python -m pip install sphinx

# Install dependencies for building and linting
COPY ../requirements-dev.txt .
RUN pip install --upgrade pip && pip install -r requirements-dev.txt

# Copy the current directory contents into the container at /workspaces
COPY . .

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
