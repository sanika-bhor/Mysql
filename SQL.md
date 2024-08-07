# <p align="center"> Structured Query Language </p>
<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Introduction to SQL :-

- SQL stands for Structured Query Language.
- SQL is used to communicate with a database. It is the standard language for relational database nanagenent systems.
- SQL statements are used to perform different operations on database like retrieval, insertion, updation and deletion of data.
- SQL İs used in various advanced Relational Database Management Systems (RDBMS). Some common RDBMS has use SQL are : MySQL, Oracle, Microsoft Access, Microsoft SQL Server, Sybase, Ingres, etc.


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Data type in SQL :-
### ➡ CHAR(length):
- The CHAR data type accepts character or string type of data. it also known as fixed length data type.
- The length of the character string is specified while assigning the data type.

### ➡ VARCHAR(length):
- The VARCHAR data type accepts character or string type of data. it also known as variable length data type.
- The length of the character string is specified while assigning the data type which indicate the maximum number of characters it can accept.

### ➡ BOOLEAN:
- The VARCHAR data type can accepts value either TRUE or FALSE. No need to declare size whie declaring the BOOLEAN data type.
- TRUE or FALSE are case insensitive.


### ➡ INTEGER or INT:
- The INTEGER data type in SQL is used to store whole numbers, and it typically includes variations like INT, SMALLINT, and BIGINT to accommodate different ranges of values.


### ➡ DECIMAL([precision],[scale]):
- The DECIMAL data type is used to accept floating point values for which you define a precision and a scale in the data type declaration.
- precision is a positive integer that represent the number of digits that the number will contain.
- scale is a positive integer that represent the number of digits of decimal places which will be occur to the right of the decimal point. 


### ➡ DATE:
- The DATE data type is accept date type of values. no need to assign size while declaring a DATE data type.
- DATE value should be specified in the form: YYYY-MM-DD.

### ➡ TIME:
- The TIME data type accepts time vaiues no parameters are required when declaring a TIME data type.
- The format is: HH:MM:SS. 

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Components of SQL :-

- ### Data Defination Language (DDL):
    ➡ DDL is used to create data tables, dictionaries and files within database.

    ➡ The DDL is also used to specify the structure of each tables, set of associated values with each attributes.
  
    ➡ Statement thats comes under DDL:
  
  * To create the database insatace: CREATE
  * To alter the structure of database: ALTER
  * To drop database instance: DROP
  * To rename database instance: RENAME

  
- ### Data Manipulation Language (DML):
     ➡ DML is used to accesing and manipulating data in a database.

    ➡ The DML provides a set of functionality to support the basic data manipulation operation on the data stored in the database.
  
    ➡ Statement thats comes under DML:
  
  * To Insert record in the table: INSERT
  * To update the record in table: UPDATE
  * To drop database instance: DELETE
    
- ### Data Control Language (DCL):
    ➡ DCL is used to control the user access to the databse related elements like table, views, function, procedures and packages.
  
    ➡ Statement thats comes under DCL:
  
  * To Grant access to user: GRANT
  * To revoke access to user: REVOKE
    
- ### Transaction Control Language (TCL):
    ➡ TCL statements allow you to control and manage transactiond to maintain the integrity of data within SQL statements.
  
    ➡ Statement thats comes under TCL:
  
  * To open a transaction: BEGIN 
  * To commits (save permanently) transactions: COMMIT
  * To rollback (cancel, undo) transaction: ROLLBACK
    
- ### Data Query Language (DQL):
    ➡  The commands of SQL that are used to tetrieve data from the database are collectively called as DQL.
  
    ➡ Statement thats comes under DML:

  * To retrive the table records: SELECT 

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------
## DDL commands :-
----------------------------------------------------------------------------------------------------------------------------------------------
  
## Creating Table :
  The CREATE TABLE statement is used to create table in database. Creating a table in MySQL involves using the CREATE TABLE statement, which defines the table structure, including the columns and their data types.

 **Snytax**:
```sql
CREATE TABLE tableName (
    Column1 DataTyle[size],
    Column2 DataTyle[size],
    Column3 DataTyle[size],
    .....
);
```

 **Example**:
```sql
CREATE TABLE users (
    id INT ,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(255),
);

```

 **Explanation**:
 
 ➡ Table Name: users is the name of the table.
 
 ➡ Columns:
 
   * id: An integer column which contain only integer value. 
   * username: A variable character column with a maximum length of 50 characters.
   * email: A variable character column with a maximum length of 100 characters.
   * password: A variable character column with a maximum length of 255 characters.


**Diagram Structure**
```
+----------------+-------------+---------------------+
| Id   | username   | email       | password     |
+----------------+-------------+---------------------+
|      |            |             |              |
|      |            |             |              |
+----------------+-------------+---------------------+
```

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Alter Table :  
The ALTER TABLE statement in MySQL is used to modify an existing table's structure. You can add, modify, or delete columns, as well as rename the table itself.

### 1. Add a Column
**Snytax**:
```sql
ALTER TABLE TableName ADD columnName DataType[size];
```
**Example**:
 ```sql
ALTER TABLE users ADD COLUMN age INT;
```
**Explanation**:
 Adding column age in the users table(Existing Table).


### 2. Modify a Column

**Snytax**:
```sql
ALTER TABLE TableName MODIFY COLUMN columnName DataType[size];
```
**Example**:
 ```sql
ALTER TABLE users MODIFY COLUMN age TINYINT;
```
**Explanation**:
Changing the datatype of column age of users table.

### 3. Drop a Column

**Snytax**:
```sql
ALTER TABLE TableName DROP COLUMN columnName;
```
**Example**:
 ```sql
ALTER TABLE users DROP COLUMN age;
```
**Explanation**:
Deleting column age from the users table.


### 4. Rename a Table

**Snytax**:
```sql
ALTER TABLE TableName RENAME TO AnotherTableName;
```
**Example**:
 ```sql
ALTER TABLE users RENAME TO members;
```
**Explanation**:
Changing the name of the table from users to members.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Truncate Table :  
The TRUNCATE TABLE statement in MySQL is used to delete all rows from a table, but unlike the DELETE statement, it is faster.

**Snytax**:
```sql
TRUNCATE TABLE tableName;
```
**Example**:
 ```sql
TRUNCATE TABLE users;
```
**Explanation**:
 this command will remove all the existing records from the users table.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Drop Table :  
The DROP TABLE statement in MySQL is used to remove a table from the database entirely. This action deletes the table definition and all its data, and it cannot be undone. Once a table is dropped, it cannot be recovered unless you have a backup.

**Snytax**:
```sql
DROP TABLE tableName;
```
**Example**:
 ```sql
DROP TABLE users;
```
**Explanation**:
deleting users table from the database.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Describe Table :  
The DESC (short for DESCRIBE) statement in MySQL is used to get the structure of an existing table. It provides information about the columns in a table, such as the column names, data types, nullability, key constraints, default values, and extra attributes.

**Snytax**:
```sql
DESC tableName;
```
**Example**:
 ```sql
DESC users;
```
**Explanation**:
displying structure of users table from the database.


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------
## DML commands :-
----------------------------------------------------------------------------------------------------------------------------------------------
  
## Insert :
 The INSERT statement in MySQL is used to add new rows to a table. You can insert data into all columns or specific columns, and you can insert multiple rows at once.
 
 **Snytax**:
```sql
INSERT INTO table_name VALUES (value1, value2, value3, ...);
```

 **Example**:
```sql
INSERT INTO users VALUES (1, 'sanika', 'bhorsanika0239@gmail.com', 'sanika');
```

 **Explanation**:
These records inserted into users table. 

**Diagram Structure**
```
+----------------+-------------+---------------------+----------------+
| Id   | username   | email                    | password     |
+----------------+-------------+---------------------+----------------+
|  1   |sanika      | bhorsanika0239@gmail.com | sanika       |
|      |            |                          |              |
+----------------+-------------+---------------------+----------------+
```


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Update :  
The UPDATE statement in MySQL is used to modify existing records in a table. You can update one or more columns in one or more rows based on specified conditions.

**Snytax**:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

```
**Example**:
 ```sql
UPDATE users
SET password = '12345'
WHERE id = 1;

```
**Explanation**:
 This command will Update password of the record whose id=1 of the users table.

 **Diagram Structure**
```
+----------------+-------------+---------------------+----------------+
| Id   | username   | email                    | password     |
+----------------+-------------+---------------------+----------------+
|  1   |sanika      | bhorsanika0239@gmail.com | 12345        |
|      |            |                          |              |
+----------------+-------------+---------------------+----------------+
```
