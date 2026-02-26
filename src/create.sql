-- Create database
CREATE DATABASE IF NOT EXISTS ecommerce;

-- Select database
USE ecommerce;

-- Create tables
CREATE TABLE IF NOT EXISTS gold_member_users (
    userid VARCHAR(20),
    signup_date DATE
);

CREATE TABLE IF NOT EXISTS users (
    userid VARCHAR(20),
    signup_date DATE
);

CREATE TABLE IF NOT EXISTS sales (
    userid VARCHAR(20),
    created_date DATE,
    product_id INT
);

CREATE TABLE IF NOT EXISTS product (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);