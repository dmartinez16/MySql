/* Ejercicio 18 -----------------------------------------------------------------------------------------------------------------

1- Elimine la tabla, si existe.

#2- Cree la tabla con la siguiente estructura:*/

drop table if exists medicamentos;

 create table medicamentos(
  codigo int unsigned auto_increment,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad int unsigned,
  primary key(codigo)
 );

#3- Visualice la estructura de la tabla "medicamentos".

describe medicamentos ;

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

#5- Recupere los códigos y nombres de los medicamentos cuyo laboratorio sea 'Roche' y cuyo precio sea menor a 5:
 select codigo as Codigos , nombre as Nombres from medicamentos where laboratorio = "Roche" and precio <5;
 
 select * from medicamentos order by laboratorio asc;
#Quedó seleccionado 1 registro, es el único que cumple con ambas condiciones.

#6- Recupere los medicamentos cuyo laboratorio sea 'Roche' o cuyo precio sea menor a 5:

select * from medicamentos where laboratorio = "Roche" xor precio < 5;

/*Note que la salida es diferente, hemos cambiado el operador de la sentencia anterior. Ahora se 
recuperaron todos los registros cuyo laboratorio es igual a 'Roche' y todos los registros cuyo 
precio es menor a 5. Aquellos registros que no cumplieron con la condición 1 (no son de "Roche") ni 
con la condicion2 (no cuestan menos de 5) no aparecen.*/

#7- Muestre todos los registros que no sean de "Bayer" usando el operador "not".
select * from medicamentos where NOT (laboratorio = "Bayer");

#8- Muestre todos los medicamentos cuyo laboratorio NO sea "Bayer" y cuya cantidad sea=100:
 select * from medicamentos where NOT (laboratorio = "Bayer") and cantidad = 100;

#9- Muestre todos los medicamentos cuyo laboratorio sea "Bayer" y cuya cantidad NO sea=100:
  select * from medicamentos where NOT (laboratorio = "Bayer") and NOT (cantidad = 100);
#Analice estas 2 últimas sentencias. El operador "not" afecta a la condición a la cual antecede, no 
#a las siguientes. Los resultados de estas 2 sentencias son diferentes.

#10- Elimine todos los registros cuyo laboratorio sea igual a "Bayer" y su precio sea mayor a 10:
set sql_Safe_updates = 0;
 delete from medicamentos where (laboratorio = "Bayer") and (precio >10) ;
 
#Sólo 1 registro debe ser eliminado, el que cumple con ambas condiciones.

#11- Cambie la cantidad por 200, a todos los medicamentos de "Roche" cuyo precio sea mayor a 5:
 update medicamentos set cantidad = 200  where (laboratorio = "Roche") and (precio > 5);
#Un solo registro fue actualizado porque sólo uno cumplió con las condiciones especificadas.


/*12- Borre los medicamentos cuyo laboratorio sea "Bayer" o cuyo precio sea menor a 3. Antes veamos 
cuáles cumplen con la condición, los registros 5 y 6 son de "Bayer, cumplen con la primera 
condición, los registros 4 y 5 cumplen con la segunda condición, es decir, se borrarán 3 registros: 

*/

delete from medicamentos where (laboratorio = "Bayer") or (precio < 3); 
select * from medicamentos;

# Ejercicio 19 ----------------------------------------------------------------------------------------------------------------
/*
A) Trabajamos con la tabla "peliculas" de un video club que alquila películas en video.

1- Elimine la tabla, si existe.

2- Créela con la siguiente estructura:
 -codigo (entero sin signo, autoincrementable),
 -titulo (cadena de 30),
 -actor (cadena de 20),
 -duracion (entero sin signo no mayor a 200),
 -clave primaria (codigo).
*/

drop table if exists peliculas;

create table peliculas(

	codigo integer unsigned auto_increment,
    titulo varchar (50),
    actor varchar (30),
    duracion integer (200) unsigned,
    primary key (codigo)

);

#3- Ingrese los siguientes registros:
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
 insert into peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',110);

#4- Recupere los registros cuyo actor sea "Tom Cruise" or "Richard Gere". (3 registros).
select * from peliculas;

select * from peliculas where (actor = "Tom Cruise")  or  (actor = "Richard Gere");

#5- Recupere los registros cuyo actor sea "Tom Cruise" y "Richard Gere". 
select * from peliculas where (actor = "Tom Cruise")  and  (actor = "Richard Gere");

#6- Cambie la duración a 200, de las películas cuyo actor sea "Daniel R." y cuya duración sea 180. 
update peliculas set duracion = 200 where (actor = "Daniel R.") and (duracion = 180);
select * from peliculas;

#8- Borre todas las películas donde el actor NO sea "Tom Cruise" y cuya duración sea mayor o igual a  100
delete from peliculas where not (actor = "Tom Cruise") and (duracion >=100);


# Ejercicio 20 ---------------------------------------------------------------------------------------------------------------

/*
B) En una página web se solicitan los siguientes datos para guardar información de sus visitas:
 nombre, mail, pais.

1- Elimine la tabla "visitas", si existe.

2- Créela con la siguiente estructura:*/

drop table if exists visitas;

 create table visitas (
  numero int unsigned auto_increment,
  nombre varchar(30) not null,
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

#3- Ingrese algunos registros:
 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

#4- Muestre los datos de las visitas de "Argentina" que hayan ingresado después del mes de  septiembre (9):
 select * from visitas where pais = ("Argentina") and ( month(fecha) > 9);

#5- Elimine todos los registros cuyo pais no sea "Mexico" y que hayan visitado la página antes de  las 16 hs.:

delete from visitas where (pais <> "Mexico") and (hour(fecha)<16);
select * from visitas;