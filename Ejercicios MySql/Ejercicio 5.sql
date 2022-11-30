 #Un videoclub que alquila películas en video almacena la información de sus películas en una tabla
 #llamada "peliculas"; para cada película necesita los siguientes datos:
 #-nombre, cadena de caracteres de 20 de longitud,
 #-actor, cadena de caracteres de 20 de longitud,
 #-duración, valor numérico entero.
 #-cantidad de copias: valor entero.
 
 create table peliculas(
 nombre varchar(20),
 actor varchar(20),
 duracion int,
 copias int
 );
# Ver estructura de la tabla peliculas

 describe peliculas;
 
 #Ingresando Registros
 
 insert into peliculas (nombre, actor, duracion, copias)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (nombre, actor, duracion, copias)
  values ('Mision imposible 2','Tom Cruise',180,2);
 insert into peliculas (nombre, actor, duracion, copias)
  values ('Mujer bonita','Julia R.',90,3);
 insert into peliculas (nombre, actor, duracion, copias)
  values ('Elsa y Fred','China Zorrilla',90,2);
  
  #Consultar solo peliculas de Tom Cruise
  
  select * from peliculas WHERE actor = "Tom Cruise";
 