import mysql connector

mydb=mysql.connector.cursor(
    host="loclhost",
    user="jewel",
    password="Jahdom1st!336791",
    databases="alx_books_store"
)

mycursor=mydb.cursor()

USE alx_book_store;
SHOW TABLES;
SHOW COLUMNS FROM books;
