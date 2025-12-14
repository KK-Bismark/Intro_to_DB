-- Designing a MySQL database for an online bookstore.
-- The database should store information about books,
-- authors, customers, orders, and order details.

CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE );
