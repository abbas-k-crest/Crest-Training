from fastapi import APIRouter, Depends, HTTPException, Path
from sqlalchemy.orm import Session
from typing import Annotated, Optional
from starlette import status
from pydantic import BaseModel, Field

from database import engine, session_local
from models import Todos
from .auth import get_current_user

router = APIRouter()

class ToDoCreateRequest(BaseModel):
    title: str = Field(min_length=1)
    description: Optional[str] = Field(default=None)
    priority: int = Field(gt=0, lt=4)
    completed: bool = Field(default=False)


def get_db():
    db = session_local()
    try:
        yield db
    finally:
        db.close()

db_dependency = Annotated[Session, Depends(get_db)]
user_dependency = Annotated[dict, Depends(get_current_user)]

@router.get("/")
async def get_all(user: user_dependency, db: db_dependency):

    return db.query(Todos).filter(Todos.user_id == user.get("user_id")).all()


@router.get("/todo/{todo_id}", status_code=status.HTTP_200_OK)
async def get_todo(db:db_dependency, todo_id: int = Path(gt=0)):
    
    todo_model = db.query(Todos).filter(Todos.id == todo_id).first()

    if todo_model is None:
        raise HTTPException(status_code=404, detail="Todo not found")
    
    return todo_model

@router.post("/todo/create_todo", status_code=status.HTTP_201_CREATED)
async def create_todo(
    user: user_dependency, 
    db: db_dependency, 
    todo_request: ToDoCreateRequest
    ):

    if user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials",
        )

    todo_model = Todos(**todo_request.model_dump(), user_id=user.get("user_id"))

    db.add(todo_model)
    db.commit()

    return {
        "message": "Todo created successfully"
    }

# Update ToDo
@router.put("/todo/update_todo/{todo_id}", status_code=status.HTTP_204_NO_CONTENT)
async def update_todo(
    user: user_dependency,
    db: db_dependency, 
    todo_request: ToDoCreateRequest,
    todo_id: int = Path(gt=0)
    ):

    if user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials",
        )

    todo_model = db.query(Todos).filter(Todos.user_id==user.get("user_id")).filter(Todos.id == todo_id).first()

    if todo_model is None:
        raise HTTPException(status_code=404, detail="Todo not found")
    
    for key, value in todo_request.model_dump().items():
        setattr(todo_model, key, value)
    
    db.commit()

    return {
        "message": "Todo updated successfully"
        }

# Delete ToDo
@router.delete("/todo/delete_todo/{todo_id}", status_code=status.HTTP_204_NO_CONTENT)
async def delete_todo(
    user: user_dependency,
    db: db_dependency,
    todo_id: int = Path(gt=0)
    ):
    if user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid authentication credentials",
        )

    todo_model = db.query(Todos).filter(Todos.user_id==user.get("user_id")).filter(Todos.id == todo_id).first()

    if todo_model is None:
        raise HTTPException(status_code=404, detail="Todo not found")
    
    db.delete(todo_model)
    db.commit()

    return {
        "message": "Todo deleted successfully"
        }

