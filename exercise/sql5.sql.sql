/*Q1
*/
select customer_id, First_name,  Last_name, email, city 
from sales.customers 
where state = 'CA'
order by zip_code;

/*Q2
*/
select first.customer_id, first.First_name,  first.Last_name, first.email, first.city 
from( select * , concat(First_name, " " , Last_name) as fullName 
		from sales.customers
		order by fullName desc ) as first
 where first.state in ('CA' , 'NY')
 limit 8 ;

/*Q3
*/
SELECT  city , COUNT(Customer_id) as CustomerNum 
FROM sales.customers
where state in ('CA' , 'NY')
GROUP BY city;

/*Q4*/
SELECT  city , COUNT(Customer_id) as CustomerNum 
FROM sales.customers
where state in ('CA' , 'NY') 
GROUP BY city
having CustomerNum > 10;

/*Q5*/ 

select product_name , list_price
from production.products
order by list_price desc
limit 10;

/*q6 */
select *
from production.products
where list_price between 149.99 and 199.99;

/*q7 */
select product_id, product_name, list_price
from production.products
where production.list_price(149.99, 199.99);

/*q8*/
select orders.*
from orders
where order_date between '2017-06-15' and '2017-06-17' ;

/*Q9*/
SELECT *
FROM sales.customers 
WHERE last_Name LIKE '%er';

/*Q10*/
SELECT *
FROM sales.customers 
WHERE last_Name LIKE 'Y%' OR last_Name LIKE 'Z%'; 

/*Q11*/
SELECT * 
FROM sales.customers  
WHERE last_Name between 'A%' AND 'D%' ; 

/*Q12*/ 
/*A*/ 
create database hr ; 

/*B*/ 
create table hr.candidates ( 
id INT AUTO_INCREMENT PRIMARY KEY , 
fullname VARCHAR(100) NOT NULL
) ;

create table hr.employees (
id INT AUTO_INCREMENT PRIMARY KEY ,
fullname VARCHAR(100) NOT NULL
) ; 
/*C*/ 
insert into hr.candidates (fullname)VALUES ('John Doe');
insert into hr.candidates (fullname)VALUES ('Lily Bush');
insert into hr.candidates (fullname)VALUES ('Peter Drucker');
insert into hr.candidates (fullname)VALUES ('Jane Doe');

insert into hr.employees (fullname) VALUES ('John Doe');
insert into hr.employees (fullname) VALUES ('Jane Doe');
insert into hr.employees (fullname) VALUES ('Michael Scott');
insert into hr.employees (fullname) VALUES ('Jack Sparrow');

/*D*/ 
select   candidates.* 
from  employees ,candidates
where candidates.fullname = employees.fullname;

/*E*/ 
select   candidates.*  ,employees.*
from  employees ,candidates
where candidates.fullname = employees.fullname;

/*F*/ 
select   candidates.* 
from candidates 
where candidates.fullname not in (select employees.fullname 
								  from employees );

/*G*/ 
SELECT  employees.fullname FROM employees 
UNION distinct
SELECT  candidates.fullname FROM candidates ;
    
    
 /*H*/ 
select employees.* 
from employees 
where employees.fullname   NOT in (select candidates.fullname 
							  from candidates);
/*I*/ 
SELECT employees.*  
FROM employees 
where employees.fullname  NOT in (select candidates.fullname 
								  from candidates )
UNION
SELECT candidates.* 
FROM candidates 
where candidates.fullname not in (select employees.fullname 
								  from employees );    
     
/*13*/ 
SELECT p.category_id  , product_name, category_name,brand_name,list_price
FROM  production.products p
INNER JOIN production.brands c ON c.brand_id = p.brand_id
INNER JOIN production.categories b ON b.category_id  = p.category_id
ORDER BY  p.Category_id DESC;
/* The func return product name ,category name ,brand name and the price . 
ordered by category id value, highest to lowest*/

/*A*/ 
      
SELECT   product_name, category_name,brand_name,list_price
FROM  production.products p
INNER JOIN production.brands c ON c.category_id = p.brand_id
INNER JOIN production.categories b ON b.product_id = p.brand_id 
ORDER BY  Category_id DESC;
       
/*14*/ 
SELECT customers.*  
 from (select city ,  count(customers.customer_id) as Num_of_cus
					  from sales.customers 
					  group by city 
					  having  Num_of_cus > 1) as first , sales.customers 
where customers.city = first.city ; 

/*15*/ 
select brands.*
from brands 
where brands.brand_name in ('Trek','Strider');

/*16*/ 
SELECT p.product_name  
from production.products as p  
inner join categories as c 
on c.category_id = p.category_id 
where c.category_id in (6 ,7);

/*17*/ 
SELECT products.*
 from (select * , avg(list_price) as avarege
	  from production.products
      where products.product_name like ('%Trek%') or products.product_name like ('%Strider%')) as first ,production.products  
where products.list_price > first.avarege ; 


/*q18*/
select customers.*
from customers, (select orders.*
				 from  orders
				 where orders.order_date LIKE '%2017%') AS FIRST 
where customers.customer_id = FIRST.customer_id 
group by customers.customer_id;

/*q19*/

SELECT avg(list_price) 'Average of the sum oreders'
FROM order_items;


/*q20 */
SELECT  customers.First_name as 'customers first name'  , customers.Last_name 'customers last name' , first.First_name as 'staffs first name' , first.Last_name as 'staffs first name'
FROM customers , ( select  staffs.First_name , staffs.Last_name 
					from staffs 
					order by staffs.First_name  and staffs.Last_name ) as first
order by  customers.First_name and customers.Last_name ;

select staffs.First_name , staffs.Last_name 
from staffs 
UNION
select customers.First_name , customers.Last_name 
from customers 
order by First_name  and Last_name ;


/*22
the manger reports to the staff becose  it's 1 to many  */ 



