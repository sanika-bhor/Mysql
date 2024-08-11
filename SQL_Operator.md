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


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * Logical Operator :-
Logical operators in SQL are used to combine multiple conditions in the WHERE clause of a query. They return a Boolean value (TRUE, FALSE, or NULL) and help in filtering data based on multiple criteria. The most commonly used logical operators in SQL are AND, OR, and NOT.

### AND:
 Combines two conditions and returns TRUE only if both conditions are true.
 
**Example**:
```sql
SELECT * FROM users 
WHERE age >= 18 AND country = 'USA';
```

 **Explanation**:
This retrieves all users who are at least 18 years old and live in the USA.

----------------------------------------------------------------------------------------------------------------------------------------------


### OR:
Checks if two values are not equal. Combines two conditions and returns TRUE if at least one of the conditions is true.

**Example**:
```sql
SELECT * FROM users 
WHERE age < 18 OR country = 'Canada';
```

 **Explanation**:
This retrieves all users who are either younger than 18 or live in Canada.

----------------------------------------------------------------------------------------------------------------------------------------------


### NOT: 
Negates a condition, returning TRUE if the condition is false and FALSE if the condition is true.

**Example**:
```sql
SELECT * FROM users 
WHERE NOT country = 'USA';
```

 **Explanation**:
This retrieves all users who do not live in the USA.

<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Range Searching Operator- Between :-

The BETWEEN operator in SQL is used for range searching, allowing you to select values within a specified range. This operator is commonly used with numeric, date, or even text data types to filter results based on whether a column's value falls within a certain range. The BETWEEN operator is inclusive, meaning it includes both the start and end values in the range.

 **Syntax**:
```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

```

**Example**:
#### 1. Using BETWEEN with Numbers
Suppose you have a `products` table with columns `product_id`, `product_name`, and `price`.

- **products** table:
  | product_id | product_name | price |
  |------------|--------------|-------|
  | 1          | Widget A     | 100   |
  | 2          | Widget B     | 150   |
  | 3          | Widget C     | 200   |
  | 4          | Widget D     | 250   |
  | 5          | Widget E     | 300   |

To find all products priced between 150 and 250:

```sql
SELECT product_name, price
FROM products
WHERE price BETWEEN 150 AND 250;
```

**Result**:

| product_name | price |
|--------------|-------|
| Widget B     | 150   |
| Widget C     | 200   |
| Widget D     | 250   |


#### 2. Using BETWEEN with Dates

Assume you have an `orders` table with columns `order_id`, `customer_id`, and `order_date`.

- **orders** table:
  | order_id | customer_id | order_date |
  |----------|-------------|------------|
  | 1        | 101         | 2024-01-10 |
  | 2        | 102         | 2024-02-15 |
  | 3        | 103         | 2024-03-20 |
  | 4        | 104         | 2024-04-25 |
  | 5        | 105         | 2024-05-30 |

To find all orders placed between February 1, 2024, and April 30, 2024:

```sql
SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '2024-02-01' AND '2024-04-30';
```

**Result**:

| order_id | order_date |
|----------|------------|
| 2        | 2024-02-15 |
| 3        | 2024-03-20 |
| 4        | 2024-04-25 |

#### 3. Using BETWEEN with Text (Strings)

Suppose you have a `customers` table with a `customer_name` column:

- **customers** table:
  | customer_id | customer_name |
  |-------------|---------------|
  | 1           | Alice         |
  | 2           | Bob           |
  | 3           | Charlie       |
  | 4           | David         |
  | 5           | Eve           |

To find all customer names that fall alphabetically between 'Bob' and 'David':

```sql
SELECT customer_name
FROM customers
WHERE customer_name BETWEEN 'Bob' AND 'David';
```

**Result**:

| customer_name |
|---------------|
| Bob           |
| Charlie       |
| David         |

### Using `NOT BETWEEN`

You can also use `NOT BETWEEN` to exclude a range of values.

#### Example

To find products priced outside the range of 150 and 250:

```sql
SELECT product_name, price
FROM products
WHERE price NOT BETWEEN 150 AND 250;
```

**Result**:

| product_name | price |
|--------------|-------|
| Widget A     | 100   |
| Widget E     | 300   |




<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Pattern Matching Opertaor -Like :-

The LIKE operator in SQL is used for pattern matching in queries. It allows you to search for a specified pattern in a column. The LIKE operator is commonly used with wildcard characters to find rows that match a particular pattern.

 **Syntax**:
```sql
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;
```

The `LIKE` operator in SQL is used for pattern matching in queries. It allows you to search for a specified pattern in a column. The `LIKE` operator is commonly used with wildcard characters to find rows that match a particular pattern.

### Syntax

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name LIKE pattern;
```

### Wildcard Characters

1. **Percent (`%`)**: Represents zero, one, or multiple characters. It can be used to match a string of any length.
   - **Example**: `'a%'` matches any string starting with `a`, such as `apple`, `apricot`, etc.

2. **Underscore (`_`)**: Represents a single character. It can be used to match exactly one character.
   - **Example**: `'h_t'` matches `hat`, `hit`, `hot`, etc., but not `heat` or `hoot`.
