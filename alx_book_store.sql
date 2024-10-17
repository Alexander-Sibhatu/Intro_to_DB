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

