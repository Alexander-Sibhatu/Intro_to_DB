-- create database first

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- create books table

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
)

-- create Authors table

CREATE TABLE Authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215)
)

--create Customers table

CREATE TABLE Customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

-- create Orders table

CREATE TABLE Orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

-- create Order_Details table

CREATE TABLE Order_Details(
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
)

