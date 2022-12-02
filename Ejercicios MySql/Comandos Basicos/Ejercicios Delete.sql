#Funcion delete
#Ejercicio 9

drop table if exists agenda;

create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );
 
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Mores","Alberto","Colon 123","4234567");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Torres","Juan","Avellaneda 135","4458787");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Lopez","Mariana","Urquiza 333","4545454");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Lopez","Jose","Urquiza 333","4545454");
 INSERT INTO agenda (apellido,nombre,domicilio,telefono) values ("Peralta","Susana","Gral. Paz 1234","4123456");
 
 # Elimine el registro cuyo nombre sea 'Juan'(delete - where).
 
 select nombre from agenda;
 # Se utiliza el comando set sql_safe_updates=0 para desactivar la obligacion de poner un dato primary key en el where
 set SQL_SAFE_UPDATES = 0;
 
 #Ahora si podemos eliminar cualquier tabla sin el comando where y sin una llave primaria de la tabla
 delete from agenda where nombre = "Juan";
 
 #Elimine los registros cuyo número telefónico sea igual a '4545454'.
 
 delete from agenda where telefono = "4545454";
 
 #Volvemos a implementar el comando sql_safe_updates con el valor de 1 para restablecer el respaldo
 
 set sql_safe_updates = 1 ;
 
 
 # Ejercicio 10 ------------------------------------------------------------------------------------------------------------
 
/*A) Trabaje con la tabla "libros" en la cual almacena la información de sus libros una librería.

1- Elimine la tabla.

2- Créela con los siguientes campos: titulo (cadena de 20 caracteres de longitud), 
autor (cadena de 30), editorial (cadena de 15) y precio (float).
*/

drop table if exists libros;

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
 Aprenda PHP,Mario Molina,Emece,26.80;
 Cervantes y el quijote,Borges,Paidos,45.50;
 Matematica estas ahi, Paenza, Paidos,50.00;
*/

INSERT INTO libros (titulo,autor,editorial,precio) values ("El aleph","Borges","Planeta",15.00);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Martin Fierro","Jose Hernandez","Emece",25.50);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Aprenda PHP","Mario Molina","Emece",26.80);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Cervantes y el quijote","Borges","Paidos",45.50);
INSERT INTO libros (titulo,autor,editorial,precio) values ("Matematica estas ahi","Paenza","Paidos",50.00);

#5- Muestre todos los registros.
select * from libros;

#6- Elimine los registros cuyo autor sea igual a 'Paenza'. (1 registro eliminado)

set sql_safe_updates = 0;
delete from libros where autor = "Paenza";

# 7- Nuevamente, elimine los registros cuyo autor sea igual a 'Paenza'. (ningún registro afectado)
delete from libros where autor = "Paenza";

#8- Borre los registros cuyo precio sea menor a 20.(<20).
delete from libros where precio < 20;

#9- Borre los registros que cuyo precio sea mayor o igual a 40 pesos. (>=).
delete from libros where precio >= 40;

#10- Elimine todos los registros de la tabla.*/
delete from libros;

/* Ejercicio 11 -------------------------------------------------------------------------------------------------------------
B) Un comercio que vende artículos de computación registra los datos de sus artículos 
en una tabla con ese nombre.

1- Elimine "articulos", si existe.*/

drop table if exists articulos;

/*2- Cree la tabla, con la siguiente estructura:
 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );*/
 
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

#5- Seleccione todos los registros de la tabla.

select * from articulos;

#6- Elimine los artículos cuyo precio sea mayor o igual a 500.

delete from articulos where precio >= 500;

#7- Elimine todas las impresoras.

delete from articulos where nombre = "impresora";

#8- Elimine todos los artículos cuyo código sea diferente a 4.

delete from articulos where codigo = 4;

set sql_safe_updates = 1;

