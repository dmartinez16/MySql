CREATE DATABASE  IF NOT EXISTS `empleadoss_departamentoss` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `empleadoss_departamentoss`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: empleadoss_departamentoss
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentoss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `codDepto` varchar(4) COLLATE utf8_bin NOT NULL,
  `nombreDpto` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codDirector` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codDepto`),
  KEY `FK_EmpDir` (`codDirector`),
  CONSTRAINT `FK_EmpDir` FOREIGN KEY (`codDirector`) REFERENCES `empleadoss` (`jefeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES ('1000','GERENCIA','CIUDAD REAL','31.840.269');
INSERT INTO `departamentos` VALUES ('1500','PRODUCCIÓN','CIUDAD REAL','16.211.383');
INSERT INTO `departamentos` VALUES ('2000','VENTAS','CIUDAD REAL','31.178.144');
INSERT INTO `departamentos` VALUES ('2100','VENTAS','BARCELONA','16.211.383');
INSERT INTO `departamentos` VALUES ('2200','VENTAS','VALENCIA','16.211.383');
INSERT INTO `departamentos` VALUES ('2300','VENTAS','MADRID','16.759.060');
INSERT INTO `departamentos` VALUES ('3000','INVESTIGACIÓN','CIUDAD REAL','16.759.060');
INSERT INTO `departamentos` VALUES ('3500','MERCADEO','CIUDAD REAL','22.222.222');
INSERT INTO `departamentos` VALUES ('4000','MANTENIMIENTO','CIUDAD REAL','333.333.333');
INSERT INTO `departamentos` VALUES ('4100','MANTENIMIENTO','BARCELONA','16.759.060');
INSERT INTO `departamentos` VALUES ('4200','MANTENIMIENTO','VALENCIA','16.759.060');
INSERT INTO `departamentos` VALUES ('4300','MANTENIMIENTO','MADRID','16.759.060');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `nDIEmp` varchar(12) COLLATE utf8_bin NOT NULL,
  `nomEmp` varchar(30) COLLATE utf8_bin NOT NULL,
  `sexEmp` char(1) COLLATE utf8_bin NOT NULL,
  `fecNac` date NOT NULL,
  `fecIncorporacion` date NOT NULL,
  `salEmp` float NOT NULL,
  `comisionE` float NOT NULL,
  `cargoE` varchar(15) COLLATE utf8_bin NOT NULL,
  `jefeID` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `codDepto` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`nDIEmp`),
  KEY `FK_Empl` (`jefeID`),
  KEY `FK_Dpto` (`codDepto`),
  CONSTRAINT `FK_Dpto` FOREIGN KEY (`codDepto`) REFERENCES `departamentos` (`codDepto`),
  CONSTRAINT `FK_Empl` FOREIGN KEY (`jefeID`) REFERENCES `empleados` (`nDIEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES ('1.130.222','José Giraldo','M','1985-01-20','2000-11-01',1200000,400000,'Asesor','22.222.222','3500');
INSERT INTO `empleados` VALUES ('1.130.333','Pedro Blanco','M','1987-10-28','2000-10-01',800000,3000000,'Vendedor','31.178.144','2000');
INSERT INTO `empleados` VALUES ('1.130.444','Jesús Alfonso','M','1988-03-14','2000-10-01',800000,3500000,'Vendedor','31.178.144','2000');
INSERT INTO `empleados` VALUES ('1.130.555','Julián Mora','M','1989-07-03','2000-10-01',800000,3100000,'Vendedor','31.178.144','2200');
INSERT INTO `empleados` VALUES ('1.130.666','Manuel Millán','M','1990-12-08','2004-06-01',800000,3700000,'Vendedor','31.178.144','2300');
INSERT INTO `empleados` VALUES ('1.130.777','Marcos Cortez','M','1986-06-23','2000-04-16',2550000,500000,'Mecánico','333.333.333','4000');
INSERT INTO `empleados` VALUES ('1.130.782','Antonio Gil','M','1980-01-23','2010-04-16',850000,1500000,'Técnico','16.211.383','1500');
INSERT INTO `empleados` VALUES ('1.751.219','Melissa Roa','F','1960-06-19','2001-03-16',2250000,2500000,'Vendedor','31.178.144','2100');
INSERT INTO `empleados` VALUES ('11.111.111','Irene Díaz','F','1979-09-28','2004-06-01',1050000,200000,'Mecánico','333.333.333','4200');
INSERT INTO `empleados` VALUES ('16.211.383','Luis Pérez','M','1956-02-25','2000-01-01',5050000,0,'Director','31.840.269','1500');
INSERT INTO `empleados` VALUES ('16.759.060','Darío Casas','M','1960-04-05','1992-11-01',4500000,500000,'Investigador','31.840.269','3000');
INSERT INTO `empleados` VALUES ('19.709.802','William Daza','M','1982-10-09','1999-12-16',2250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO `empleados` VALUES ('22.222.222','Carla López','F','1975-05-11','2005-07-16',4500000,500000,'Jefe Mercadeo','31.840.269','3500');
INSERT INTO `empleados` VALUES ('22.222.333','Carlos Rozo','M','1975-05-11','2001-09-16',750000,500000,'Vigilante','31.840.269','3500');
INSERT INTO `empleados` VALUES ('31.174.099','Diana Solarte','F','1957-11-19','1990-05-16',1250000,500000,'Secretaria','31.840.269','1000');
INSERT INTO `empleados` VALUES ('31.178.144','Rosa Angulo','F','1957-03-15','1998-08-16',3250000,3500000,'Jefe Ventas','31.840.269','2000');
INSERT INTO `empleados` VALUES ('31.840.269','María Rojas','F','1959-01-15','1990-05-16',6250000,1500000,'Gerente',NULL,'1000');
INSERT INTO `empleados` VALUES ('333.333.333','Elisa Rojas','F','1979-09-28','2004-06-01',3000000,1000000,'Jefe Mecánicos','31.840.269','4000');
INSERT INTO `empleados` VALUES ('333.333.334','Marisol Pulido','F','1979-10-01','1990-05-16',3250000,1000000,'Investigador','16.759.060','3000');
INSERT INTO `empleados` VALUES ('333.333.335','Ana Moreno','F','1992-01-05','2004-06-01',1200000,400000,'Secretaria','16.759.060','3000');
INSERT INTO `empleados` VALUES ('333.333.336','Carolina Ríos','F','1992-02-15','2000-10-01',1250000,500000,'Secretaria','16.211.383','1500');
INSERT INTO `empleados` VALUES ('333.333.337','Edith Muñoz','F','1992-03-31','2000-10-01',800000,3600000,'Vendedor','31.178.144','2100');
INSERT INTO `empleados` VALUES ('444.444','Abel Gómez','M','1939-12-24','2000-10-01',1050000,200000,'Mecánico','333.333.333','4300');
INSERT INTO `empleados` VALUES ('737.689','Mario Llano','M','1945-08-30','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2300');
INSERT INTO `empleados` VALUES ('768.782','Joaquín Rosas','M','1947-07-07','1990-05-16',2250000,2500000,'Vendedor','31.178.144','2200');
INSERT INTO `empleados` VALUES ('888.888','Iván Duarte','M','1955-08-12','1998-05-16',1050000,200000,'Mecánico','333.333.333','4100');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19 16:00:50


/* Ejercicios Completos - 1 

1. Obtener los datos completos de los empleados.*/

select * from empleados;

#2. Obtener los datos completos de los departamentos

select * from departamentos;

#3. Obtener los datos de los empleados con cargo 'Secretaria'.

select * from empleados where cargoE = "Secretaria";

#4. Obtener el nombre y salario de los empleados.

select nomEmp As Empleados, salEmp As Salario from empleados;

#5. Obtener los datos de los empleados vendedores, ordenado por nombre.

select * from empleados where lower(cargoE) = "vendedor" order by nomEmp asc;

#6. Listar el nombre de los departamentos

select distinct nombreDpto as Departamento from departamentos;

#7. Obtener el nombre y cargo de todos los empleados, ordenado por salario

select nomEmp as Empleado, cargoE as Cargo, salEmp as Salario from empleados order by salEmp desc;

#8. Listar los salarios y comisiones de los empleados del departamento 2000, 
#ordenado por comisión

select salEmp as SalarioEmpleado, comisionE as ComisionEmpleado from empleados
where codDepto = 2000 order by comisionE desc;

#9. Listar todas las comisiones

select distinct comisionE as Comisiones from empleados order by comisionE desc;

#10. Obtener el valor total a pagar que resulta de sumar a los empleados 
#del departamento 3000 una bonificación de 500.000, en orden alfabético del empleado

select nomEmp as Empleado,sum(salEmp + 500000) as "Pago con bonificación" 
from empleados
where codDepto = "3000"
group by nomEmp;


describe empleados;

#11. Obtener la lista de los empleados que ganan una comisión superior 
#a su sueldo.

select nDIEmp as Codigo, nomEmp as Nombre 
from empleados 
where comisionE > salEmp;

#12. Listar los empleados cuya comisión es menor o igual que el 30% de 
#su sueldo.

select nDIEmp as Codigo, nomEmp as Nombre from empleados
where comisionE <= (0.3 * salEmp);

#13.Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado.

select nomEmp as Nombre, cargoE as Cargo, salEmp as Salario
from empleados;

#14. Hallar el salario y la comisión de aquellos empleados cuyo número de 
#documento de identidad es superior al '19.709.802'

select nomEmp as Empleado, salEmp as Salario, comisionE as Comision
from empleados
where nDIEmp > '19.709.802';

#15. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango).
#Liste estos empleados y su cargo por orden alfabético.

select nomEmp as Empleado, cargoE as Cargo from empleados
where lower (nomEmp) > 'j' and lower(nomEmp) < 'z' 
order by nomEmp asc; 

/*16. Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del
empleado y nombre, de aquellos empleados que tienen comisión superior a 1.000.000, ordenar el
informe por el número del documento de identidad*/

select salEmp as Salario, comisionE as Comision, sum(salEmp + comisionE) as SalarioTotal, nDIEmp as Documento, nomEmp Empleado
from empleados
where comisionE > '1000000'
group by nDIEmp;

#17. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión

select salEmp as Salario, comisionE as Comision, sum(salEmp + comisionE) as SalarioTotal, nDIEmp as Documento, nomEmp Empleado
from empleados
where not comisionE
group by nDIEmp;

#18. Hallar los empleados cuyo nombre no contiene la cadena "MA"

select * from empleados
where upper(nomEmp) not like '%MA%';

#19. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” NI
#'MANTENIMIENTO'.

select distinct nombreDpto from departamentos
where lower(nombreDpto) not in ('ventas', 'investigación', 'mantenimiento');

#El in permite que almacenar varios valores a la hora de poner una codición :o

/*
20. Obtener el nombre y el departamento de los empleados con cargo 'Secretaria' o 'Vendedor', que
no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000,
ordenados por fecha de incorporación.*/

select e.cargoE as Cargo, e.nomEmp as Empleado, d.nombreDpto as Departamento, e.salEmp as Salario, e.fecIncorporacion as Ingreso
from empleados e join departamentos d 
	 on d.codDepto = e.codDepto
where d.codDepto = e.codDepto and (lower(e.cargoE) = "secretaria" or  lower(e.cargoE) = "vendedor")  and  ((lower(d.codDepto) not like ('15%'))) and (e.salEmp > "1000000")
order by e.fecIncorporacion;

#21. Obtener información de los empleados cuyo nombre tiene exactamente 11 caracteres

select * from empleados
where character_length(nomEmp) = "11";

#22. Obtener información de los empleados cuyo nombre tiene al menos 11 caracteres

select * from empleados
where character_length(nomEmp) >= "11";

#23. Listar los datos de los empleados cuyo nombre inicia por la letra 'M', su salario es mayor a $800.000 yreciben comisión y trabajan para el departamento de 'VENTAS'

select * from empleados e join departamentos d
		 on d.codDepto = e.codDepto
where (upper(e.nomEmp) like ("M%")) and (e.salEmp > 800000) or (e.comisionE > 0) and 
(upper(d.nombreDpto) like ("VENTAS"));


#24. Obtener los nombres, salarios y comisiones de los empleados que reciben un salario situado entre la mitad de la comisión y la propia comisión

select nomEmp as Empleado, salEmp as Salarios, comisionE as Comisiones
from empleados 
where salEmp between (comisionE/2) and comisionE;

/*
25. Mostrar el salario más alto de la empresa.*/

select salEmp as Salario_Maximo, nomEmp as Empleado from empleados
where salEmp = (Select max(salEmp)from empleados);

#26. Mostrar cada una de las comisiones y el número de empleados que las reciben. 
#Solo si tiene comision.

select comisionE as Valor_Comision, count(nDIemp) as EmpleadosQueLaReciben from empleados
where comisionE > 0 group by comisionE;


#27. Mostrar el nombre del último empleado de la lista por orden alfabético.

select max(nomEmp) from empleados;


#28. Hallar el salario más alto, el más bajo y la diferencia entre ellos.

select max(salEmp) as SalarioMaximo, min(salEmp) as SalarioMasBajo, (max(salEmp)-min(salEmp))
from empleados;

#29. Mostrar el número de empleados de sexo femenino y de sexo masculino, por departamento.

select count(*) as NumeroEmpleados, sexEmp as Sexo, codDepto as DepartamentoCodigo
from empleados
group by sexEmp, codDepto;


#30. Hallar el salario promedio por departamento.

select distinct avg(salEmp) as SalarioPromedio, codDepto as DepartamentoCodigo
from empleados
group by codDepto ;

/*
31. Mostrar la lista de los empleados cuyo salario es mayor o igual que el promedio de la empresa.
Ordenarlo por departamento.*/

select e.nomEmp as Empleado, e.salEmp as Salario, d.nombreDpto as Departamento
from empleados e join departamentos d 
	 ON d.codDepto = e.codDepto
where e.salEmp >= ( select avg(salEmp)
					from empleados
)
order by d.codDepto;

#32. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de empleados de
#esos departamentos.

select count(e.nDIEmp) as NumeroEmpleados, d.nombreDpto as Departamento, d.codDepto as Codigo
from departamentos d join empleados e
	 on d.codDepto = e.codDepto
where d.codDepto = e.codDepto
group by e.codDepto
having count(*)>3;

#33. Mostrar el código y nombre de cada jefe, junto al número de empleados que dirige. 
#Solo los que tengan mas de dos empleados (2 incluido)

select j.nDIEmp, j.nomEmp, count(*) as 'Num Empleados'
from empleados e, empleados j 
where e.jefeID = j.nDIEmp
group by j.nomEmp
having count(*)>=2
order by count(*) desc ;


#34. Hallar los departamentos que no tienen empleados

select d.nombreDpto, count(*) as 'Empleados'
from departamentos d join empleados e
	 on d.codDepto = e.codDepto
where d.codDepto = e.codDepto
group by d.codDepto
having count(*) = 0;


#35. Mostrar el nombre del departamento cuya suma de salarios sea la más alta, indicando
# el valor de la suma.

select d.nombreDpto as Departamento, sum(e.salEmp) as SalarioMaximo
from departamentos d join empleados e
where  d.codDepto = e.codDepto
group by d.nombreDpto
order by sum(e.salEmp) desc
limit 1;