-- first we have to create database
create database shoppingCart;

-- then use created database to perform operations on it
use shoppingCart;

-- create table products for storing data products data
create table products (
  productId int not null auto_increment primary key,
  productName varchar(20),
  price int );

-- create table credential such that it can store users credentials details
create table credentials (
  credentialId int not null auto_increment primary key,
  email varchar(30),
  password varchar(8),
  name varchar(30),
  location varchar(20),
  age int );

-- create table orders that store orders data
create table orders (
  id int not null auto_increment primary key,
  date date,
  total int,
  status varchar(15) );
