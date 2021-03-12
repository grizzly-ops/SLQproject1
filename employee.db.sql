CREATE TABLE employees(
employees_id bigserial,
first_name varchar(25),	
last_name varchar(50),
date_of_birth varchar(25),
gender char(1),
hire_date varchar(25),
email varchar(25),
id_number varchar(10),	
CONSTRAINT id_number_unique UNIQUE (id_number),
CONSTRAINT employees_id PRIMARY KEY (employees_id)
);

CREATE TABLE departments(
dept_id bigserial,
department_name varchar(100),
CONSTRAINT dept_id_unique UNIQUE (dept_id),	
CONSTRAINT dept_key PRIMARY KEY (dept_id)	
);

CREATE TABLE salaries(
salary_id serial,
salary_per_annum numeric(10,2),	
CONSTRAINT salary_id_unique UNIQUE (salary_id),
CONSTRAINT salary_id_key PRIMARY KEY (salary_id)	
);

CREATE TABLE overtime(
overtime_id serial,
over_time_worked varchar(25),
CONSTRAINT overtime_id_unique UNIQUE (overtime_id),
CONSTRAINT overtime_id_key PRIMARY KEY (overtime_id)
);

CREATE TABLE title(
title_id serial,
title_name varchar(25),
CONSTRAINT title_id_unique UNIQUE (title_id),
CONSTRAINT title_id_key PRIMARY KEY (title_id)	
);

alter table employees
add column department integer references departments(dept_id);

alter table employees
add column salary integer references salaries(salary_id);

alter table employees
add column title integer references title(title_id)

alter table employees
add column overtime_hours_worked integer references overtime(overtime_id)

alter table employees
add column id serial PRIMARY KEY 

INSERT INTO employees (first_name, last_name, date_of_birth, gender, hire_date, email, id_number,department,salary,overtime_hours_worked,title)
VALUES
( 'Don','Smith','03-25-1987','M','02-16-2003','donsmith@gmail.com','02345535','dept_id','salary_id','overtime_id','title_id'),
( 'Ethan','Yeger','05-17-1983','M','06-26-2010','yegertheman@gmail.com','05436545','dept_id','salary_id','overtime_id','title_id'),
('Fin','Jackman','11-22-1990','M','07-29-2018','jackiboy@cloud.com','02334123'',dept_id','salary_id','overtime_id','title_id'),
('Lisa','Lee','06-18-1985','F','09-23-2005','LisaLeeAsian@gmail.com','02478694','dept_id','salary_id','overtime_id','title_id'),
('Ruby','Keys','09-16-1999','F','05-18-2020','Rubykiki@gmail.com','03472859','dept_id','salary_id','overtime_id','title_id'),
('Shara','Banks','12-25-1984','F','09-42-2013','BanksBabe@gmail.com','09843645','dept_id','salary_id','overtime_id','title_id');

INSERT INTO departments(department_name)
VALUES
('IT'),
('Engineering'),
('Accounting'),
('Human Resources'),
('Marketing'),
('Manegment');

INSERT INTO salaries(salary_per_annum)
VALUES
('102340'),
('85456'),
('55432'),
('65768'),
('43655'),
('73234');

INSERT INTO overtime(over_time_worked)
VALUES
('3 Hours'),
('5 Hours'),
('6 Hours'),
('2 Hours'),
('3 Hours'),
('10 Hours');

INSERT INTO title(title_name)
VALUES
('Software developer'),
('Senior Accountant'),
('Senior Engineer'),
('Director of HR'),
('Chief Markerting Officer'),
('C.E.O');

