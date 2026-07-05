SELECT *FROM  employee


INSERT INTO employee(name, position, department, hire_date, salary)
             VALUES('Pallavi Sidam', 'Data Analysis','Data science','2026-06-05',65000.00),
			       ('Aditya Sidam','Softwere Enginner','IT','2026-06-08',75000.00),
				   ('Ashutosh sidam','Sales Executive','sales','2023-08-09',62000.00),
				   ('Ambadas Sidam','Bussiness Executive','Marketing','2018-07-09',80000.00);

TRUNCATE TABLE employee;	
TRUNCATE TABLE employee RESTART IDENTITY;
			 
			 
			 
			 
			 )