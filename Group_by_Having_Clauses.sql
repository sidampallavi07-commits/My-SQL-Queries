--when  working with large dataset,we often need to summarize data

CREATE DATABASE db_for_group_by;
use db_for_group_by;

CREATE TABLE emp(
id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
joining_date DATE
);


INSERT INTO emp ( id,name, department,salary, joining_date)
values
(1,'pallavi','HR',50000,'2020-06-15'),
(2,'aditya','HR',55000,'2019-08-20'),
(3,'vanita','IT',70000,'2018-03-25'),
(4,'ambadas','IT',720000,'2017-07-10'),
(5,'ashutosh','IT',73000,'2021-02-15'),
(6,'sweta','finance',60000,'2020-02-05'),
(7,'pooja','finance',55000,'2019-05-12'),
(8,'vishal','finance',62000,'2021-01-12');


INSERT INTO emp ( id,name, department,salary, joining_date)
values
(9,'tom','HR',55000,'2019-05-12'),
(10,'jerry','IT',62000,'2021-01-12');

SELECT *FROM emp;

--Example 1 : Count Employee in Each Department

SELECT department, count (*)  from emp group by department ;

--Example 2 : Get  the Average salary per department

SELECT department, avg (salary)  from emp group by department ;

--Example 2 : Get  the Highest and lowest salary per department 

select department,min(salary),max(salary)from emp group by department;

--Example  4: Count  Employee per department and joining year
 


select department, joining_date as joining_year, count(*) from emp group by department, joining_date;

--Example 5: Order Department by the highest average salary

 select department,AVG(salary ) as avg_salary 
 from emp
 group by  department
 order by avg_salary DESC;


--Example 6: 
 select count(*),
 case
 when salary >60000 then 'low salary'
 when salary between 60000 and 70000 them 'median salary'
 alse 'high salary'
 and as salary_range
 from emp gruop by salary range ;

 --example 7: Find departments with the maximum number  of employees 
 
   select department, count(*) as total_employee from emp group by department order by total_employee DESc limit 1;
 
--Example 8: Find departments with more than 2 employee


 
