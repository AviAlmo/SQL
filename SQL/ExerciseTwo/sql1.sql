create database exerciseTwo ; 

create table Manufacturers_q1 (
Code_Manufactuer integer primary key, 
Name_Manufactuer text (255) not null 
);
create table Products_q1 (
Code_Product integer primary key, 
Name_Product text (255) not null,
price_Product real not null, 
Manufacturer integer ,
CONSTRAINT FK_Manufacturers_q1 FOREIGN KEY (Manufacturer)
REFERENCES Manufacturers_q1(Code_Manufactuer) 
); 

insert into Manufacturers_q1 
values (1,'sony'),
(2,'Crative labs') ,
(3,'Hewlett-Packard'),
(4,'lomefa'),
(5,'Fujisu') ,
(6,'Winchester'); 

insert into Products_q1 
values (1,'Hard drive' ,240,'5'),
 (2,'Memory', 120, 6),
 (3, 'Zip drive', 150, 4),
 (4,'Floppy disk',5,6),
 (5,'Moitor',240,1),
 (6,'DVD drive' ,180 ,2) , 
 (7, 'CD drive',90 , 2),
 (8,'Printer' ,270 , 3),
 (9,'Toner Cartage' ,66 ,3 ),
 (10,'DVD burner' ,180 , 2);

select * from Products_q1;


 
select Name_Product 
from Products_q1; 
 
select Name_Product 
from Products_q1 
where price_Product <= 200; 

select Name_Product 
from Products_q1 
where price_Product between 60 and 120; 

select Name_Product , price_Product*100 
AS price_cents_Product 
from Products_q1; 

select avg(price_Product) 
from Products_q1 ; 

select avg(price_Product) 
from Products_q1 
where Manufacturer = 2 ; 

select Name_Product , price_Product
from Products_q1 
where price_Product >= 180 
order by  price_Product  and   Name_Product desc  ; 

select *
from products_q1 , Manufacturers_q1 
where products_q1.Manufacturer = Manufacturers_q1.Code_Manufactuer; 

Select Name_Product , price_Product , Name_Manufactuer
from  products_q1 , Manufacturers_q1
where products_q1.Manufacturer = Manufacturers_q1.code_Manufactuer; 
  
select avg(price_Product), Manufacturer
from products_q1 
group by Manufacturer;
  
select avg(price_Product) as average, Name_Manufactuer
from products_q1 , Manufacturers_q1
where products_q1.Manufacturer = Manufacturers_q1.code_Manufactuer
group by Name_Manufactuer;

select avg(price_Product) , Name_Manufactuer
from products_q1 , Manufacturers_q1
where products_q1.Manufacturer = Manufacturers_q1.code_Manufactuer    
group by Name_Manufactuer  
having avg(price_Product) >= 150;

select min(price_Product) as the_cheapest , Name_Product 
from  products_q1;
 
select max(price_Product) as the_expensive_price , name_manufactuer 
from products_q1 , Manufacturers_q1 
where products_q1.Manufacturer = Manufacturers_q1.code_Manufactuer ; 

select avg(price_Product) as avarage, Name_Manufactuer 
from products_q1 , Manufacturers_q1 
where products_q1.Manufacturer = Manufacturers_q1.code_Manufactuer 
group by Manufacturer
having avg(price_Product) > 145  and COUNT( Manufacturer)>= 2 ; 

insert into products_q1 
value (11,'Loudspeakers',70,2);

update  products_q1
set Name_Product = 'Laser Printer' 
where Code_Product = 8 ;

update products_q1
set price_Product = price_Product - ( price_Product * 0.1)  
;
