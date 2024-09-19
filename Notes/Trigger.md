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

### Explanation:

- **BEFORE INSERT:** The trigger will execute before a new row is inserted into the employees table.
- **NEW.salary:** Refers to the value of the salary column in the new row being inserted.
- If the salary is less than $30,000, the trigger automatically sets it to $30,000.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

## Example: AFTER INSERT Trigger for Auditing

You can create an AFTER INSERT trigger to log changes to an audit table whenever a new employee is added to the employees table.
```sql
CREATE TRIGGER log_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
   INSERT INTO employee_audit (employee_id, action, action_time)
   VALUES (NEW.employee_id, 'INSERT', NOW());
END;
```

### Explanation:

- **AFTER INSERT:** The trigger fires after a new employee is inserted.
- **NEW.employee_id:** Refers to the employee_id of the new employee being added.
- This trigger logs the insertion into an employee_audit table, recording the employee_id, the action ('INSERT'), and the timestamp (NOW()).
