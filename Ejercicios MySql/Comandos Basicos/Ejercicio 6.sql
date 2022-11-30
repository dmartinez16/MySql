#Ejercicio 6 
#Un comercio que vende artículos de computación registra los datos de sus artículos en una tabla con ese nombre.

#create table articulos(
#  codigo integer,
#  nombre varchar(20),
#  descripcion varchar(30),
#  precio float,
#  cantidad integer
# );
 
/* insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);*/
  
  describe articulos;
  
  ---#Muestre los datos de las impresoras ingresadas.
  
  select * from articulos where nombre = "impresora";
  
  #Seleccione los artículos cuyo precio sea mayor o igual a 500
  
  select * from articulos where precio >= 500;
  
  #Seleccione los artículos cuya cantidad sea menor a 30
  
  select * from articulos where cantidad <30;
  
  #Selecciones el nombre y descripción de los artículos que no cuesten $100
  
  select nombre, descripcion, precio from articulos where precio <> 100;