# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory
WORKDIR /workspace

# Install dependencies for building and linting
COPY ../requirements-dev.txt .
RUN pip install --upgrade pip && pip install -r requirements-dev.txt

# Expose port (optional, for web apps or APIs)
# EXPOSE 8000
