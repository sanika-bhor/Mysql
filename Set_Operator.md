# <p align="center">SET Operators</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## SET Operators :-

Set operators in SQL are used to combine the results of two or more SELECT statements into a single result set. The most common set operators are UNION, UNION ALL, INTERSECT, and EXCEPT (or MINUS in some databases). These operators allow you to perform operations on multiple result sets, such as combining them, finding common rows, or identifying differences.
- Union
- Union All
- Intersect
- Minus

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * UNION :-
 Combines the results of two or more SELECT statements into a single result set, removing duplicate rows. The columns in the SELECT statements must have the same data type and be in the same order.
 
 **Syntax**:
```sql
SELECT column1, column2 FROM table1
UNION
SELECT column1, column2 FROM table2;

```

**Example**:
```sql
SELECT name FROM employees
UNION
SELECT name FROM managers;
```

 **Explanation**:
This retrieves a list of unique names from both the employees and managers tables.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## * UNION ALL :-
  Similar to UNION, but it does not remove duplicate rows. This can be faster than UNION because it skips the step of eliminating duplicates.
 
 **Syntax**:
```sql
SELECT column1, column2 FROM table1
UNION ALL
SELECT column1, column2 FROM table2;
```

**Example**:
```sql
SELECT name FROM employees
UNION ALL
SELECT name FROM managers;
```

 **Explanation**:
This retrieves all names from both tables, including duplicates.
