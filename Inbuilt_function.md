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


