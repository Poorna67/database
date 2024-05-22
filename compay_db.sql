---------departments table---------
CREATE TABLE departments (
    dept_id int PRIMARY KEY,
    dept_name char(50)
);

------employee table----------
create table employee (
emp_id int , emp_name char(50), mobile_no numeric, department_id int, 
constraint fk_dept_id 
foreign key (department_id)
references departments(dept_id)
	on update cascade
);

----adding primary key------
ALTER TABLE employee ADD PRIMARY KEY (emp_id);

---project table---------
create table project (
	project_id int primary key, 
	project_name char(50),
	department_id int,
	employee_id int,
	constraint fk_department foreign key (department_id) references departments (dept_id) 
	on update cascade, 
	constraint fk_employee foreign key (employee_id) references employee (emp_id)
	on update cascade
	);

------insert queries------------
Insert into departments values 
(1, 'IT'),
(2, 'NonIt'),
(3, 'fin');

Insert into employee values
(123, 'praveen', 1234567890, 1 ),
(456, 'poorna', 7894561230, 3),
(124, 'lalith', 8521479630, 2),
(789, 'prabha', 7531594601, 2),
(852, 'subha', 7412369850, 1);


Insert into project values
(14, 'dmap', 1, 123),
(15, 'database', 1, 456),
(16, 'ipfm', 2, 123),
(17, 'java', 3, 124),
(19, 'python', 1, 852);


------disply table--------
select * from departments;

select * from employee;

select * from project;

----join tables-------
select * from departments d
join employee e 
on d.dept_id=e.department_id;


select p.project_id , p.project_name, d.dept_name 
from project p 
join departments d
on p.department_id= d.dept_id;














