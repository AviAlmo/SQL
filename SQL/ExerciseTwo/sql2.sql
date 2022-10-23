create table department_q2 (
code_department int(2) primary key ,
name_department text(30) not null ,
budget real 
);
create table employees_q2 (
ssn_employees int(9) primary key ,
name_employees text(30) not null ,
lastName_employees text(30) not null, 
id_department int(2) ,
constraint fk_department foreign key (id_department) references department_q2(code_department)
);

insert into department_q2 
values 
(14,'IT',65000),
(37,'Accounting',15000),
(59,'Human Resources',240000),
(77,'Research',55000);

insert into employees_q2 
values 
(123234877,'Michael','Rogers',14),
(152934485,'Andan','Manikutty',14),
(222364883,'Carol ','Smith',37),
(326587417,'Joe','Stevens',37),
(332154719,'Mary-Anne','Foster',14),
(332569843,'George','Donnell',77),
(546523478,'John','Doe',59),
(631231482,'David','Smith',77),
(654873219,'Zacary','Efron',59),
(745685214,'Eric','Goldsmith',59),
(845657245,'Elizabeth','Doe',14),
(845657246,'Kumar','Swamy',14);

select lastName_employees 
from employees_q2 ; 

select distinct lastName_employees 
from employees_q2  ; 

select  *
from employees_q2 
where lastName_employees = 'smith'; 

select  *
from employees_q2 
where lastName_employees = 'smith' or lastName_employees = 'doe' ; 

select  *
from employees_q2 
where id_department = 14 ; 

select  *
from employees_q2 
where id_department = 37 or id_department = 77 ; 

select lastName_employees 
from employees_q2 
where lastName_employees like 's%'; 

select sum(budget) as 'all budgets departments'
from department_q2 ; 

select code_department,count(name_employees) as 'number employees'
from department_q2 , employees_q2 
where employees_q2.id_department = department_q2.code_department
group by code_department;

select *  
from department_q2 , employees_q2 ; 

select name_employees,lastName_employees,name_department,budget
from  employees_q2 ,department_q2 
where employees_q2.id_department = department_q2.code_department;  

select name_employees,lastName_employees,name_department,budget
from  employees_q2 ,department_q2 
where employees_q2.id_department = department_q2.code_department and budget > 60000;  

select *
from department_q2
where budget >(
select avg(budget)
from department_q2
);

select name_department 
from department_q2 , employees_q2
where department_q2.code_department =  employees_q2.id_department 
group by id_department 
having count(name_employees) >2; 

select name_employees,lastName_employees ,min(budget)
from department_q2 , employees_q2 
group by ssn_employees
having min(budget)
limit  2;

insert into department_q2 
values ( 11,'Quality Assurance',40000);

insert into employees_q2
values ( 847219811,'Mary ',' Moore',11);

update department_q2 
set budget = budget - (budget * 0.10); 

update employees_q2 
set code_department = 14
where code_department = 77; 

delete from employees_q2
where code_department = 14; 

delete from employees_q2 
where department_q2 in (
select code_department from department_q2 
where budget >=60000
); 

delete from employees_q2 ; 
