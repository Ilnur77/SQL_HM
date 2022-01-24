--1.Таблица employees
 
--1.1)Создать таблицу employees
      
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

select * from employees;

--1.2)Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
values ('Salvador Vaughn'), ('Margaret Graham'), ('Raul Allen'),
		('Regina Hawkins'), ('Frank Lewis'), ('Esther Taylor'),
		('Patricia Johnson'), ('Lynn Foster'), ('James Johnson'),
		('Sharon Bates'), ('Irene Palmer'), ('Guy Reeves'),
		('Carl Stewart'), ('Matthew Schwartz'), ('Christopher Hicks'),
		('James Moore'), ('Louise Johnson'), ('Jose Thompson'),
		('Ruth Holland'),('Gladys Long'),('Susan Williams'),
		('Lynn Moreno'),('Rachel Jones'),('Melinda Wolfe'),
		('Patrick Cannon'),('Jeanette Carter'),('Michael Garcia'),
		('Stephen Coleman'),('Judith Brown'),('Gloria Hines'),
		('William Gibson'),('Dale Brooks'),('Gloria Davis'),
		('Sharon Miller'),('Herman Dean'),('Mary Burton'),
		('Jorge Boyd'),('Carol Clark'),('Susan Barnes'),
		('Lorraine Gill'),('Holly Higgins'),('Edgar Smith'),
		('Courtney Powell'),('Patrick Knight'),('Dorothy Black'),
		('Amanda Thompson'),('Elaine Walker'),('Alice Doyle'),
		('Brett Mendez'),('Cynthia Walker'),('Richard Garcia'),
		('Larry Wright'),('Jamie Foster'),('Andrew Rodriguez'),
		('Brian Clark'),('Misty Roberts'),('Melissa White'),
		('Jose Robinson'),('Ernest Kim'),('Patricia Green'),
		('Michael Rodgers'),('Ann Robinson'),('Sharon Lopez'),
		('Jennifer Hudson'),('Lorraine Johnson'),('Maria Jimenez'),
		('Jerry Robertson'),('Peter Murphy'),('Kenneth Smith'),
		('William Webb');
	
--2.Таблица salary

	--2.1)Создать таблицу salary
create table salary(	
id serial  primary key,
monthly_salary Int not null
);
		
	--2.2)Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),(1100),(1200),
	   (1300),(1400),(1500),
	   (1600),(1700),(1800),
	   (1900),(2000),(2100),
       (2200),(2300),(2400);

select * from salary;

 --3.Таблица employee_salary

	--3.1)Создать таблицу employee_salary
create table employee_salary(
id serial  primary key,
employee_id Int unique not null, 
salary_id Int not null
);

select * from employee_salary; 

--3.2)Наполнить таблицу employee_salary 40 строками:
   --в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (71,3), (75,8), (81,8),(86,1), (92,11),
		(97,4), (111,2), (117,4), (122,13), (132,8),
	(1,1), (2,14), (3,11), (4,12), (5,9),
	(6,14), (7,12), (8,1), (9,15), (10,12),
	(11,5), (12,12), (13,8), (14,12), (15,13), 
	(16,4), (17,7), (18,8), (19,5), (20,1), 
	(21,9),(22,13), (23,7), (24,6), (25,1), 
	(26,13), (27,2),(28,8), (29,7), (30,7);

select * from employee_salary;

-- 4.Таблица roles

   --4.1)Создать таблицу roles

create table roles (
id serial  primary key,
role_name int unique not null
);

select * from roles;
   
	--4.2)Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(30);

--4.3)Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

--5.Таблица roles_employee

	--5.1)Создать таблицу roles_employee

create table roles_employee(
id serial  primary key,
employee_id Int not null unique, --(внешний ключ для таблицы employees, поле id)
role_id Int not null, --(внешний ключ для таблицы roles, поле id)
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

select * from roles_employee;

	--5.2)Наполнить таблицу roles_employee 40 строками

insert into roles_employee(employee_id, role_id)
values (1,5),(2,16),(3,11),(4,16),(5,3),
(6,3),(7,13),(8,2),(9,4),(10,15),
(11,2),(12,7),(13,17),(14,17),(15,6),
(16,6),(17,3),(18,7),(19,13),(20,7),
(21,13),(22,16),
(23,1),(24,3),
(25,2),(26,17),
(27,16),(28,10),
(29,14),(30,6),
(31,17),(32,14),
(33,2),(34,11),
(35,15),(36,5),
(37,2),(38,14),
(39,19),(40,2);

select * from roles_employee;
