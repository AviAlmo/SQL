CREATE TABLE providers_q3(
code_providers varchar (50) primary key,
name_providers text (30));

CREATE TABLE pieces_q3(
  code_piecs INT primary key,
  name_piecs text (30));

CREATE TABLE provides_q3(
piece INT,
provider varchar (50),
price INT not null, 
primary key(piece, provider),
constraint fk_provider foreign key provides_q3(provider) references  providers_q3(code_providers),
constraint fk_piece  foreign key provides_q3(piece) references  pieces_q3(code_piecs));

INSERT INTO pieces_q3 VALUES
(1,'Sprocket'),
(2,'Screw'),
(3,'Nut'),
(4,'Bolt'); 

INSERT INTO providers_q3 VALUES
('HAL','Clarke Enterprises'),
('RBT', 'Susan Calvin Corp'),
('TNBC', 'Skellington Supplies');

insert into  provides_q3 values 
(1,'HAL',10),
(1,'RBT',15),
(2,'HAL',20),
(2,'RBT',15),
(2,'TNBC',14),
(3,'RBT',50),
(3,'TNBC',45), 
(4,'HAL',5),
(4,'RBT',7);

   select name_piecs
   from pieces_q3;
   
   select * 
   from providers_q3; 
   
    select piece, avg(price) 
	from provides_q3 
    group by piece;
    
   select name_providers 
   from providers_q3
   where code_providers in (
   select  provider 
   from provides_q3 
   where piece = 1
);

   select name_piecs 
   from pieces_q3
   where code_piecs in (
   select piece 
   from provides_q3
   where provider = 'HAL'
);

 select pieces_q3.name_piecs, providers_q3.name_providers, Price
  FROM pieces_q3
		INNER JOIN provides_q3 ON pieces_q3.code_piecs = piece
		INNER JOIN providers_q3 ON providers_q3.code_providers = provider
  WHERE price =
  (
    SELECT MAX(price) 
    FROM provides_q3
    WHERE piece = pieces_q3.code_piecs
  );
  
INSERT INTO provides_q3
 VALUES (1, 'TNBC', 7);

 UPDATE provides_q3
 SET price = price + 1;  

 DELETE FROM provides_q3 
 WHERE provider = 'RBT' AND Piece = 4;

 DELETE FROM provides_q3
WHERE provider = 'RBT';





