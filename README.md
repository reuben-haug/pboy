# Your Project Name

Your project description.

## Table of Contents

1. [Overview](#overview)
2. [Setup Instructions](#setup-instructions)
3. [Usage](#usage)
4. [Testing](#testing)
5. [Contributing](#contributing)

## Overview

This project is a part of a personal portfolio/coding challenge series and adheres to standardized project practices, including automated testing, code quality checks, and documentation.

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/reuben-haug/pboy.git
   cd pboy
   ```

## Initial Setup Instructions

1. After using this template, initialize the documentation:
```bash
cd docs
sphinx-quickstart
```
2. Update the metadata in pyproject.toml:
   - Project description
   - Required depencencies
   - Additional dev/test depencencies (if required)
3. Update environment.yaml with your preferred virtual environment name.
name: your-env-name
4. For local development, build the dev container:
code --remote .
5. Modify the LICENSE file with updated name and year.
6. Configure the Development Container:
   - Update the devcontainer.json file with your preferred settings.
   - Adjust the Python version (if required) in the `environment.yaml' file.
7. Update Github Configurations:
    - Modify the `.github/codespace.yaml` file with your project name.
    - Adjust forwarded ports if needed.