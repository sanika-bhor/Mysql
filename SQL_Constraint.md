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
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);
```

**Example**:
```sql
ALTER TABLE users
ADD PRIMARY KEY (id);
```

**Purpose**:
Ensures that each record in the table can be uniquely identified.
 
----------------------------------------------------------------------------------------------------------------------------------------------

### 2. FOREIGN KEY:
Ensures referential integrity between two tables by linking the FOREIGN KEY in one table to the PRIMARY KEY in another.

**Syntax**:
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
```

**Example**:
```sql
ALTER TABLE orders
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES users(id);
```

**Purpose**:
Maintains a relationship between two tables, ensuring that records in one table correspond to valid records in another.
 
----------------------------------------------------------------------------------------------------------------------------------------------


### 3. NOT NULL:
Ensures that a column cannot have a NULL value.

**Syntax**:
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL
);
```

**Example**:
```sql
ALTER TABLE users
MODIFY username VARCHAR(50) NOT NULL;
```

**Purpose**:
 Prevents missing or undefined data in the specified column.
 
----------------------------------------------------------------------------------------------------------------------------------------------


### 4. UNIQUE:
Ensures that all values in a column are different.

**Syntax**:
```sql
CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);
```

**Example**:
```sql
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);
```

**Purpose**:
 Guarantees that no duplicate values are entered in the column.
 
----------------------------------------------------------------------------------------------------------------------------------------------

