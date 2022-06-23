--SQL_DDL
--First part.
--
--employees table
--
--Create the employees table
--- id. serial, primary key,
--- employee_name. Varchar(50), not null
--Populate the employee table with 70 rows.

create table "employees"
(id serial primary key,
employee_name Varchar(50) not null);
select * from employees;
insert into employees (id,employee_name)values
(1, 'Urbane'),
(2, 'Simon'),
(3, 'Penn'),
(4, 'Houston'),
(5, 'Vermont'),
(6, 'Selah'),
(7, 'Obadiah'),
(8, 'Nasir'),
(9, 'Yoshito'),
(10, 'Yoshiaki'),
(11, 'Muhammad'),
(12, 'Gibson'),
(13, 'Gilbert'),
(14, 'Orson'),
(15, 'Xavion'),
(16, 'Ben'),
(17, 'Orin'),
(18, 'Xever'),
(19, 'Ursel'),
(20, 'Hamza'),
(21, 'Oren'),
(22, 'Finley'),
(23, 'Clayton'),
(24, 'Rhys'),
(25, 'Stephen'),
(26, 'Leon'),
(27, 'Xandros'),
(28, 'Finlee'),
(29, 'Hakeem'),
(30, 'Vernen'),
(31, 'Mario'),
(32, 'Conner'),
(33, 'Adonis'),
(34, 'Weston'),
(35, 'Jaxon'),
(36, 'Malik'),
(37, 'Manuel'),
(38, 'Nicolas'),
(39, 'Maximus'),
(40, 'Jeremy'),
(41, 'Giancarlo'),
(42, 'Knox'),
(43, 'Graysen'),
(44, 'Javier'),
(45, 'Roland'),
(46, 'Xander'),
(47, 'Keith'),
(48, 'Brandon'),
(49, 'Braydon'),
(50, 'Neal'),
(51, 'Noble'),
(52, 'Marshall'),
(53, 'Connor'),
(54, 'Wilmer'),
(55, 'Branson'),
(56, 'Howard'),
(57, 'Damon'),
(58, 'Holland'),
(59, 'Omar'),
(60, 'Oakley'),
(61, 'Landyn'),
(62, 'Remington'),
(63, 'Harlow'),
(64, 'Nate'),
(65, 'Brian'),
(66, 'Sebastian'),
(67, 'Jasper'),
(68, 'Qi'),
(69, 'Valentin'),
(70, 'Quintan');

--salary table

--Create salary table
--- id. serial key,
--- monthly_salary. Int, not null
--Populate the salary table with 15 rows:

create table "salary"
(id serial primary key,
monthly_salary Int not null);
insert into salary (id, monthly_salary) values 
(1, 1000),
(2, 1100),
(3, 1200),
(4, 1300),
(5, 1400),
(6, 1500),
(7, 1600),
(8, 1700),
(9, 1800),
(10, 1900),
(11, 2000),
(12, 2100),
(13, 2200),
(14, 2300),
(15, 2400),
(16, 2500);

--employee_salary table
--
--Create table employee_salary
--- id. serial key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Populate the employee_salary table with 40 rows:
--- in 10 lines out of 40 insert non-existent employee_id

create table "employee_salary"
(id serial  primary key,
employee_id Int not null unique,
salary_id Int not null);
insert into employee_salary (id, employee_id, salary_id) values 
(1,1,1),
(2,2,2),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,5),
(7,7,7),
(8,8,8),
(9,9,9),
(10,10,10),
(11,11,11),
(12,12, 12),
(13,13, 13),
(14,14, 14),
(15,15,15),
(16,16,16),
(17,17, 1),
(18,18, 2),
(19,19,3),
(20,20, 4),
(21,21, 5),
(22,22, 6),
(23,23, 7),
(24,24, 8),
(25,25, 9),
(26,26, 10),
(27,27, 11),
(28,28, 12),
(29,29, 13),
(30,30, 14),
(31,71, 15),
(32,72, 16),
(33,73, 1),
(34,74, 2),
(35,75, 3),
(36,76, 4),
(37,77, 5),
(38,78, 6),
(39,79, 7),
(40,80, 8);

--roles table
----
--Create roles table
--- id. serial key,
--- role_name. int, not null, unique
--Change column type role_name from int to varchar(30)
--Populate the roles table with 20 rows:

create table "roles"
(id Serial  primary key,
role_name int not null unique);
alter table roles alter column role_name type varchar (30);
insert into roles (id, role_name) values 
(1, 'Junior Python developer'),
(2, 'Middle Python developer'),
(3, 'Senior Python developer'),
(4, 'Junior Java developer'),
(5, 'Middle Java developer'),
(6, 'Senior Java developer'),
(7, 'Junior JavaScript developer'),
(8, 'Middle JavaScript developer'),
(9, 'Senior JavaScript developer'),
(10, 'Junior Manual QA engineer'),
(11, 'Middle Manual QA engineer'),
(12, 'Senior Manual QA engineer'),
(13, 'Project Manager'),
(14, 'Designer'),
(15, 'HR'),
(16, 'CEO'),
(17, 'Sales manager'),
(18, 'Junior Automation QA engineer'),
(19, 'Middle Automation QA engineer'),
(20,'Senior Automation QA engineer');

--roles_employee table
--
--Create table roles_employee
--- id. serial key,
--- employee_id. Int, not null, unique (foreign key for employees table, id field)
--- role_id. Int, not null (foreign key for roles table, id field)
--Populate the roles_employee table with 40 rows:

create table "roles_employee"
(employee_id Int not null unique, 
foreign key (employee_id) references employees(id),
role_id Int not null,
foreign key (role_id) references roles (id));
select * from information_schema.tables;
