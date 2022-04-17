""" test. """
# from logzero import logger
from loguru import logger


def main():
    """ main. """
    a = 1
    logger.debug(f"{a=} ")
    logger.info(f"info {a=} ")


if __name__ == "__main__":
    main()
