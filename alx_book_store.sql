-- Designing a MySQL database for an online bookstore.
-- The database should store information about books,
-- authors, customers, orders, and order details.

-- Creates the database.
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Creates the Authors table.
CREATE TABLE Authors ( author_id INT PRIMARY KEY,
       author_name VARCHAR(215)
);

CREATE TABLE Books (
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE );
