from fastapi import APIRouter, Depends, HTTPException
from fastapi.security import OAuth2PasswordRequestForm, OAuth2PasswordBearer
from pydantic import BaseModel, Field
from passlib.context import CryptContext
from typing import Annotated
from sqlalchemy.orm import Session
from starlette import status
from jose import jwt, JWTError
from datetime import datetime, timedelta, timezone

from database import session_local
from models import Users


router = APIRouter(
    prefix="/auth",
    tags=["auth"]
)

SECRET_KEY = "783ccbf3e2006d425ba70e14520efec694771bc9bf1343bc145ab4ef347d7170"
ALGORITHM = "HS256"

bcrypt_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
oauth2_bearer = OAuth2PasswordBearer(tokenUrl="auth/token")

class CreateUserRequest(BaseModel):
    username: str 
    password: str 
    email: str
    first_name: str
    last_name: str
    role: str
    
class Token(BaseModel):
    access_token: str
    token_type: str


def get_db():
    db = session_local()
    try:
        yield db
    finally:
        db.close()

db_dependency = Annotated[Session, Depends(get_db)]

def authenticate_user(username, password, db):

    user = db.query(Users).filter(Users.username == username).first() 
    if not user:
        return False
    
    if not bcrypt_context.verify(password, user.hashed_password):
        return False
    
    return user

def create_access_token(username: str, user_id: int, role: str, expires_delta: timedelta):

    encode = {
        "sub": username,
        "user_id": user_id,
        "role": role
    }

    expires = datetime.now(timezone.utc) + expires_delta
    encode.update({"exp": expires})

    return jwt.encode(encode, SECRET_KEY, algorithm=ALGORITHM)

async def get_current_user(token: Annotated[str, Depends(oauth2_bearer)]):
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get("sub")
        user_id: int = payload.get("user_id")
        role: str = payload.get("role")
        if username is None or user_id is None:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Could not validate credentials",
            )
        
        return {"username": username, "user_id": user_id, "role": role}
    
    except JWTError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Could not validate credentials",
        )


@router.post("/create_user", status_code=status.HTTP_201_CREATED) 
async def create_user(
    db: db_dependency,
    user_request: CreateUserRequest
):

    create_user_model = Users(
        email=user_request.email,
        username=user_request.username,
        first_name=user_request.first_name,
        last_name=user_request.last_name,
        role=user_request.role,
        hashed_password=bcrypt_context.hash(user_request.password),  # hash the password
        is_active=True
    )

    # save to database
    db.add(create_user_model)
    db.commit()

    return create_user_model


@router.post("/token", response_model=Token)
async def login_for_access_token(
    form_data: Annotated[OAuth2PasswordRequestForm, Depends()],
    db: db_dependency
):
    user = authenticate_user(form_data.username, form_data.password, db)
    
    if not user:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Could not validate credentials",
        )

    token = create_access_token(username=user.username, user_id=user.id, role=user.role, expires_delta=timedelta(minutes=30))

    return {
        "access_token": token,
        "token_type": "bearer"
    }
    
