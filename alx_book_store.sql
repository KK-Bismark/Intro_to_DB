-- Designing a MySQL database for an online bookstore.
-- The database should store information about books,
-- authors, customers, orders, and order details.

-- Creates the database.
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Creates the Authors table.
CREATE TABLE Authors ( author_id INT PRIMARY KEY,
       author_name VARCHAR(215)
);

-- Creates the Books table.
CREATE TABLE Books (
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE
);

-- Creates the Customers table.
CREATE TABLE Customers (
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

-- Creates the Orders table.
CREATE TABLE Orders (
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	CONSTRAINT foreignkey_orders_customers FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Creates the Order Details table.
CREATE TABLE Order_Details (
	orderdetailid INT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity DOUBLE,
	CONSTRAINT foreignkey_orderdetails_orders FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	CONSTRAINT foreignkey_orderdetails_books FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
