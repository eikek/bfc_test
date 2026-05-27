import argparse
import time

def dummy_count(max: int) -> None:
    for i in range(0, max):
        print(f"n={i}")
        time.sleep(1)


def main():
    parser = argparse.ArgumentParser(description="Testing")
    parser.add_argument("-n", "--count", type=int, default=10)
    parser.add_argument("-x", "--exit", type=int, default=0)

    args = parser.parse_args()

    dummy_count(args.count)
    if args.exit > 0:
        raise SystemExit(args.exit)

if __name__ == "__main__":
    main()
