--Create Employees3 table

CREATE TABLE Employees3 (
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department_id INT
);

--Insert Data into Employee3
INSERT INTO Employees3 (first_name,last_name,department_id)
VALUES('rahul','sharma',101),
('priya','mehta',102),
('ankit','varma',103),
('simran','kour',NULL),
('aman','singh',101);

 SELECT * FROM Employees3;

--Create Departments table 
CREATE TABLE Departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

--Insert Data into Departments
INSERT INTO Departments (department_id,department_name)
VALUES(101,'sales'),
(102,'marketing'),
(103,'IT'),
(104,'HR');
SELECT * FROM Departments;

SELECT e.employee_id,e.first_name,e.last_name,
d.department_id,d.department_name
FROM Employees3 e
LEFT JOIN 
Departments d
ON e.department_id=d.department_id;
