# Ejercicio 7
/*Un video club que alquila películas en video almacena la información de sus películas
en alquiler en una tabla denominada "peliculas".*/

drop table if exists peliculas;

create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );
 
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',90,2);
  
#Seleccione las películas cuya duración no supere los 90 minutos:
 
 select * from peliculas where duracion <= 90;
 
#Seleccione todas las películas en las que el actor no sea 'Tom Cruise':

select * from peliculas where actor <> "Tom Cruise";

# Seleccione todas las películas de las que haya más de 2 copias:
 
 select * from peliculas where cantidad > 2;
 

 
 
  