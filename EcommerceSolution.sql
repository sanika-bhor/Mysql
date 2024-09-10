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
  userId int,
  total int,
  status varchar(15) );

-- to show the structure of table like column name, datatype, any constaint, key etc
desc products;
desc orders;

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


-- when you want to rename the table with new table name
ALTER TABLE credentials RENAME TO userCredentials;


-- delete only all rows of the table
TRUNCATE TABLE orders;


-- delete all rows with table
DROP TABLE orders;


-- but when you want to delte particular delete then we can use below
DELETE FROM orders WHERE id=1;

-- suppose the table contains 100 records but you want to retrive only specific record then use where clause
SELECT * FROM products WHERE productName="mobile";


-- we can also arrange data just like i want to arrange the price of all product im ascending order such that low price product at the yop
SELECT * FROM products ORDER BY price ASC;

-- also in desecnding as
SELECT * FROM products ORDER BY price DESC;

-- when we forgot to declare primary key at the time of table creating then you can add using alter command
ALTER TABLE users ADD PRIMARY KEY (id);


-- when we want to create fpreign key by giving the refernce of another primary key
ALTER TABLE orders ADD FOREIGN KEY (userId) REFERENCES users(id);



-- add unique constraint to users table
ALTER TABLE users ADD CONSTRAINT unique_password UNIQUE (password);

--we can add check constaint to check age should be greater than 15
ALTER TABLE credentials ADD CONSTRAINT check_age CHECK (age > 15);