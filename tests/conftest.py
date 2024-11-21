# tests/conftest.py
import pytest

@pytest.fixture
def sample_data():
    return {"key": "value"}
