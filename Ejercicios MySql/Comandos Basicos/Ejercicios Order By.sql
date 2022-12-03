/*Ejercicio 15 ----------------------------------------------------------------------------------------------------------------
Trabaje con la tabla llamada "medicamentos" que almacena la información de los productos que vende 
una farmacia.

1- Elimine la tabla, si existe.*/

drop table if exists medicamentos;

#2- Cree la tabla con la siguiente estructura:
 create table medicamentos(
  codigo int unsigned auto_increment,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad int unsigned,
  primary key(codigo)
 );

#3- Visualice la estructura de la tabla "medicamentos".

describe medicamentos;

#4- Ingrese los siguientes registros (insert into):
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal jarabe','Bayer',5.10,250); 

#5- Ordene los registros por precio, de mayor a menor.

	select precio from medicamentos order by precio desc;

#6- Ordene los medicamentos por número del campo "cantidad".

select cantidad from medicamentos order by cantidad desc;

#7- Ordene los registros por "laboratorio" (descendente) y cantidad (ascendente).

select laboratorio as Laboratorio , cantidad as Cantidad from medicamentos order by laboratorio desc, cantidad asc; 


/*Ejercicio 16 ----------------------------------------------------------------------------------------------------------------
A) Trabaje con la tabla "peliculas" que guarda información de películas de video en alquiler.

1- Elimine la tabla, si existe.

2- Créela con la siguiente estructura:
 -codigo (entero, sin signo, autoincrementable),
 -titulo (cadena de 40),
 -actor (cadena de 20),
 -duracion (integer sin signo, máximo valor 200 aprox.),
 -clave primaria (codigo).*/
 
 drop table if exists peliculas;
 
 create table peliculas (
	codigo integer unsigned auto_increment,
    titulo varchar (40),
    actor varchar (20),
    duracion integer (200) unsigned,
    primary key (codigo)
 
 );
 

#3- Visualice la estructura de la tabla "peliculas".

describe peliculas;

#4- Ingrese los siguientes registros:
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Mujer bonita','Richard Gere',120);
 insert into peliculas (titulo,actor,duracion)
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo,actor,duracion)
  values('Un oso rojo','Julio Chavez',100);

#5- Ordene los registros por el campo "actor".
select codigo from peliculas;

select actor from peliculas order by actor;


#6- Muestre las películas ordenadas por la duración, de mayor a menor.
select duracion from peliculas order by duracion desc;


/*Ejercicio 17 ----------------------------------------------------------------------------------------------------------------

B) En una página web se solicitan los siguientes datos para guardar información de sus visitas.

1- Elimine la tabla "visitas", si existe.*/
#2- Créela con la siguiente estructura:

drop table if exists visitas;

 create table visitas (
  numero int unsigned auto_increment,
  nombre varchar(30) not null,
  mail varchar(50),
  pais varchar (20),
  fecha date,
  primary key(numero)
);

#3- Ingrese algunos registros:
 insert into visitas (nombre,mail,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','2006-10-10');
 insert into visitas (nombre,mail,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','2006-10-10');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-10-11');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-10-12');
 insert into visitas (nombre,mail,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','2006-09-12');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-12');
 insert into visitas (nombre,mail,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','2006-09-15');

#4- Ordene los registros por fecha, en orden descendente:
select * from visitas order by  fecha desc;

#5- Ordene por nombre en forma ascendente y fecha en orden descendente:
 
 select nombre , fecha from visitas order by nombre asc, fecha desc;