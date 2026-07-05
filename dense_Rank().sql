--create a sample employee table

CREATE TABLE employee5(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10, 2)

);


INSERT INTO employee5 (employee_id,employee_name,department,salary)
values
(1,'pallavi','HR',5000),
(2,'aditya','HR',4000),
(3,'sidam','HR',5000),
(4,'vanita','IT',8000),
(5,'ashutosh','IT',8000),
(6,'ambadas','IT',7000),
(7,'nikki','MARKETING',6000);


 select *from employee5;

 --This query ranks all employees by their salary in descending order, regardless of their department.
 SELECT  
 employee_id,
 employee_name,
 department,
 salary,
 DENSE_RANK() OVER (ORDER BY salary DESC ) AS salary_dence_rank
 from employee5;


--Example 2: Dense Rank Partitioned by Department
 SELECT  
 employee_id,
 employee_name,
 department,
 salary,
 DENSE_RANK() OVER ( PARTITION BY department ORDER BY salary DESC ) AS dept_salary_dence_rank
 from employee5;


--Example 3: Finding the Nth Highest Salary
 with 
 rankedSalaries AS(
select
employee_name,
department,
salary,
DENSE_RANK()OVER (ORDER BY salary desc)AS  salary_rank
from
employee5)

select 
employee_name,
department,
salary
FROM
Rankedsalaries
where 
salary_rank=2;

 

 

 
 
 
