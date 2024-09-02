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
