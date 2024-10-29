import hello_world

def test_hw(capsys):
        hello_world.main([])
        out, err = capsys.readouterr()
        assert "Hello, World!" in out
