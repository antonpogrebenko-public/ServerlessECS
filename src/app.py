import logging

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)
logger.addHandler(logging.StreamHandler())
logger.handlers[0].setFormatter(
    logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
)

def main():
    logger.info(f"Hello world!")


if __name__ == "__main__":
    main()
