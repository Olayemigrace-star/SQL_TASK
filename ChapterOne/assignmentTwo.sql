CREATE DATABASE e_commerce_db;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(250) NOT NULL
);

 CREATE TABLE products (
     product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL
 );


 CREATE TABLE orders (
     order_id INT PRIMARY KEY,
     user_id INT NOT NULL,
     order_date DATE NOT NULL,

     FOREIGN KEY (user_id)
	 REFERENCES users(user_id)
 );
