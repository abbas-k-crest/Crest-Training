from fastapi import APIRouter, Depends, HTTPException, Path
from sqlalchemy.orm import Session
from typing import Annotated, Optional
from starlette import status
from pydantic import BaseModel, Field

from database import engine, session_local
from models import Todos
from .auth import get_current_user

router = APIRouter(
    prefix="/admin",
    tags=["admin"]
)


def get_db():
    db = session_local()
    try:
        yield db
    finally:
        db.close()

db_dependency = Annotated[Session, Depends(get_db)]
user_dependency = Annotated[dict, Depends(get_current_user)]

# Admin Routes
@router.get("/todo", status_code=status.HTTP_200_OK)
async def get_all_todos(
    user: user_dependency,
    db: db_dependency
    ):

    if user is None or user.get("role") != "admin":
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials",
        )
    
    return db.query(Todos).all() 






