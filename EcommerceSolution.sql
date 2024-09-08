-- first we have to create database
create database shoppingCart;

-- then use created database to perform operations on it
use shoppingCart;



-- create table products for storing data products data
create table products(
productId int not null auto_increment primary key, 
productName varchar(20) ,
decription text,
stock int not null,
price int);

-- create table credential such that it can store users credentials details
create table credentials (
  credentialId int not null auto_increment primary key,
  email varchar(30),
  password varchar(8),
  name varchar(30),
  location varchar(20),
  age int );

-- create table user such that it can store users details
create table users (
id int auto_increment primary key,
username varchar(50) not null unique,
password varchar(255) not null,
email varchar(100) not null unique,
address varchar(255)
);


-- create table orders that store orders data
create table orders (
  id int not null auto_increment primary key,
  date date,
  total int,
  status varchar(15) );


-- to show the structure of table like column name, datatype, any constaint, key etc
desc products;

-- Insert products data in products table
insert into products (productName, price) values('mobile',12000);
insert into products (productName, price) values('laptop',75000);
insert into products (productName, price) values('earpots',999);
insert into products (productName, price) values('TV',17000);
insert into products (productName, price) values('watch',5000);

-- insert user credentails
insert into credentials (email,password,name,location,age) 
        values('bhorsanika0239@gmail.com','sanika','sanika bhor','machar',19);
insert into credentials (email,password,name,location,age) 
        values('sumitbhor@gmail.com','sumit','sumit bhor','manchar',18);


-- insert users details
insert into users (username,password,email,address) values('SanikaBhor','sanika123','bhorsanika0239@gmail.com','tambademala');
insert into users (username,password,email,address) values('SumitBhor','sumit','sumitbhor7@gmail.com','tambademala');
insert into users (username,password,email,address) values('DishaSatpute','disha','dish@gmail.com','Rajgurunager');

-- insert orders details
insert into orders (date,total,status) values('2024-4-7',2500,'intransmit');
insert into orders (date,total,status) values('2024-7-4',2500,'processed');
insert into orders (date,total,status) values('2024-2-14',8900,'processed');
insert into orders (date,total,status) values('2024-9-4',999,'intransmit');


-- retriview the data from table
select * from products;
select * from credentials;
select * from orders;
select * from users;

-- by mistakely create column price with data type int instead of decimal
ALTER TABLE products MODIFY COLUMN price  decimal(10,2);

-- change the column name of credentials table from name to UserName
 ALTER TABLE credentials RENAME COLUMN name TO UserName;

-- credentials table no longer require location column so can delete it
ALTER TABLE credentials DROP COLUMN location;


-- Alter table users to add contact number column 
ALTER TABLE users ADD COLUMN contact numeric;


-- after adding new column we have to update that column value
update users set contact=8446756339 WHERE id=1;
update users set contact=8530086989 WHERE id=2;
update users set contact=8956232154 WHERE id=3;
