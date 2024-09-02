# <p align="center">Views</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Views :-

In SQL, a view is a virtual table based on the result set of a SQL query. Unlike a physical table, a view does not store data itself; instead, it provides a way to look at data from one or more tables. Views can be used to simplify complex queries, enhance security by limiting access to certain data, and present data in a specific format or structure.


### Views operation:-
- Creating a View
- Querying a View
- Updating a View
- Dropping a View

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Key Characteristics of Views :-
- **Virtual Table:** A view is a stored query that creates a virtual table, which can be queried like a regular table.
- **No Data Storage:** Views do not store data physically; they dynamically retrieve data from the underlying tables whenever accessed.
- **Simplify Complex Queries:** Views can encapsulate complex queries, making it easier to use and understand.
- **Security:** Views can limit user access to specific rows or columns, providing a layer of security by restricting direct access to the   underlying tables.
- **Updateable Views**: Some views are updatable, meaning you can insert, update, or delete rows through the view, but with certain limitations.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## purpose of view

The purpose of a **view** in SQL is to simplify how you interact with data. Think of a view as a "virtual table" that shows specific data from one or more real tables, without storing the data itself. Here's a breakdown of its main purposes:

1. **Simplify Complex Queries**: Views can combine multiple tables or apply filters, making it easier to retrieve and work with data.
   
2. **Enhance Security**: Views can limit access to sensitive data by only showing certain columns or rows, so users can see what they need without accessing the entire table.
   
3. **Provide Consistent Data Format**: Views can present data in a specific format or structure, useful for reporting or analysis.
   
4. **Decouple Database Structure**: If the underlying table structure changes, you can update the view without affecting the queries that rely on it.

In essence, a view makes your interaction with the database simpler, safer, and more efficient.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Creating a View:

Creating a view in SQL involves defining a virtual table based on the result set of a SQL query. The view is then stored in the database, allowing you to query it just like a regular table.

**Syntax**:
```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### Step-by-Step Example
Suppose you have a table named `employees` with the following columns:
- *employee_id*
- *first_name*
- *last_name*
- *salary*
- *department_id*

You want to create a view that shows only the `employee_id`, `first_name`, `last_name`, and `salary` for employees who earn more than $60,000.


### **Step 1: Define the SQL Query**

First, write the SQL query that retrieves the data you want to include in the view:

**Example**:
```sql
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 60000;
```

### **Step 2: Create the View**
Now, use the CREATE VIEW statement to create the view based on the query:


**Example**:
```sql
CREATE VIEW high_earners AS
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 60000;
```
