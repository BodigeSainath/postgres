CREATE TABLE employees_eh(
  id INT PRIMARY KEY,
  name VARCHAR(40),
  age INT,
  address text,
  salary INT,
  join_date DATE
);
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (1, 'Paul', 32, 'California', 20000, '2001-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (3, 'Teddy', 23, 'Norway', 20000, NULL);
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (4, 'Mark', 25, 'Rich-Mond', 65000, '2007-12-13');
insert into employees_eh(id,name,age,address,salary,join_date)VALUES (5, 'David', 27, 'Texas', 85000, '2007-12-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (2, 'Allen', 25, 'Texas', NULL, '2007-12-13');
insert into employees_eh(id,name,age,address,salary,join_date)VALUES (8, 'Paul', 24, 'Houston', 20000, '2005-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (9, 'James', 44, 'Norway', 5000, '2005-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (10, 'James', 45, 'Texas', 5000, '2005-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (6, 'Jameson', 45, 'Texas', 50000, '2005-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (7, 'cameron', 25, 'OP', 45000, '2005-07-13');
insert into employees_eh(id,name,age,address,salary,join_date) VALUES (12, 'cameron white', 25, 'OP', 45000, '2005-07-13');
CREATE TABLE departments_eh(
  dept_id INT PRIMARY KEY,
  emp_id INT,
  dept_name VARCHAR(50),
  location VARCHAR(50),
  FOREIGN KEY (emp_id) REFERENCES employees_eh(id)
);
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (101, 1, 'HR', 'California');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) values (102, 2, 'IT', 'Texas');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (103, 3, 'Finance', 'Norway');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (104, 4, 'IT', 'Rich-Mond');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (105, 5, 'HR', 'Texas');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (106, 8, 'Sales', 'Houston');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (107, 9, 'Finance', 'Norway');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (108, 10, 'IT', 'Texas');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (109, 6, 'IT', 'Texas');
INSERT INTO departments_eh(dept_id,emp_id,dept_name,location) VALUES (110, 2, 'Marketing', 'Texas');
/*select id, name, dept_id,emp_id,dept_name from employees_eh as eh 
right join departments_eh as dh on id=emp_id where dept_name='HR' or name like 'P%';*/
select name,dept_name,salary from employees_eh 
join departments_eh on
id=emp_id where dept_name='IT' and salary > 5000
-- join limit 1
select name,dept_name from employees_eh
outer join departments_eh on
id=emp_id

select name,dept_name,dept_id from 
employees_eh right join departments_eh on 
id=emp_id








