# README

## Prerequisites

#### Required Ruby Version
```
2.7.1
```
If you are using RVM:

Installation
```
$ rvm install 2.7.1
```

Use Version
```
$ rvm use 2.7.1
```

#### Rails Installation
```
$ gem install rails
```

---

### Running Rails Application

##### Step 1: Go to the `xyz-books-api` directory
```
$ cd xyz-books-api
```

##### Step 2: Bundle Install
```
xyz-books-api$ bundle install
```

##### Step 3: Setup Database
```
# Create databases
xyz-books-api$ rails db:create

# Migration
xyz-books-api$ rails db:migrate

# Seeding
xyz-books-api$ rails db:seed
```

##### Step 4: Running Server
```
xyz-books-api$ rails s
```

---

### Running Vue.js Application

Note: Open a new terminal tab

##### Step 1: From the directory of the `xyz-books-api`. Go to the `xyz-books-frontend` directory
```
xyz-books-api$ cd xyz-books-frontend
```

##### Step 2: NPM Install
```
xyz-books-api/xyz-books-frontend$ npm install
```

##### Step 3: Run Server
```
xyz-books-api/xyz-books-frontend$ npm run serve
```

After running both Rails and Vue.js server, you should be able to access the webpage via [http://localhost:8080/](http://localhost:8080/). From the book view page, sometimes the book is not being loaded as sometimes the axios request is being blocked by the popup/ad blocker. If that ever happen, kindly disable the popup/ad blocker then reload the page.

---


## XYZ Books API


### GET /books/:id

#### Description
This endpoint returns 200 with the book data for valid ISBN. Otherwise, it returns 400 with an error message.

#### Example URL 
```
http://127.0.0.1:3000/books/978-1-891830-85-3
```

#### Sample Valid ISBN Response
```JSON
{
  "id": 1,
  "title": "American Elf",
  "isbn_13": "9781891830853",
  "isbn_10": "1891830856",
  "image_url": "doughnuts & Doom.png",
  "edition": "Book 2",
  "publication_year": 2004,
  "price": "1000.0",
  "publisher_id": 1,
  "created_at": "2022-10-17T13:03:14.206Z",
  "updated_at": "2022-10-17T13:03:14.206Z",
  "publisher_name": "Paste Magazine",
  "author_names": "Joel Hartse, Hannah P. Templer, Marguerite Z. Duras"
}
```

#### Sample Invalid ISBN Response
```JSON
{
  "error": "Invalid isbn"
}
```

---

### POST /books/convert_isbn

#### Description
This endpoint is used to convert ISBN-13 to ISBN-10 or vise-versa.

#### Example URL 
```
http://127.0.0.1:3000/books/convert_isbn
```

#### Sample Payload:
```JSON
{
  "isbn": "978-1-891830-85-3"
}
```

#### Sample Valid ISBN Response
```JSON
{
  "isbn": "1891830856"
}
```

#### Sample Invalid ISBN Response
```JSON
{
  "error": "Invalid isbn"
}
```
