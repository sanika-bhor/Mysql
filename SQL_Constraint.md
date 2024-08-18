# <p align="center">SQL Constraint</p>
<!------------------------------------------------------------->
--------------------------------------------------------------------------------------------------------------------------
## SQL Constraint :-

SQL constraints are rules applied to columns in a database table to ensure the integrity, accuracy, and reliability of the data. These constraints enforce specific conditions that must be met for data to be entered into the table, thereby maintaining the consistency of the database.

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

### 1. PRIMARY KEY:
Uniquely identifies each record in a table. It is a combination of NOT NULL and UNIQUE.

**Syntax**:
1. Create Primary key while creating Table.
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);
```

2. Adding a Primary Key to an Existing Table
```sql
ALTER TABLE users
ADD PRIMARY KEY (id);
```

**Example**:
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
);

```
**Explanation**:
- employee_id is the primary key for the employees table.
- Each employee will have a unique employee_id, and no two employees can share the same ID.
- The employee_id cannot be NULL.

**Purpose**:
Ensures that each record in the table can be uniquely identified.
 
----------------------------------------------------------------------------------------------------------------------------------------------

### 2. FOREIGN KEY:
Ensures referential integrity between two tables by linking the FOREIGN KEY in one table to the PRIMARY KEY in another.

**Syntax**:
1. Create Foreign key while creating Table.
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
```

2. Adding a Foreign Key to an Existing Table
```sql
ALTER TABLE orders
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES users(id);
```

**Example**:
```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

**Explanation**:
- The orders table's customer_id column is a foreign key that references the customer_id column in the customers table.
- This means that every customer_id in the orders table must match an existing customer_id in the customers table.

**Purpose**:
Maintains a relationship between two tables, ensuring that records in one table correspond to valid records in another.
 
----------------------------------------------------------------------------------------------------------------------------------------------


### 3. NOT NULL:
Ensures that a column cannot have a NULL value.

**Syntax**:
1. Create Not null while creating Table.
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);
```

2. Adding a Not Null to an Existing Table
```sql
ALTER TABLE users
MODIFY username VARCHAR(50) NOT NULL;
```

**Example**:
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);
```

**Explanation**:
- The first_name, last_name, email, and hire_date columns are all defined with the NOT NULL constraint.
- Every employee record must have a first_name, last_name, email, and hire_date.
- If an attempt is made to insert a record without values for these columns, the database will throw an error.

**Purpose**:
 Prevents missing or undefined data in the specified column.
 
----------------------------------------------------------------------------------------------------------------------------------------------


### 4. UNIQUE:
Ensures that all values in a column are different.

**Syntax**:
1. Create Not null while creating Table.
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);
```
2. Adding Unique to an Existing Table
```sql
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);
```

**Example**:
```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);
```
**Explanation**:
- The username and email columns have the UNIQUE constraint.
- This ensures that no two users can have the same username or email.
- Multiple UNIQUE constraints are allowed, unlike the primary key which is unique to a single column or combination.

**Purpose**:
 Guarantees that no duplicate values are entered in the column.
 
----------------------------------------------------------------------------------------------------------------------------------------------


### 5. CHECK:
Ensures that all values in a column satisfy a specific condition.

**Syntax**:
1. Create check while creating Table.
```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    age INT CHECK (age >= 18)
);
```
2. Adding a check to an Existing Table
```sql
ALTER TABLE employees
ADD CONSTRAINT check_age
CHECK (age >= 18);
```

**Example**:
```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT CHECK (age >= 18),
    salary DECIMAL(10, 2) CHECK (salary > 0)
);
```

**Explanation**:
- The age column has a CHECK constraint ensuring that the employee's age must be 18 or older.
- The salary column has a CHECK constraint ensuring that the salary must be greater than 0.


**Purpose**:
 Validates that data in a column meets a defined criterion.
 
----------------------------------------------------------------------------------------------------------------------------------------------

### 6. DEFAULT:
Provides a default value for a column when no value is specified.

**Syntax**:
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    price DECIMAL(10, 2) DEFAULT 0.00
);
```

**Example**:
```sql
ALTER TABLE products
MODIFY price DECIMAL(10, 2) DEFAULT 0.00;
```

**Purpose**:
 Automatically fills in a value if no value is provided for the column during an insert.
 
----------------------------------------------------------------------------------------------------------------------------------------------

### 6. AUTO_INCREMENT:
Automatically generates a unique number for each new record in a table.

**Syntax**:
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);
```

**Example**:
```sql
ALTER TABLE users
MODIFY id INT AUTO_INCREMENT;
```

**Purpose**:
 Automatically assigns a unique value to the primary key field when a new record is inserted.
 
----------------------------------------------------------------------------------------------------------------------------------------------

### Creating a Table with Multiple Constraints:
Here's an example that combines several constraints in one table.

**Syntax**:
```sql
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    department_id INT,
    hire_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
```

<!------------------------------------------------------------->
----------------------------------------------------------------------------------------------------------------------------------------------

