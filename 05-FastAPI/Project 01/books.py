from fastapi import FastAPI, Body


app = FastAPI()

BOOKS = [
    {"title": "Title One", "author": "Author One", "category": "One"},
    {"title": "Title Two", "author": "Author Two", "category": "Two"},
    {"title": "Title Three", "author": "Author Three", "category": "Three"},
    {"title": "Title Four", "author": "Author Four", "category": "Four"},
    {"title": "Title Five", "author": "Author Five", "category": "Five"},
]

@app.get("/")
async def root():
    return{
        "message": "Hello, Abbas!"
    }

@app.get("/api-endpoint")
async def api_endpoint():
    return {
        "message": "Hello, FastAPI Endpoint!"
    }


@app.get("/books")
async def get_books():
    return BOOKS


@app.get("/books/{dynamic_param}")
async def dynamic_books(dynamic_param):
    return {
        "dynamic_param": dynamic_param
    }

@app.get("/books/title/{title}")
async def get_book_by_title(title: str):
    for book in BOOKS:
        if book["title"].lower() == title.lower():
            return book
    return {"message": "Book not found"}


# Query Parameters
@app.get("/books/")
async def get_book(category: str):
    results = []
    for book in BOOKS:
        if book["category"].lower() == category.lower():
            results.append(book)
    return results



# POST  Method
@app.post("/book/add_book")
async def add_book(title:str, author:str, category:str):
    new_book = {
        "title": title,
        "author": author,
        "category": category
    }
    BOOKS.append(new_book)
    return new_book


# PUT Method
@app.put("/books/update_book")
async def update_book(updated_book=Body()):
    for book in BOOKS:
        if book["title"].lower() == updated_book["title"].lower():
            book["author"] = updated_book.get("author", book["author"])
            book["category"] = updated_book.get("category", book["category"])
            return book
        
    return {"message": "Book not found"}


# DELETE Method
@app.delete("/books/delete_book/{title}")
async def delete_book(title:str):

    for book in BOOKS:
        if book["title"].lower() == title.lower():
            BOOKS.remove(book)
            return {"message": "Book deleted successfully"}

    return {"message": "Book not found"}

