--Drop the table if it already exists
DROP TABLE IF EXISTS users;

--create the users table 
CREATE TABLE IF NOT EXISTS users(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
age INT,
city VARCHAR(50)
);

SELECT * FROM users;

--Insert 5 sample users into the users table
INSERT INTO users( username,email,age,city)
VALUES ('pallavi sidam','sidampallavi2@gmail.com',24,'Nagpur'),
       ('Aditya sidam','adityasidam65@gmail.com',19,'Mumbai'),
	   ('vanita sidam','vanitasidam89@gmail.com',47,'pune'),
	   ('Ambadas sidam','ambadas didam34@gmail.com',53,'nashik'),
	   ('Ashutosh sidam','ashutoshsidam41@gmail.com',21,'buldana');

SELECT  username,city FROM users;

UPDATE users
SET age=25
WHERE username='pallavi sidam';


SELECT * FROM users;

SELECT * FROM users ORDER BY user_id ASC;


UPDATE users
SET city='USA'
WHERE age>=21;

UPDATE users
SET city='kolkata',age=30
WHERE username='pallavi sidam';

UPDATE users
SET age=age+1
WHERE email LIKE '%gmail.com';

DELETE FROM users WHERE user_id=6;



;







)