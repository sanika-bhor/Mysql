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


### 2. Data Type Mismatch:
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
