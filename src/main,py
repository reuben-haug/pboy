import argparse

def greet(name: str) -> str:
    return f"Hello, {name}!"

def main():
    parser = argparse.ArgumentParser(description="Greet someone.")
    parser.add_argument("--who", default="World", help="Name of the person to greet")
    args = parser.parse_args()

    print(greet(args.who))

if __name__ == "__main__":
    main()
