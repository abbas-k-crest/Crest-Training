from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

SQLALCHEMY_DATABASE_URL = "sqlite:///./todosapp.db"
POSTGRESQL_DATABASE_URL = "postgresql://postgres:ak%401234@localhost/todoapp"

engine = create_engine(
    POSTGRESQL_DATABASE_URL, 
)

session_local = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()





