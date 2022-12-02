# Ejercicio 12 ------------------------------------------------------------------------------------------------------------------
/*Trabaje con la tabla "agenda" que almacena los datos de sus amigos.

1- Elimine la tabla si existe.*/

drop table if exists agenda;

#2- Cree la tabla:
 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

#3- Visualice la estructura de la tabla "agenda" (describe).

describe agenda;

#4- Ingrese los siguientes registros (insert into):

 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Mores","Alberto","Colon 123","4234567");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Torres","Juan","Avellaneda 135","4458787");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Lopez","Mariana","Urquiza 333","4545454");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Lopez","Jose","Urquiza 333","4545454");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Peralta","Susana","Gral. Paz 1234","4123456");

#5- Modifique el registro cuyo nombre sea "Juan" por "Juan Jose"(update- where):
set sql_safe_updates = 0; 
update agenda set nombre ="Juan Jose" where nombre = "Juan";
select nombre, telefono from agenda;

#6- Actualice los registros cuyo número telefónico sea igual a '4545454' por '4445566':
update agenda set telefono = "4445566" where telefono = "4545454";
select telefono from agenda where telefono = "4445566"; # Deben aparecer 2 registros

#7- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por "Juan Jose"  
#(ningún registro afectado porque ninguno cumple con la condición del "where"):
update agenda set nombre ="Juan Jose" where nombre = "Juan";


# Ejercicio 13 ----------------------------------------------------------------------------------------------------------------

/*A) Trabaje con la tabla "libros" de una librería.

1- Elimine la tabla.*/

drop table if exists libros;

/*2- Créela con los siguientes campos: titulo (cadena de 20 caracteres de longitud), 
autor (cadena de 30), editorial (cadena de 15) y precio (float).*/

create table libros(

	titulo varchar (30), # Se utiliza 30 por que el ultimo libro tiene un titulo extenso
    autor varchar (30),
    editorial varchar (15),
    precio float

);

#3- Visualice la estructura de la tabla "libros".

describe libros;

/*4- Ingrese los siguientes registros:
 El aleph,Borges,Planeta,15.00;
 Martin Fierro,Jose Hernandez,Emece,25.50;
 Aprenda PHP,Mario Molina,Emece,25.00;
 Cervantes y el quijote,Borges,Paidos,25;
 Matematica estas ahi, Paenza, Paidos,40.80;*/
 
INSERT INTO libros (titulo,autor,editorial,precio) values ("El aleph","Borges","Planeta",15.00);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Martin Fierro","Jose Hernandez","Emece",25.50);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Aprenda PHP","Mario Molina","Emece",26.80);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Cervantes y el quijote","Borges","Paidos",45.50);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Matematica estas ahi","Paenza","Paidos",50.00);

#5- Muestre todos los registros.

select * from libros;

#6- Modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza".  (1 registro afectado)

update libros set autor = "Adrian Paenza" where autor = "Paenza"; 

#7- Nuevamente, modifique los registros cuyo autor sea igual  a "Paenza", por "Adrian Paenza". (ningún registro afectado).

update libros set autor = "Adrian Paenza" where autor = "Paenza"; 

#8- Actualice el precio del libro de "Mario Molina" a 27 pesos:

update libros set precio = 27 where autor = "Mario Molina";

#9- Actualice el valor del campo "editorial" por "Emece S.A.", para todos los registros cuya editorial sea igual a "Emece".

update libros set editorial = "Emece S.A" where editorial = "Emece";


#Ejercicio 14 -----------------------------------------------------------------------------------------------------------------

/*
B) Un comercio que vende artículos de computación registra los datos de sus artículos 
   en una tabla con ese nombre.

1- Elimine "articulos", si existe.
*/

drop table if exists articulos;

#2- Cree la tabla, con la siguiente estructura:
 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

#3- Vea la estructura de la tabla (describe).

describe articulos;

#4- Ingrese algunos registros:
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

#5- Actualice el precio a "400" del artículo cuya descripción sea "Epson Stylus C45":
select * from articulos;
 update articulos set precio = 400 where descripcion = "Epson Stylus C45";

#6- Actualice la cantidad a 100 de todas los teclados:
update articulos set cantidad = 100 where nombre = "teclado";

#7- Actualice la cantidad a 50 y el precio a 550 del artículo con código 2:
update articulos set cantidad = 50, precio = 550 where codigo = 2;

#8- Actualice la cantidad a 100 de todos los registros con cantidad=1000  
#(no hay registros que cumplan la condición, ningún registro afectado):
update articulos set cantidad = 100 where cantidad = 1000;
