Feature: Basic functionality of the project template

  Scenario: Default greeting
    When we run the command "python src/main.py"
    Then output contains "Hello, World!"
