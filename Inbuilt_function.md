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

----------------------------------------------------------------------------------------------------------------------------------------------

