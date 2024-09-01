# <p align="center">SQL Errors</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## SQL Errors :-

SQL errors occur when the database management system (DBMS) encounters an issue while processing a SQL statement. These errors can arise from syntax mistakes, incorrect logic, constraint violations, or issues with database structure. Understanding common SQL errors can help you debug and write more reliable SQL queries.


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### 1. Syntax Errors:
Occur when the SQL statement is not written according to the syntax rules of the SQL language.

**Common Examples:**
- Misspelled Keywords: Using SELCT instead of SELECT.
- Missing Keywords: Omitting the FROM clause in a SELECT statement.
- Incorrect Clauses: Using WHERE instead of HAVING after GROUP BY.

**Example**:
```sql
SELCT * FROM employees;
```

**Error**:
You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCT * FROM employees'.


----------------------------------------------------------------------------------------------------------------------------------------------


### 2. Missing or Incorrect Identifiers:
Occur when a table, column, or other identifier is misspelled or does not exist.

**Common Examples:**
- Misspelled Table Names: Referring to a table as employes instead of employees.
- Nonexistent Columns: Selecting a column age from a table where the column does not exist.
  
**Example**:
```sql
SELECT age FROM employes;
```

**Error**:
Unknown column 'age' in 'field list'.


----------------------------------------------------------------------------------------------------------------------------------------------


### 3. Data Type Mismatch:
Occur when an operation involves incompatible data types, such as trying to compare a string to an integer.

**Common Examples:**
- Comparing Incompatible Types: Trying to compare a text value with a numeric value.
- Inserting Invalid Data: Trying to insert a string into an integer column.

**Example**:
```sql
SELECT * FROM employees WHERE salary = 'high';
```

**Error**:
Truncated incorrect DOUBLE value: 'high'.


----------------------------------------------------------------------------------------------------------------------------------------------


### 4.  Constraint Violations:
 Occur when an operation violates a constraint, such as a PRIMARY KEY, UNIQUE, NOT NULL, CHECK, or FOREIGN KEY constraint.

**Common Examples:**
- Primary Key Violation: Attempting to insert a duplicate value into a column with a PRIMARY KEY constraint.
- Foreign Key Violation: Trying to insert a value into a column that references a non-existing value in another table.


**Example**:
```sql
INSERT INTO employees (employee_id, first_name) VALUES (1, 'Sanika');
INSERT INTO employees (employee_id, first_name) VALUES (1, 'Sumit');

```

**Error**:
Duplicate entry '1' for key 'PRIMARY'

----------------------------------------------------------------------------------------------------------------------------------------------



### 5. Division by Zero:
Occurs when a query attempts to divide a number by zero, which is undefined in mathematics.

**Example**:
```sql
SELECT salary / 0 FROM employees;
```

**Error**:
ERROR 1365 (22012): Division by 0.

----------------------------------------------------------------------------------------------------------------------------------------------



### 6. NULL Value Errors:
Occur when operations involving NULL values are not handled properly, especially in calculations or constraints.

**Common Examples:**
- Calculation with NULL: Trying to add or multiply NULL values without using functions like COALESCE.
- NULL in a NOT NULL Column: Inserting a NULL value into a column that has a NOT NULL constraint.

  **Example**:
```sql
INSERT INTO employees (employee_id, first_name, salary) VALUES (3, 'Sara', NULL);
```

**Error**:
Column 'salary' cannot be null.

----------------------------------------------------------------------------------------------------------------------------------------------



### 7. Incorrect Use of Aggregates:
Occur when aggregate functions (like SUM, AVG, COUNT, etc.) are used incorrectly, especially in conjunction with non-aggregated columns.

**Common Examples:**

- Non-Aggregated Columns in SELECT: Trying to select a non-aggregated column without a GROUP BY clause.
  
  **Example**:
  
```sql
SELECT employee_id, SUM(salary) FROM employees;
```

**Error**:

In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'employees.employee_id'; this is incompatible with sql_mode=only_full_group_by.

----------------------------------------------------------------------------------------------------------------------------------------------


