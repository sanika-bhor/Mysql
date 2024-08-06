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

    
- ## DDL commands :-
  ### Creating Table :
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

