# Your Project Name

Your project description.

## Table of Contents

1. [Overview](#overview)
2. [Template Configuration](#template-configuration)
3. [Setup Instructions](#setup-instructions)
4. [Usage](#usage)
5. [Testing](#testing)
6. [Contributing](#contributing)

## Overview

This project is a part of a personal portfolio/coding challenge series and adheres to standardized project practices, including automated testing, code quality checks, and documentation.

## Template Configuration

The setup script (`setup_template.py`) will help you configure the following files:
- `pyproject.toml` - Project metadata and dependencies
- `environment.yaml` - Conda environment configuration
- `LICENSE` - Project license information
- `.github/codespace.yaml` - GitHub Codespace settings
- `docs/conf.py` - Sphinx documentation settings

TODO: Detail the above files and their configuration options

## Setup Instructions

1. **Clone and Configure**:
```bash
git clone https://github.com/reuben-haug/pboy.git
cd pboy
python setup_template.py  # Follow the prompts to configure your project
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
