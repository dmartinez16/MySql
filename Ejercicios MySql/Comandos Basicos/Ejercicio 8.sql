 #Ejercicio 8 Trabaje con la tabla "agenda" en la que registra los datos de sus amigos.
 
 /*Cree la tabla, con los siguientes campos: apellido (cadena de 30), nombre (cadena de 20),
 domicilio (cadena de 30) y telefono (cadena de 11).*/
 
 drop table if exists agenda;
 
 create table agenda(
 
	nombre varchar(20),
    apellido varchar(30),
    domicilio varchar(30),
    telefono varchar(11)

 );
 
 describe agenda;
 
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Mores","Alberto","Colon 123","4234567");
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Torres","Juan","Avellaneda 135","4458787");
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Lopez","Mariana","Urquiza 333","4545454");
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Lopez","Fernando","Urquiza 333","4545454");
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Suarez","Mariana","Sarmiento 643","4445544");
 insert into agenda(apellido,nombre,domicilio,telefono) values ("Lopez","Ana","Sucre 309","4252587");
 
 #Seleccione todos los registros de la tabla.
 select * from agenda;
 
 #Seleccione los amigos cuyo apellido sea 'Lopez'.
 select nombre As Nombre, apellido As Apellido from agenda where apellido = "lopez";
 
 #Seleccione los registros cuyo nombre NO sea 'Mariana'
 select * from agenda where nombre <> "Mariana";
 
 #Seleccione los registros cuyo domicilio sea 'Colon 123'.
 select * from agenda where domicilio = "Colon 123";
 
 #Muestre los datos de quienes tengan el teléfono '4545454'.
 select * from agenda where telefono = "4545454";
 