CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Department (
    dept_id     INT PRIMARY KEY,
    dept_name   VARCHAR(50) UNIQUE NOT NULL,
    location    VARCHAR(50)
);

CREATE TABLE Employee (
    emp_id      INT AUTO_INCREMENT  PRIMARY KEY,
    first_name  VARCHAR(30) NOT NULL,
    last_name   VARCHAR(30),
    salary      DECIMAL(10,2) CHECK (salary > 0),
    hire_date   DATE DEFAULT (CURRENT_DATE),
    dept_id     INT,
    email       VARCHAR(100) UNIQUE,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE INDEX idx_emp_name ON Employee (last_name);
SHOW INDEXES FROM Employee;

CREATE VIEW emp_dept_view AS
SELECT e.emp_id, e.first_name, e.last_name, e.salary, d.dept_name
FROM Employee e
JOIN Department d ON e.dept_id = d.dept_id;


INSERT INTO Department VALUES (10, 'HR', 'Pune');
INSERT INTO Department VALUES (20, 'IT', 'Mumbai');
INSERT INTO Department VALUES (30, 'Finance', 'Delhi');


INSERT INTO Employee (first_name, last_name, salary, dept_id, email)
VALUES ('Amit', 'Patil', 45000, 10, 'amit.patil@company.com'),
       ('Sneha', 'Deshmukh', 60000, 20, 'sneha.deshmukh@company.com'),
       ('Rohit', 'Kumar', 55000, 20, 'rohit.kumar@company.com'),
       ('Priya', 'Joshi', 70000, 30, 'priya.joshi@company.com');


SELECT first_name, last_name, salary
FROM Employee
WHERE salary > 50000;


UPDATE Employee
SET salary = salary * 1.10
WHERE dept_id = 20;


DELETE FROM Employee
WHERE emp_id = 1;


SELECT first_name, last_name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

create Synonym empsyn for Employee;


CREATE SEQUENCE emp_seq
START WITH 1001
INCREMENT BY 1
MINVALUE 1001
NOCACHE
NOCYCLE;

INSERT INTO Employee (emp_id, first_name, last_name, salary, dept_id, email)
VALUES (NEXT VALUE FOR emp_seq, 'Sneha', 'Deshmukh', 60000, 20, 'sneha.deshmukh@company.com');

-- ------------------------------------------------------------------------------------------------------------------------------------- 
employee’s name with their department name.
SELECT e.first_name, e.last_name, d.dept_name
FROM Employee e
INNER JOIN Department d ON e.dept_id = d.dept_id;

-- how all employees and their department names — including employees not assigned to any
SELECT e.first_name, e.last_name, d.dept_name
FROM Employee e
LEFT JOIN Department d ON e.dept_id = d.dept_id;

-- Show all departments and the employees working in them — even departments without employees.
SELECT d.dept_name, e.first_name, e.last_name
FROM Employee e
RIGHT JOIN Department d ON e.dept_id = d.dept_id;

-- Combine results of left and right join to show all employees and all departments
SELECT e.first_name, e.last_name, d.dept_name
FROM Employee e
LEFT JOIN Department d ON e.dept_id = d.dept_id
UNION
SELECT e.first_name, e.last_name, d.dept_name
FROM Employee e
RIGHT JOIN Department d ON e.dept_id = d.dept_id;


-- Compare employees from the same department.
SELECT e1.first_name AS Employee,  d.dept_name
FROM Employee e1
JOIN Employee e2 ON e1.dept_id = e2.dept_id AND e1.emp_id <> e2.emp_id
JOIN Department d ON e1.dept_id = d.dept_id;

-- Find the employee who earns the highest salary.
SELECT first_name, last_name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- List all employees working in departments located in Mumbai or Delhi.
SELECT first_name, last_name
FROM Employee
WHERE dept_id IN (
    SELECT dept_id FROM Department WHERE location IN ('Mumbai', 'Delhi')
);
    
-- ----------------------------------------------------------------------------------------------------------------------
-- 4
create database library;
use library;

CREATE TABLE Borrower (
    Roll_no INT,
    Name VARCHAR(50),
    DateOfIssue DATE,
    NameOfBook VARCHAR(50),
    Status CHAR(1)
);

CREATE TABLE Fine (
    Roll_no INT,
    Date DATE,
    Amt DECIMAL(10,2)
);


DELIMITER $$

CREATE PROCEDURE return_book(IN p_Roll_no INT, IN p_NameOfBook VARCHAR(50))
BEGIN
    DECLARE v_DateOfIssue DATE;
    DECLARE v_Status CHAR(1);
    DECLARE v_Days INT;
    DECLARE v_FineAmt DECIMAL(10,2) DEFAULT 0;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
    BEGIN
        SELECT 'No record found for given Roll_no and Book!' AS Message;
    END;

    -- Get borrower record
    SELECT DateOfIssue, Status INTO v_DateOfIssue, v_Status
    FROM Borrower
    WHERE Roll_no = p_Roll_no AND NameOfBook = p_NameOfBook
    LIMIT 1;

    IF v_Status = 'I' THEN
        SET v_Days = DATEDIFF(CURDATE(), v_DateOfIssue);

        IF v_Days BETWEEN 15 AND 30 THEN
            SET v_FineAmt = v_Days * 5;
        ELSEIF v_Days > 30 THEN
            SET v_FineAmt = v_Days * 50;
        ELSE
            SET v_FineAmt = 0;
        END IF;

        UPDATE Borrower
        SET Status = 'R'
        WHERE Roll_no = p_Roll_no AND NameOfBook = p_NameOfBook;

        IF v_FineAmt > 0 THEN
            INSERT INTO Fine VALUES (p_Roll_no, CURDATE(), v_FineAmt);
        END IF;

        SELECT CONCAT('Book Returned. Fine = Rs ', v_FineAmt) AS Message;
    ELSE
        SELECT 'Book already returned or invalid status!' AS Message;
    END IF;
END$$

DELIMITER ;
-- ----------------------------------------------------------------------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS plsql_practice;
USE plsql_practice;

-- Step 1: Create table to store results
CREATE TABLE areas (
    radius INT,
    area DECIMAL(10, 2)
);

-- Step 2: Change delimiter to allow block structure
DELIMITER $$

CREATE PROCEDURE calc_area()
BEGIN
    DECLARE r INT;
    DECLARE a DECIMAL(10, 2);
    
    SET r = 5;  -- starting radius
    
    WHILE r <= 9 DO
        SET a = 3.14159 * r * r;  -- formula: πr²
        INSERT INTO areas VALUES (r, a);
        SET r = r + 1;  -- increment radius
    END WHILE;
END$$
DELIMITER ;

-- Step 5: Execute the procedure
CALL calc_area();

-- Step 6: View the results
SELECT * FROM areas;

-- -----------------------------------------------------------------------------------------------------------------------
create database studentdb;
use studentdb;
CREATE TABLE Stud_Marks (
    Roll INT PRIMARY KEY,
    Name VARCHAR(100),
    Total_Marks INT
);

CREATE TABLE Result (
    Roll INT,
    Name VARCHAR(100),
    Class VARCHAR(30)
);



INSERT INTO Stud_Marks (Name, Total_Marks) VALUES
('Asha', 1200),
('Ravi', 950),
('Sneha', 870),
('Kiran', 800);

DELIMITER $$
CREATE PROCEDURE proc_Grade (
    IN p_roll INT,
    IN p_name VARCHAR(100),
    IN p_marks INT
)
BEGIN
    DECLARE v_class VARCHAR(30);

    -- Determine student class
    IF p_marks BETWEEN 990 AND 1500 THEN
        SET v_class = 'Distinction';
    ELSEIF p_marks BETWEEN 900 AND 989 THEN
        SET v_class = 'First Class';
    ELSEIF p_marks BETWEEN 825 AND 899 THEN
        SET v_class = 'Higher Second Class';
    ELSE
        SET v_class = 'Fail';
    END IF;

    -- Insert into Result table
    INSERT INTO Result (Roll, Name, Class)
    VALUES (p_roll, p_name, v_class);
END$$

DELIMITER ;

CALL proc_Grade(1, 'Asha', 1200);
CALL proc_Grade(2, 'Ravi', 950);
CALL proc_Grade(3, 'Sneha', 870);
CALL proc_Grade(4, 'Kiran', 800);

select * from result;
--  ----------------------------------------------------------------------------------------------------
create database rollcallstudent;
use rollcallstudent;
CREATE TABLE N_RollCall (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO N_RollCall VALUES 
(101, 'Alice'),
(102, 'Bob'),
(103, 'Charlie');

CREATE TABLE O_RollCall (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO O_RollCall VALUES (101, 'Alice');

DELIMITER $$

CREATE PROCEDURE merge_rollcall()
BEGIN
    DECLARE v_rollno INT;
    DECLARE v_name VARCHAR(50);
    DECLARE done INT DEFAULT 0;

    -- Cursor to read data from N_RollCall
    DECLARE cur CURSOR FOR 
        SELECT rollno, name FROM N_RollCall;

    -- Handler: what to do when no more rows
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_rollno, v_name;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- Insert only if rollno not already in O_RollCall
        IF NOT EXISTS (SELECT 1 FROM O_RollCall WHERE rollno = v_rollno) THEN
            INSERT INTO O_RollCall VALUES (v_rollno, v_name);
        END IF;
    END LOOP;

    CLOSE cur;

    SELECT 'Merge done successfully!' AS message;
END$$

DELIMITER ;

-- Call the procedure
CALL merge_rollcall();

-- Check merged data
SELECT * FROM O_RollCall;

-- -----------------------------------------------------------------------------------------------------------------------------
CREATE DATABASE library_mgmt;
USE library_mgmt;

-- Create the Library Table
CREATE TABLE Library (
    book_id INT PRIMARY KEY auto_increment,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    published_year INT,
    category VARCHAR(50)
);

-- Create the Audit Table
CREATE TABLE Library_Audit (
    audit_id INT PRIMARY KEY auto_increment,
    book_id INT,
    title VARCHAR(100),
    author VARCHAR(100),
    published_year INT,
    category VARCHAR(50),
    operation_type VARCHAR(20),      -- 'UPDATE' or 'DELETE'
    operation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Trigger for UPDATE
DELIMITER //
CREATE TRIGGER trg_library_audit_update
AFTER UPDATE ON Library
FOR EACH ROW
BEGIN
    INSERT INTO Library_Audit (
        book_id,
        title,
        author,
        published_year,
        category,
        operation_type,
        operation_date
    )
    VALUES (
        OLD.book_id,
        OLD.title,
        OLD.author,
        OLD.published_year,
        OLD.category,
        'UPDATE',
        NOW()
    );
END;
//
DELIMITER ;

-- Trigger for DELETE
DELIMITER //
CREATE TRIGGER trg_library_audit_delete
AFTER DELETE ON Library
FOR EACH ROW
BEGIN
    INSERT INTO Library_Audit (
        book_id,
        title,
        author,
        published_year,
        category,
        operation_type,
        operation_date
    )
    VALUES (
        OLD.book_id,
        OLD.title,
        OLD.author,
        OLD.published_year,
        OLD.category,
       'DELETE',
        NOW()
    );
END;
//
DELIMITER ;


INSERT INTO Library (book_id, title, author, published_year, category)
VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Classic');

INSERT INTO Library (book_id, title, author, published_year, category)
VALUES (2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction');

INSERT INTO Library (book_id, title, author, published_year, category)
VALUES (3, '1984', 'George Orwell', 1949, 'Dystopian');

INSERT INTO Library (book_id, title, author, published_year, category)
VALUES (4, 'The Alchemist', 'Paulo Coelho', 1988, 'Philosophy');

INSERT INTO Library (book_id, title, author, published_year, category)
VALUES (5, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Technology');

UPDATE Library
SET category = 'Political Fiction'
WHERE book_id = 3;

DELETE FROM Library WHERE book_id = 1;

SELECT * FROM Library;
SELECT * FROM Library_Audit;
-- -----------------------------------------------------------------------------------------------------------------------------

show dbs
use book

show collections;
db.createCollection("library");

db.library.insertOne({"bid":1,"name":"C++"});
db.library.insertOne({"bid":2,"name":"SEPM","author":"Pressman"});
db.library.insertOne({"bid":3,"name":"CN","author":"Forouzan","cost":700});

db.library.find().pretty();

db.library.deleteOne({"bid":1});
db.library.count();
db.library.find().pretty();

db.library.insertOne({"bid":1,"name":"C++"});
db.library.find().pretty();

db.library.find().sort({"bid":1})

db.library.insertOne({"bid":4,"name":"SPOS","author":"Pearson","cost":500});
db.library.find().pretty();

db.library.find().sort({"bid":1})

db.library.find({$and:[{"name":"CN"},{"cost":700}]}).pretty()

db.library.insertOne({"bid":5,"name":"TOC","author":"Addison-Wesley","cost":600});
db.library.insertOne({"bid":6,"name":"AI","author":"McGraw Hill Education","cost":800});

db.library.find().pretty();

db.library.find({$or:[{"cost":500},{"cost":800}]}).pretty()
db.library.find({"cost":{$ne:500}})


db.library.insertOne({"bid":7,"name":"CC","author":"Wiley Publications","cost":400})
db.library.find()

db.library.updateOne({'cost':400},{$set:{'cost':600}})
db.library.updateOne({'cost':800},{$set:{'cost':1200}})
db.library.find().pretty();
-- -----------------------------------------------------------------------------------------------------------------------------


show dbs
use customer

show collections;
db.createCollection("cust_table");

db.cust_table.insertOne({Item_id:1,Cust_Name:"Ram",Product:"Milk",Amount:40});
db.cust_table.insertOne({Item_id:2,Cust_Name:"Ram",Product:"Parle_G",Amount:50});
db.cust_table.insertOne({Item_id:3,Cust_Name:"Mohan",Product:"Lays Chips",Amount:40});
db.cust_table.insertOne({Item_id:4,Cust_Name:"Shivam",Product:"Mentos",Amount:10});
db.cust_table.insertOne({Item_id:5,Cust_Name:"Mohan",Product:"Maggie",Amount:60});


db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$sum:"$Amount"}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$avg:"$Amount"}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$min:"$Amount"}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$max:"$Amount"}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$first:"$Amount"}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$last:"$Amount"}}});

db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$sum:1}}});
db.cust_table.aggregate({$group:{_id:"$Cust_Name","total":{$addToSet:"$Amount"}}});

db.cust_table.createIndex({'Item_id':1})
db.cust_table.createIndex({'Item_id':2})
db.cust_table.createIndex({'Item_id':4})

db.cust_table.getIndexes()

db.cust_table.dropIndex({'Item_id':4})
db.cust_table.dropIndex({'Item_id':1})

db.cust_table.getIndexes()
db.cust_table.getIndexes()

-- -----------------------------------------------------------------------------------------------------------------------------

show dbs
use bill

show collections;
db.createCollection("pay");

db.pay.insertOne({Cust_ID:"A123",Product:"Milk",Amount:40,Status:"P"});
db.pay.insertOne({Cust_ID:"A123",Product:"Parle_G",Amount:50,Status:"NP"});
db.pay.insertOne({Cust_ID:"A123",Product:"Lays Chips",Amount:40,Status:"P"});
db.pay.insertOne({Cust_ID:"B123",Product:"Mentos",Amount:10,Status:"P"});
db.pay.insertOne({Cust_ID:"B123",Product:"Maggie",Amount:60,Status:"NP"});

db.pay.find()

db.pay.mapReduce(function(){emit(this.Cust_ID,this.Amount);},function(key,values){return Array.sum(values)},{query:{"Status":"NP"},out:"Bill_Amount"})

var mapFunc1=function(){emit(this.Cust_ID,this.Amount);};
var reduceFunc1=function(keyCustID,valuePrices){return Array.sum(valuePrices);};
db.pay.mapReduce(mapFunc1,reduceFunc1,{out:"Map"})

db.Bill_Amount.find()

db.Map.find()

-- -----------------------------------------------------------------------------------------------------------------------------
