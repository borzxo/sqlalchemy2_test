from sqlalchemy import create_engine
import config
from models import Base

engine = create_engine(url=config.SQLALCHEMY_URL,
                       echo=config.SQLALCHEMY_ECHO)


def main():
    Base.metadata.create_all(bind=engine)


if __name__ == '__main__':
    main()
