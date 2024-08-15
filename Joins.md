<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Joins :-

In SQL, a JOIN clause is used to combine rows from two or more tables based on a related column between them. The purpose of using joins is to retrieve data from multiple tables in a single query, making it easier to work with related data spread across different tables.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------
## Types of Joins :-

|-------->1. INNER 

|-------->2. OUTER

|-------->3. LEFT OUTER 

|-------->4. RIGHT OUTER

|-------->5. FULL OUTER

|-------->6. SELF


<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## 1. INNER JOIN :
An INNER JOIN in SQL is used to return only the rows where there is a match in both tables being joined. If there is no match, the row is not included in the result set. INNER JOIN is the most common type of join and is often simply referred to as a "join."

<p align="center">
 <img  src="https://www.tutorialrepublic.com/lib/images/inner-join.png" width="350" alt="inner join" >
</p>

**Syntax**:
```sql
SELECT column1, column2, ...
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```
**Representation**:
```
Table A   Table B   INNER JOIN
  A1        B1         A1
  A2        B2         A2
  A3                   (no match)
            B3         (no match)
```

**Example**:

Suppose you have two tables:
1. employees:
    - id
    - name
    - department_id

2. departments:
    - id
    - department_name


You want to retrieve the names of employees along with their department names. You can achieve this using an INNER JOIN between the employees and departments tables:

```sql
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.id;
```

**Result**:
| name   | department_name |
|--------|-----------------|
| Alice  | HR              |
| Bob    | IT              |
| Charlie| Sales           |

----------------------------------------------------------------------------------------------------------------------------------------------
