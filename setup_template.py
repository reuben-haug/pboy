# setup_template.py

import os


def replace_in_file(file_path, replacements):
    with open(file_path, 'r') as file:
        content = file.read()
    for placeholder, value in replacements.items():
        content = content.replace(placeholder, value)
    with open(file_path, 'w') as file:
        file.write(content)


def main():
    project_name = input('Enter project name: ')
    author_name = input('Enter author name: ')
    year = input('Enter the current year: ')
    project_description = input('Enter a short project description: ')

    replacements = {
        'PROJECT_NAME_PLACEHOLDER': project_name,
        'AUTHOR_NAME_PLACEHOLDER': author_name,
        'YEAR_PLACEHOLDER': year,
        'PROJECT_DESCRIPTION_PLACEHOLDER': project_description
    }

    files_to_update = [
        "pyproject.toml",
        "environment.yaml",
        "LICENSE",
        ".github/codespace.yaml"
    ]

    for file_path in files_to_update:
        replace_in_file(file_path, replacements)

    print("Template setup complete.")


if __name__ == '__main__':
    main()
