CREATE TABLE employee3(
employee_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2)
);

INSERT INTO employee3(employee_id,name,department,salary)
values (1,'pallavi','IT',95000),
(2,'sidam','IT',95000),
(3,'vanita','IT',95000),
(4,'aditya','sales',80000),
(5,'ashutosh','sales',90000),
(6,'ambadas','sales',85000);

SELECT* FROM employee3


--example 1: This query ranks all employees across the entire company based on their salaries, highest to lowest
SELECT
name,
department,
salary,
ROW_NUMBER() OVER(ORDER BY salary desc) as row_num,
RANK()OVER (ORDER BY salary desc) as standard_rank,
DENSE_RANK() OVER(ORDER BY salary desc) as dense_rank
 from
 employee3;

 --example  2: Partitioned Ranking Example

SELECT
name,
department,
salary,
RANK()OVER ( PARTITION BY DEPARTMENT ORDER BY salary desc ) as dept_rank
FROM
employee3;

--example 3: Find the Top N Rows Per Group

  with rankedemployee3 as(
SELECT
 
 name,
 department,
 salary,
  dense_rank()over( partition by department order by salary desc) as rnk
  from 
  employee3
  )
  select
 
  name,
   department,
  salary
  from rankedemployee3
  where rnk=1;
  
