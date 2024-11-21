from src.main import greet

def test_greet():
    assert greet("World") == "Hello, World!"

def test_greet_empty():
    assert greet("") == "Hello, !"