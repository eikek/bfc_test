import time

def dummy_count(max: int) -> None:
    for i in range(0, max):
        print(f"n={i}")
        time.sleep(1)


if __name__ == "__main__":
    dummy_count(10)
    print("Done.")
