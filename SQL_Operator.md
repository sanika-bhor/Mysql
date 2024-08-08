# <p align="center">SQL Operators</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------

## SQL Operators :-

In SQL, operators are special symbols or keywords used to perform operations on values, such as comparisons, arithmetic calculations, and logical evaluations. These operators can be broadly categorized into several types:
- Arithmatic Operator
- Comparison Operator
- Logical Operator
- Bitwise Operator
- Compund Operator
<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Arithmatic Operator :-
Arithmetic operators in SQL are used to perform mathematical operations on numeric data. These operators allow you to manipulate and calculate values in your queries, such as adding, subtracting, multiplying, dividing, and finding remainders.

### Addition(+):
Adds two numbers together.
**Example**:
```sql
SELECT price + 10 AS increased_price FROM products;
```

 **Explanation**:
This adds 10 to the value of the price column for each row and retrieve data as increased_price column.

**Diagram Structure**
```
+---------------------+
| increased_price     | 
+---------------------+
|        25           |           
|        30           |         
+---------------------+
```

----------------------------------------------------------------------------------------------------------------------------------------------

### Subtraction (-):
Subtracts the second number from the first.
**Example**:
```sql
SELECT price - 5 AS discounted_price FROM products;
```

 **Explanation**:
This substract 5 from the value of the price column for each row and retrieve data as discounted_price column.

**Diagram Structure**
```
+---------------------+
| discounted_price    | 
+---------------------+
|        10           |           
|        15           |         
+---------------------+
```

----------------------------------------------------------------------------------------------------------------------------------------------


### Multiplication (*):
 Multiplies two numbers.
**Example**:
```sql
SELECT price * 1.2 AS adjusted_price FROM products;
```

 **Explanation**:
This multiplies the value of the price column by 1.2 for each row and retrieve data as adjusted_price column.

**Diagram Structure**
```
+---------------------+
|    adjusted_price   | 
+---------------------+
|        18           |           
|        24           |         
+---------------------+
```

----------------------------------------------------------------------------------------------------------------------------------------------

### Division (/):
Divides the first number by the second.
**Example**:
```sql
SELECT price / 2 AS half_price FROM products;
```

 **Explanation**:
This divides the value of the price column by 2 for each row and retrieve data as half_price column.

**Diagram Structure**
```
+---------------------+
|    adjusted_price   | 
+---------------------+
|        7.5          |           
|        10           |         
+---------------------+
```

----------------------------------------------------------------------------------------------------------------------------------------------

### Modulus (%):
 Returns the remainder of the division between two numbers.
**Example**:
```sql
SELECT price % 3 AS remainder FROM products;
```

 **Explanation**:
This returns the remainder when the value of the price column is divided by 3.

**Diagram Structure**
```
+---------------------+
|    remainder        | 
+---------------------+
|        0            |           
|        2            |         
+---------------------+
```

----------------------------------------------------------------------------------------------------------------------------------------------

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Comparision Operator :-
Comparison operators in SQL are used to compare two expressions or values. These operators are commonly used in the WHERE clause of SQL queries to filter data based on specific conditions. The result of a comparison is a Boolean value (TRUE, FALSE, or NULL).

### Equal to (=):
 Checks if two values are equal.
 
**Example**:
```sql
SELECT * FROM users WHERE age = 25;
```

 **Explanation**:
This retrieves all users with an age of 25.

----------------------------------------------------------------------------------------------------------------------------------------------

### Not equal to (<> or !=):
Checks if two values are not equal.

**Example**:
```sql
SELECT * FROM users WHERE age <> 25;
```

 **Explanation**:
This retrieves all users whose age is not 25.

----------------------------------------------------------------------------------------------------------------------------------------------

### Greater than (>): 
Checks if the value on the left is greater than the value on the right.

**Example**:
```sql
SELECT * FROM products WHERE price > 100;
```

 **Explanation**:
This retrieves all products with a price greater than 100.

----------------------------------------------------------------------------------------------------------------------------------------------

### Less than (<): 
Checks if the value on the left is less than the value on the right.

**Example**:
```sql
SELECT * FROM products WHERE price < 100;
```

 **Explanation**:
This retrieves all products with a price less than 100.

----------------------------------------------------------------------------------------------------------------------------------------------


### Greater than or equal to (>=): 
 Checks if the value on the left is greater than or equal to the value on the right.

**Example**:
```sql
SELECT * FROM users WHERE age >= 18;
```

 **Explanation**:
This retrieves all users who are 18 years old or older.

----------------------------------------------------------------------------------------------------------------------------------------------

### Less than or equal to (<=):
 Checks if the value on the left is less than or equal to the value on the right.

**Example**:
```sql
SELECT * FROM users WHERE age <= 18;
```

 **Explanation**:
This retrieves all users who are 18 years old or younger.

----------------------------------------------------------------------------------------------------------------------------------------------


