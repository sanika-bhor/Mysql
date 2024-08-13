# <p align="center">Inbuilt function</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## String Function :-

SQL string functions are used to perform operations on string data types, such as CHAR, VARCHAR, TEXT, etc. These functions allow you to manipulate and extract information from strings in various ways.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### 1. LOWER(string):
Converts a string to lowercase.

**Syntax**:
```sql
SELECT LOWER(column_name) FROM table_name;
```

**Example**:
```sql
SELECT LOWER('Hello World') AS lower_string;
```

**Result**:
| lower_string |
|--------------|
| hello world  |

----------------------------------------------------------------------------------------------------------------------------------------------

### 2. UPPER(string):
Converts a string to uppercase.

**Syntax**:
```sql
SELECT UPPER(column_name) FROM table_name;
```

**Example**:
```sql
SELECT UPPER('Hello World') AS upper_string;
```

**Result**:
| upper_string |
|--------------|
| HELLO WORLD  |

----------------------------------------------------------------------------------------------------------------------------------------------

### 3. LENGTH(string):
Returns the length of a string.

**Syntax**:
```sql
SELECT LENGTH(column_name) FROM table_name;
```

**Example**:
```sql
SELECT LENGTH('Hello World') AS string_length;
```

**Result**:
| string_length |
|---------------|
| 11            |


----------------------------------------------------------------------------------------------------------------------------------------------

### 4. SUBSTR():
Extracts a substring from a string.

**Syntax**:
```sql
SELECT SUBSTRING(column_name, start_position, length) FROM table_name;
```

**Example**:
```sql
SELECT SUBSTRING('Hello World', 1, 5) AS substring;
```

**Result**:
|   substring   |
|---------------|
|    Hello      |

----------------------------------------------------------------------------------------------------------------------------------------------

### 4. CONCAT():
Concatenates two or more strings together.

**Syntax**:
```sql
SELECT CONCAT(string1, string2, ...) FROM table_name;
```

**Example**:
```sql
SELECT CONCAT('Hello', ' ', 'World') AS concatenated_string;
```

**Result**:
| concatenated_string |
|---------------------|
|     Hello World     |

----------------------------------------------------------------------------------------------------------------------------------------------

### 5. TRIM():
Removes leading and trailing spaces from a string.

**Syntax**:
```sql
SELECT TRIM(column_name) FROM table_name;
```

**Example**:
```sql
SELECT TRIM('  Hello World  ') AS trimmed_string;
```

**Result**:
| trimmed_string |
|----------------|
| Hello World    |

----------------------------------------------------------------------------------------------------------------------------------------------

### 6. LTRIM():
Removes leading spaces from a string.

**Syntax**:
```sql
SELECT LTRIM(column_name) FROM table_name;
```

**Example**:
```sql
SELECT LTRIM('  Hello World  ') AS Ltrimmed_string;
```

**Result**:
| Ltrimmed_string |
|----------------|
| Hello World    |


----------------------------------------------------------------------------------------------------------------------------------------------

### 7. RTRIM():
Removes leading spaces from a string.

**Syntax**:
```sql
SELECT RTRIM(column_name) FROM table_name;
```

**Example**:
```sql
SELECT RTRIM('  Hello World  ') AS Rtrimmed_string;
```

**Result**:
| Rtrimmed_string |
|-----------------|
| Hello World     |


----------------------------------------------------------------------------------------------------------------------------------------------

### 8. REPLACE():
Replaces occurrences of a specified substring within a string.

**Syntax**:
```sql
SELECT REPLACE(column_name, 'old_substring', 'new_substring') FROM table_name;
```

**Example**:
```sql
SELECT REPLACE('Hello World', 'World', 'SQL') AS replaced_string;
```

**Result**:
| replaced_string |
|-----------------|
| Hello SQL       |


----------------------------------------------------------------------------------------------------------------------------------------------

### 9. LPAD():
Pads the left side of a string with a specified character to a certain length.

**Syntax**:
```sql
SELECT LPAD(column_name, length, 'pad_string') FROM table_name;
```

**Example**:
```sql
SELECT LPAD('Hello', 10, '*') AS padded_string;
```

**Result**:
|  padded_string  |
|-----------------|
| *****Hello      |


----------------------------------------------------------------------------------------------------------------------------------------------

### 10. RPAD():
Pads the right side of a string with a specified character to a certain length.

**Syntax**:
```sql
SELECT RPAD(column_name, length, 'pad_string') FROM table_name;
```

**Example**:
```sql
SELECT RPAD('Hello', 10, '*') AS padded_string;
```

**Result**:
|  padded_string  |
|-----------------|
| Hello*****      |


----------------------------------------------------------------------------------------------------------------------------------------------

### 10. INITCAP():
To converts first letter of each word iin capital letter.

**Syntax**:
```sql
SELECT INITCAP(column_name) FROM table_name;
```

**Example**:
```sql
SELECT INITCAP('hello sql') AS initcap_string;
```

**Result**:
| initcap_string  |
|-----------------|
| Hello Sql       |

----------------------------------------------------------------------------------------------------------------------------------------------
### Example of Multiple String Functions in a Query
Suppose you have a users table with a username column, and you want to standardize the usernames to be uppercase and remove any leading or trailing spaces:

**Example**:
```sql
SELECT UPPER(TRIM(username)) AS standardized_username
FROM users;
```

**Result**:
| standardized_username  |
|------------------------|
| SANIKA BHOR            |
| SUMIT BHOR             |
| DISHA SATPUTE          |

<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Date and Time Function :-

SQL date and time functions are essential for manipulating and working with date and time values. They allow you to extract parts of a date, calculate intervals, format dates, and perform various other operations on date and time data types.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### 1. NOW():
Returns the current date and time.

**Syntax**:
```sql
SELECT NOW();
```

**Example**:
```sql
SELECT NOW() AS current_datetime;
```

**Result**:
|   current_datetime   |
|----------------------|
| 2024-08-13 14:30:00  |

----------------------------------------------------------------------------------------------------------------------------------------------

### 2. CURDATE():
Converts a string to uppercase.

**Syntax**:
```sql
SELECT CURDATE();
```

**Example**:
```sql
SELECT CURDATE() AS current_date;
```

**Result**:
| current_date |
|--------------|
| 2024-08-13   |

----------------------------------------------------------------------------------------------------------------------------------------------



### 3. CURTIME():
Returns the current time.

**Syntax**:
```sql
SELECT CURTIME();
```

**Example**:
```sql
SELECT CURTIME() AS current_time;
```

**Result**:
| current_time |
|--------------|
| 14:30:00     |

----------------------------------------------------------------------------------------------------------------------------------------------


### 4. DATE():
Extracts the date part of a date or date-time expression.

**Syntax**:
```sql
SELECT DATE(expression);
```

**Example**:
```sql
SELECT DATE('2024-08-13 14:30:00') AS date_part;
```

**Result**:
| date_part    |
|--------------|
| 2024-08-13   |

----------------------------------------------------------------------------------------------------------------------------------------------


### 5. TIME():
Extracts the time part of a date-time expression.

**Syntax**:
```sql
SELECT TIME(expression);
```

**Example**:
```sql
SELECT TIME('2024-08-13 14:30:00') AS time_part;
```

**Result**:
| time_part    |
|--------------|
| 14:30:00     |

----------------------------------------------------------------------------------------------------------------------------------------------


### 6. YEAR():
Extracts the year from a date.

**Syntax**:
```sql
SELECT YEAR(date);
```

**Example**:
```sql
SELECT YEAR('2024-08-13') AS year_part;
```

**Result**:
| year_part    |
|--------------|
| 2024         |

----------------------------------------------------------------------------------------------------------------------------------------------


### 7. MONTH():
Extracts the month from a date.

**Syntax**:
```sql
SELECT MONTH(date);
```

**Example**:
```sql
SELECT MONTH('2024-08-13') AS month_part;
```

**Result**:
| month_part   |
|--------------|
| 8            |

----------------------------------------------------------------------------------------------------------------------------------------------


### 8. DAY():
Extracts the day of the month from a date.

**Syntax**:
```sql
SELECT DAY(date);
```

**Example**:
```sql
SELECT DAY('2024-08-10') AS day_part;
```

**Result**:
| day_part   |
|------------|
| 13         |

----------------------------------------------------------------------------------------------------------------------------------------------


### 9. HOUR():
Extracts the hour from a time or date-time expression.

**Syntax**:
```sql
SELECT HOUR(time);
```

**Example**:
```sql
SELECT HOUR('2024-08-13 14:30:00') AS hour_part;
```

**Result**:
| hour_part   |
|-------------|
| 14          |

----------------------------------------------------------------------------------------------------------------------------------------------


### 10. MINUTE():
Extracts the minute from a time or date-time expression.

**Syntax**:
```sql
SELECT MINUTE(time);
```

**Example**:
```sql
SELECT MINUTE('2024-08-10 14:30:00') AS minute_part;
```

**Result**:
| minute_part |
|-------------|
| 30          |

----------------------------------------------------------------------------------------------------------------------------------------------


### 11. SECOND():
Extracts the second from a time or date-time expression.

**Syntax**:
```sql
SELECT SECOND(time);
```

**Example**:
```sql
SELECT SECOND('2024-08-10 14:30:45') AS second_part;
```

**Result**:
| second_part |
|-------------|
| 00          |

----------------------------------------------------------------------------------------------------------------------------------------------

### 12. DATEDIFF():
Returns the difference between two dates.

**Syntax**:
```sql
SELECT DATEDIFF(date1, date2);
```

**Example**:
```sql
SELECT DATEDIFF('2024-08-15', '2024-08-10') AS date_difference;
```

**Result**:
| date_difference |
|-----------------|
| 5               |

----------------------------------------------------------------------------------------------------------------------------------------------


### 13. TIMESTAMPDIFF():
Returns the difference between two timestamps.

**Syntax**:
```sql
SELECT TIMESTAMPDIFF(unit, datetime1, datetime2);
```

**Example**:
```sql
SELECT TIMESTAMPDIFF(HOUR, '2024-08-10 10:00:00', '2024-08-10 14:00:00') AS hours_difference;
```

**Result**:
| hours_difference |
|------------------|
| 4                |

<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Aggregate Function :-

SQL aggregate functions are used to perform calculations on a set of values and return a single value. They are often used with GROUP BY clauses to group rows that share a common characteristic and calculate a summary result.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### 1. SUM():
Returns the total sum of a numeric column.

**Syntax**:
```sql
SELECT SUM(column_name) FROM table_name;
```

**Example**:
```sql
SELECT SUM(salary) AS total_salary FROM employees;
```

**Result**:
|   total_salary   |
|------------------|
| 500000           |

----------------------------------------------------------------------------------------------------------------------------------------------


### 2. MIN():
Returns the minimum value in a set of values.

**Syntax**:
```sql
SELECT MIN(column_name) FROM table_name;
```

**Example**:
```sql
SELECT MIN(salary) AS minimum_salary FROM employees;
```

**Result**:
|   minimum_salary |
|------------------|
| 3000             |

----------------------------------------------------------------------------------------------------------------------------------------------

### 3. MAX():
Returns the maximum value in a set of values.

**Syntax**:
```sql
SELECT MAX(column_name) FROM table_name;
```

**Example**:
```sql
SELECT MAX(salary) AS maximum_salary FROM employees;
```

**Result**:
|   maximum_salary |
|------------------|
| 10000            |

----------------------------------------------------------------------------------------------------------------------------------------------

### 4. AVG():
Returns the average value of a numeric column.

**Syntax**:
```sql
SELECT AVG(column_name) FROM table_name;
```

**Example**:
```sql
SELECT AVG(salary) AS average_salary FROM employees;
```

**Result**:
|  average_salary  |
|------------------|
| 5000             |

----------------------------------------------------------------------------------------------------------------------------------------------
### 5. COUNT():
Returns the number of rows that match a specified condition.

**Syntax**:
```sql
SELECT COUNT(column_name) FROM table_name;
```

**Example**:
```sql
SELECT COUNT(*) AS total_rows FROM users;
```

**Result**:
| total_rows   |
|--------------|
| 100          |

----------------------------------------------------------------------------------------------------------------------------------------------
