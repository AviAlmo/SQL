create table scientists_q4 (
ssn int(9) primary key,
name_scientists text(40) not null 
); 
create table projects_q4 (
code_pro varchar (4) not null primary key,
name_pro text(40) not null  ,
hours_pro int not null 
); 
create table assigneto_q4 (
scientists  int(9) ,
code__pro varchar(9) ,
primary key(scientists, code__pro),
constraint fk_projects foreign key  assigneto_q4(code__pro)
references projects_q4(code_pro),
constraint fk_scientists foreign key assigneto_q4(scientists)
references scientists_q4(ssn)
); 

INSERT INTO scientists_q4
VALUES
(123234877,'Michael Rogers'),
(152934485,'Anand Manikutty'),
(222364883, 'Carol Smith'),
(326587417,'Joe Stevens'),
(332154719,'Mary-Anne Foster'),	
(332569843,'George ODonnell'),
(546523478,'John Doe'),
(631231482,'David Smith'),
(654873219,'Zacary Efron'),
(745685214,'Eric Goldsmith'),
(845657245,'Elizabeth Doe'),
(845657246,'Kumar Swamy');

INSERT INTO projects_q4 
VALUES 
   ('AeH1','Winds: Studying Bernoullis Principle', 156),
   ('AeH2','Aerodynamics and Bridge Design',189),
   ('AeH3','Aerodynamics and Gas Mileage', 256),
   ('AeH4','Aerodynamics and Ice Hockey', 789),
   ('AeH5','Aerodynamics of a Football', 98),
   ('AeH6','Aerodynamics of Air Hockey',89),
   ('Ast1','A Matter of Time',112),
   ('Ast2','A Puzzling Parallax', 299),
   ('Ast3','Build Your Own Telescope', 6546),
   ('Bte1','Juicy: Extracting Apple Juice with Pectinase', 321),
   ('Bte2','A Magnetic Primer Designer', 9684),
   ('Bte3','Bacterial Transformation Efficiency', 321),
   ('Che1','A Silver-Cleaning Battery', 545),
   ('Che2','A Soluble Separation Solution', 778);
   
INSERT INTO assigneto_q4
VALUES 
(123234877,'AeH1'),
(152934485,'AeH3'),
(222364883,'Ast3'),	   
(326587417,'Ast3'),
(332154719,'Bte1'),
(546523478,'Che1'),
(631231482,'Ast3'),
(654873219,'Che1'),
(745685214,'AeH3'),
(845657245,'Ast1'),
(845657246,'Ast2'),
(332569843,'AeH4');

select scientists_q4.name_scientists , projects_q4.name_pro,hours_pro
from scientists_q4 , projects_q4 , assigneto_q4
where scientists_q4.ssn = assigneto_q4.scientists and projects_q4.code_pro = assigneto_q4.code__pro  
group by scientists_q4.name_scientists 
order by projects_q4.name_pro asc , scientists_q4.name_scientists asc
;
select DISTINCT projects_q4.name_pro 
from projects_q4 
where  projects_q4.code_pro not in  (
select assigneto_q4.code__pro 
from assigneto_q4 ) ; 

