from fastapi import FastAPI, Body, Path, Query, HTTPException
from pydantic import BaseModel, Field
from typing import Optional
from starlette import status

app = FastAPI()

class Book:

    def __init__(self, id:int, title: str, author: str, description: str, rating: float):
        self.id = id
        self.title = title
        self.author = author
        self.description = description
        self.rating = rating

class BookRequest(BaseModel):
    id: Optional[int] = Field(description="ID is Not Needed", default=None)
    title: str = Field(min_length=3, max_length=100)
    author: str
    description: str
    rating: float = Field(gt=0, lt=6) 

    model_config = {
        "json_schema_extra": {
            "example": {
                "title": "A new book",
                "author": "codingwithroby",
                "description": "A new description of a book",
                "rating": 5,
                'published_date': 2029
            }
        }
    }

BOOKS = [
    Book(1, "The Great Gatsby", "F. Scott Fitzgerald", "A novel set in the Roaring Twenties.", 4.5),
    Book(2, "To Kill a Mockingbird", "Harper Lee", "A novel about racial injustice in the Deep South.", 4.8),
    Book(3, "1984", "George Orwell", "A dystopian novel about totalitarianism.", 4.6),
    Book(4, "Pride and Prejudice", "Jane Austen", "A classic romance novel.", 4.4)
]


def find_book_id(book = Book):
    if len(BOOKS) == 0:
        book.id = 1
    else:
        book.id = BOOKS[-1].id + 1
    
    return book

@app.get("/books", status_code=status.HTTP_200_OK)
async def get_all_books():
    return BOOKS

@app.get("/books/{book_id}", status_code=status.HTTP_200_OK)
async def get_book_by_id(book_id: int = Path(gt=0)):
    for book in BOOKS:
        if book.id == book_id:
            return book
    raise HTTPException(status_code=404, detail="Book not found")

# Query Parameters
@app.get("/books/", status_code=status.HTTP_200_OK)
async def get_books_by_rating(rating: float = Query(gt=0, lt=6)):
    results = []
    for book in BOOKS:
        if book.rating == rating:
            results.append(book)
    return results

@app.post("/books/add_book", status_code=status.HTTP_201_CREATED)
async def add_book(book: BookRequest):
    # print(type(book))
    new_book = Book(**book.model_dump())
    # print(type(new_book))
    BOOKS.append(find_book_id(new_book))
    return new_book

# PUT Method
@app.put("/books/update_book", status_code=status.HTTP_204_NO_CONTENT) 
async def update_book(updated_book: BookRequest):
    for book in BOOKS:
        if book.id == updated_book.id:
            book.title = updated_book.title
            book.author = updated_book.author
            book.description = updated_book.description
            book.rating = updated_book.rating
            return book
        
    raise HTTPException(status_code=404, detail="Book not found")
