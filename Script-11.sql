CREATE TABLE company (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  address VARCHAR(50),
  salary INT);
INSERT INTO company (id, name, age, address, salary) VALUES
(1, 'Paul', 32, 'California', 20000),
(2, 'Allen', 25, 'Texas', 15000),
(3, 'Teddy', 23, 'Norway', 20000),
(4, 'Mark', 25, 'Rich-Mond', 65000),
(5, 'David', 27, 'Texas', 85000),
(6, 'Kim', 22, 'South-Hall', 45000),
(7, 'James', 24, 'Houston', 10000);
select address,name, max(salary) from company where address = 'Texas' group by address,name
--Second highest salary
select name,salary from company order by salary desc limit 2



