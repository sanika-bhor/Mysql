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

## 2. OUTER JOIN :
An OUTER JOIN in SQL is used to return all the rows from one table and the matched rows from another table. If no match is found, the result will include NULL values for the columns from the non-matching table. There are three types of outer joins:

1. LEFT JOIN
2. RIGHT JOIN
3. FULL JOIN
----------------------------------------------------------------------------------------------------------------------------------------------


## 3. LEFT OUTER JOIN :
A LEFT OUTER JOIN, commonly referred to as a LEFT JOIN, returns all the records from the left table and the matched records from the right table. If there is no match, NULL values are returned for the columns from the right table.

<p align="center">
 <img  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCwXWanQ7QY7xLrPICDzNqqZboaVzEXMhDohouvPv23owRLjIeRThk-qZTcPH-Gcs94zc&usqp=CAU" width="350" alt="inner join" >
</p>

**Syntax**:
```sql
SELECT column1, column2, ...
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```

**Representation**:

```
Table A   Table B   LEFT JOIN
  A1        B1        A1   B1
  A2        B2        A2   B2
  A3                  A3   NULL
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


You want to retrieve the names of all employees along with their department names, including those employees who are not assigned to any department.

```sql
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id;
```

**Result**:

| name   | department_name |
|--------|-----------------|
| Alice  | HR              |
| Bob    | IT              |
| Charlie| Sales           |
| David  | NULL            |

In this example:
- "Alice", "Bob", and "Charlie" have matching departments, so their department names are displayed.
- "David" does not belong to any department (department_id is NULL), so NULL is displayed in the department_name column.

----------------------------------------------------------------------------------------------------------------------------------------------


## 4. RIGHT OUTER JOIN :
A RIGHT OUTER JOIN, commonly referred to as a RIGHT JOIN, returns all the records from the right table and the matched records from the left table. If there is no match, NULL values are returned for the columns from the left table.

<p align="center">
 <img  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS6_OSio58V6T0ZEDxHzaZU946DBuhBdH8OAIBs7GQ3eNPFbljeJoosiWfdiSNMuBYvHY&usqp=CAU" width="350" alt="inner join" >
</p>

**Syntax**:
```sql
SELECT column1, column2, ...
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;
```

**Representation**:

```
Table A   Table B   RIGHT JOIN
  A1        B1        A1   B1
  A2        B2        A2   B2
            B3       NULL  B3
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


You want to retrieve the names of all departments along with the names of employees working in them, including those departments that have no employees.

```sql
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.id;
```

**Result**:

| name   | department_name |
|--------|-----------------|
| Alice  | HR              |
| Bob    | IT              |
| Charlie| Sales           |
| NULL   | Marketing       |

In this example:
- "HR", "IT", and "Sales" departments have matching employees, so their names are displayed.
- "Marketing" does not have any employees, so NULL is displayed in the name column.

----------------------------------------------------------------------------------------------------------------------------------------------

