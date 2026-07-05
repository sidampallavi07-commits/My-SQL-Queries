CREATE  DATABASE BOOKSTORE;
use bookstore;


CREATE TABLE book_orders_1nf(
order_id INT,
customers_name VARCHAR (100),
customers_email varchar(100),
customers_address VARCHAR(255),
book_isbn VARCHAR(20),
book_title VARCHAR(200),
book_author VARCHAR(100),
book_price DECIMAL(10,2),
order_date DATE,
Quantity INT,
total_price DECIMAL(10,2)
PRIMARY KEY (order_id,book_isbn)
);

INSERT INTO book_orders
 values 
 (1,'john smith','john*example.com','123 main st, anytown', '123-877676556','pride and prejudice','jane austen', 9.99,'2023-01-15',1,9.99),
 (2,'john smith','john*example.com','123 main st, anytown', '123-877676556','pride and prejudice','jane austen', 9.99,'2023-01-15',2,25.98),
 (3,'mary johnsaon','mary*example.com','456 main st, anytown', '897-877676556','pride and prejudice','jane austen', 9.99,'2023-01-20',1,14.99),
 (4,'robert brown','robert*example.com','789 main st, anytown', '097-877676556','pride and prejudice','jane austen', 9.99,'2023-01-25',1,9.99);
 
 select *from book_orders;

 CREATE TABLE customer(
customer_id INT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
phone1 VARCHAR(15),
phone2 VARCHAR(15),
phone3 VARCHAR(15)
 );


 insert into customer values
 (1,'john smith','john@example.com','555-1234','555-5678',NULL),
 (2,'mary johnson','mary@example','555-9012',NULL,NULL);
 );
 

 