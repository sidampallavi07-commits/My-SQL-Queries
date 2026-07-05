-- DELETING TABLE
DROP TABLE IF EXISTS  users;

-- CREATING TABLE
CREATE TABLE users (
     user_id INT PRIMARY KEY,
     name VARCHAR(50) NOT NULL,
     email VARCHAR(100) UNIQUE,
     age INTEGER CHECK (age >=18),
     reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
	 
-- INSERTING DATA INTO TABLE
INSERT INTO users(user_id,name,email,age)
VALUES(1,'Pallavi sidam','sidampallavi68@gmail.com',25);

-- INSERTING DATA INTO TABLE2
INSERT INTO users(user_id,name,email,age)
VALUES(2,'Pallavi sidam','sidampallavi67@gmail.com',23);

SELECT * FROM users;







)
