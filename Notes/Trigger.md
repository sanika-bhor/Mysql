# <p align="center">SQL Trigger</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## Triggger :-

A trigger in SQL is a special type of stored procedure that automatically executes or "fires" in response to certain events on a table or view. Triggers can be used to enforce business rules, maintain data integrity, or audit changes in a database. Common events that can activate a trigger include INSERT, UPDATE, or DELETE operations.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------
## Key Features of Triggers:
- **Automatic Execution:** Triggers execute automatically in response to a defined event, requiring no manual intervention.
- **Data Integrity:** Triggers help enforce data integrity by validating or modifying data before or after it’s changed.
- **Business Logic:** You can encapsulate business rules within triggers, ensuring that they are always followed.
- **Audit Changes:** Triggers can track changes to data for auditing purposes by logging changes to another table.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Types of Triggers
- **Before Trigger:** Executes before an INSERT, UPDATE, or DELETE operation on a table. Often used for validation or to modify data before it’s written.
- **After Trigger:** Executes after an INSERT, UPDATE, or DELETE operation. Typically used for auditing or to trigger other actions once the data has changed.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------


## Synatx:
```sql
CREATE TRIGGER trigger_name
BEFORE | AFTER INSERT | UPDATE | DELETE
ON table_name
FOR EACH ROW
BEGIN
   -- SQL statements
END;
```
<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Example: BEFORE INSERT Trigger

Suppose you have a employees table, and you want to ensure that no employee is inserted with a salary lower than $30,000. You can create a BEFORE INSERT trigger that checks this condition.

```sql
CREATE TRIGGER check_salary_before_insert
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
   IF NEW.salary < 30000 THEN
      SET NEW.salary = 30000;
   END IF;
END;
```



