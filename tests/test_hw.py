from src.main import main

def test_hw(capsys):
    main.main([])
    out, err = capsys.readouterr()
    assert "Hello, World!" in out
