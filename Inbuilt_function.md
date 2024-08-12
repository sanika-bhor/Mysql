# <p align="center">Inbuilt function</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## String Function :-

SQL string functions are used to perform operations on string data types, such as CHAR, VARCHAR, TEXT, etc. These functions allow you to manipulate and extract information from strings in various ways.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### LOWER(string):
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


