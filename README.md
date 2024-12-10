# Your Project Name

Your project description.

## Table of Contents

1. [Overview](#overview)
2. [Prerequisites](#prerequisites)
3. [Template Configuration](#template-configuration)
4. [Setup Instructions](#setup-instructions)
5. [Usage](#usage)
6. [Testing](#testing)
7. [Contributing](#contributing)

## Overview

This project is a part of a personal portfolio/coding challenge series and adheres to standardized project practices, including automated testing, code quality checks, and documentation.

## Prerequisites

Choose your development environment:

### Option 1: GitHub Codespaces (Recommended)
- GitHub account
- Web browser
- VS Code (optional, for local connection to Codespace)

### Option 2: Local Development
- Python 3.12+
- Conda or Miniconda
- VS Code with Python extension
- Git
- Docker (optional, only if using dev containers locally)

## Template Configuration

The setup script (`setup_template.py`) will help you configure the following files:
- `pyproject.toml` - Project metadata and dependencies
- `environment.yaml` - Conda environment configuration
- `LICENSE` - Project license information
- `.github/codespace.yaml` - GitHub Codespace settings
- `docs/conf.py` - Sphinx documentation settings

TODO: Detail the above files and their configuration options

## Setup Instructions

### Using GitHub Codespaces
1. Click "Code" > "Create codespace" on the repository
2. Wait for environment to build
3. Start

### Local Development
1. **Clone and Configure**:
```bash
git clone https://github.com/reuben-haug/pboy.git
cd pboy
python setup_template.py  # Follow prompts
```
2. **Initialize Conda Environment**:
```bash
conda env create -f environment.yaml
conda activate pboy
```
3. **Install Development Dependencies**:
```bash
pip install -e ".[dev, test]"
```
2. Initialize Documentation:
```bash
cd docs
sphinx-quickstart
```
3. Development Environment Setup:
```code --remote .``` # Opens VS Code with dev container
4. Additional Configuration (optional):
- Adjust python version in `environment.yaml`
- Update forwarded ports in `codespace.yaml`
- Modify dev container settings in `.devcontainer/devcontainer.json`

TODO: Check make installation in Dockerfile
