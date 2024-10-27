import subprocess
import shlex

@when('we run the command "{command}"')
def step_impl(context, command):
    process = subprocess.run(shlex.split(command), capture_output=True, text=True)
    context.output = process.stdout

@then('output contains "{expected_text}"')
def step_impl(context, expected_text):
    assert expected_text in context.output
