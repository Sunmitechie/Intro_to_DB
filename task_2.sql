import sql connector

mysql = mysql.connector.connect(
  host="localhost",
  user = "jewel",
  password = "Jahdom1st!336791",
  database = "alx_books_store"
)
mycursor = mysql.cursor()
create a table called Books (if not exists)
mycursor.execute(""CREATE TABLE Books IF NOT exists;
    (book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL
    )"")
    print("Books table created successfully")

create a table called Authors (if not exists)
mycursor.execute(""CREATE TABLE Authors IF NOT exists;
    (author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
    )"")
print("Authors table created successfully")

create a table called Customers (if not exists)
mycursor.execute(""CREATE TABLE Customers IF NOT exists
(  customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT
    )"")
print("Customers table created successfully")

create a table called Orders (if not exists)
mysqlcursor.execute(""CREATE TABLE Orders IF NOT exists
    (order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    )"")
print("Orders table created successfully")

create a table called OrderItems (if not exists)
mysqlcursor.execute(""CREATE TABLE Order_Details IF NOT exists
   (orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id) 
    )"")
print("OrderItems table created successfully")
