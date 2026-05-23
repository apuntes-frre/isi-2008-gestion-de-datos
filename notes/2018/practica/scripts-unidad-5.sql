#GRUPO 4
#INTEGRANTES
#Ferreyra Eduardo
#Fierro, Victoria
#Gallardo, Madelein
#Lopez Soto, Carlos
#Maidana, Lucas




create database if not exists unidad5;
use unidad5;

#ejercicio 1
			#ejercicio 1.3
#TABLAS NECESARIAS
#1)proveedores
#2)partes
#3)catalogo

#creacion de tabla proveedores
CREATE TABLE proveedores(
idp INT,
nombrep VARCHAR(100),
direccionp VARCHAR(100),
PRIMARY KEY (idp)
)ENGINE=INNODB;

#creacion tabla partes
CREATE TABLE partes(
idpa INT,
nombrepa VARCHAR(100),
color VARCHAR(50),
PRIMARY KEY (idpa)
)ENGINE=innodb;

#creacion de tabla catalogo
CREATE TABLE catalogo(
idp INT,
idpa INT,
precio REAL,
PRIMARY KEY (idp,idpa),
FOREIGN KEY (idp) REFERENCES proveedores(idp),
FOREIGN KEY (idpa) REFERENCES partes(idpa)
)ENGINE=innodb;

#ejercicio 1.3.1: encontrar los nombres de los proveedores que proveen a alguna parte roja
SELECT DISTINCT PRO.nombrep 
FROM proveedores PRO, partes PAR, catalogo CAT
WHERE PRO.idp=CAT.idp AND CAT.idpa=PAR.idpa AND PAR.color='Red';


#ejercicio 1.3.2: encontrar los idps de los proveedores que proveen a alguna parte roja o verde
SELECT DISTINCT PRO.idp
FROM proveedores PRO, partes PAR, catalogo CAT
WHERE PRO.idp=CAT.idp AND CAT.idpa=PAR.idpa AND (PAR.color='rojo' OR PAR.color='verde');


#ejercicio 1.3.3: encontrar los idps de los proveedores que proveen a alguna parte roja o o estan en "Av 9 de julio 2222"
SELECT DISTINCT PRO.idp
FROM proveedores PRO, partes PAR, catalogo CAT
WHERE PRO.idp=CAT.idp AND CAT.idpa=PAR.idpa AND (PAR.color='rojo' OR PRO.direccionp='Av 9 de Julio 2222');

#ejercicio 1.3.4: encontrar los idps de los proveedores que proveen a alguna parte roja y alguna parte verde
SELECT DISTINCT PRO.idp
FROM proveedores PRO, partes PAR, catalogo CAT
WHERE PRO.idp=CAT.idp AND CAT.idpa=PAR.idpa AND (PAR.color='rojo' AND PAR.color='verde');


#ejercicio 1.3.5: encontrar los idps de los proveedores que proveen a todas las partes
SELECT DISTINCT PRO.idp
FROM proveedores PRO
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PAR.idpa
					 FROM partes PAR
					 WHERE NOT EXISTS (  SELECT DISTINCT CAT.idp
										 FROM catalogo CAT
                                         WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp
									  )
					)
				  );
					

#ejercicio 1.3.6: encontrar los idps de los proveedores que proveen a todas las partes rojas
SELECT DISTINCT PRO.idp
FROM proveedores PRO
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PAR.idpa
					 FROM partes PAR
					 WHERE PAR.color='Red' AND NOT EXISTS (  SELECT DISTINCT CAT.idp
																FROM catalogo CAT
																WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp
															)
					)
				  );


#ejercicio 1.3.7: encontrar los idps de los proveedores que proveen todas las partes rojas o verdes
SELECT DISTINCT PRO.idp
FROM proveedores PRO
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PAR.idpa
					 FROM partes PAR
					 WHERE (PAR.color='Red' OR PAR.color='Green') AND NOT EXISTS (  SELECT DISTINCT CAT.idp
																					FROM catalogo CAT
																					WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp
																)
					)
				  );



#ejercicio 1.3.8: encontrar los idps de los proveedores que proveen todas las partes rojas o todas las partes verdes
SELECT DISTINCT PRO.idp
FROM proveedores PRO
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PAR.idpa
					 FROM partes PAR
					 WHERE PAR.color='Red' AND NOT EXISTS (  SELECT DISTINCT CAT.idp
																FROM catalogo CAT
																WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp
															)
					)
				  )
                  OR
				(SELECT DISTINCT PRO.idp
FROM proveedores PRO
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PAR.idpa
					 FROM partes PAR
					 WHERE PAR.color='Green' AND NOT EXISTS (  SELECT DISTINCT CAT.idp
																FROM catalogo CAT
																WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp
															)
					)
				  ));


#ejercicio 1.3.9: encontrar pares de idps tales que el proveedor del primer idp,
#vende mas caro alguna parte que el proveedor con el segundo idp

#PARA MAS TARDE------------------------------------------------------------------------------------------------

#ejercicio 1.3.10: encontrar los idpas de las partes que son proveidas por al menos 2 proveedores diferentes
SELECT DISTINCT CAT.idpa
FROM proveedores PRO, catalogo CAT
WHERE  1<(SELECT COUNT(*)
			FROM proveedores P, catalogo C
            WHERE PRO.idp<>P.idp AND C.idpa=CAT.idpa);


#ejercicio 1.3.11: encontrar los idpas de las partes que son proveidas por proveedores,
#llamados "Juan Garcia"
SELECT DISTINCT CAT.idpa
FROM proveedores PRO, catalogo CAT
WHERE PRO.nombrep = 'Juan Garcia' AND PRO.idp= CAT.idp;


#ejercicio 1.3.12: encontrar los idpas de las partes proveidas por todos los proveedores,
#a menos de $200(si algun proveedor no provee la parte o la cobra mas de $200, ésta no se selecciona).

#REVISAR::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
SELECT DISTINCT PAR.idpa
FROM partes PAR
WHERE NOT EXISTS ( 
					(SELECT DISTINCT PRO.idp
					 FROM proveedores PRO
					 WHERE NOT EXISTS (  SELECT DISTINCT CAT.idp
										FROM catalogo CAT
										WHERE CAT.idpa=PAR.idpa AND CAT.idp=PRO.idp AND CAT.precio<=200
															)
					)
				  );


#ejercicio 1
			#ejercicio 1.5
#TABLAS NECESARIAS
#1)vuelos
#2)aviones
#3)empleados
#4)certificados

#creacion de la tabla vuelos
CREATE TABLE vuelos(
flno INT,
desde VARCHAR(50),
hacia VARCHAR(50),
distancia INT,
salida date,
arribo date,
PRIMARY KEY (flno)
)ENGINE=innodb;

#creacion de la tabla aviones
CREATE TABLE aviones(
aid INT,
aname VARCHAR(50),
cruisingrange INT,
PRIMARY KEY (aid)
)ENGINE=innodb;

#creacion de la tabla empleados
CREATE TABLE empleados(
eid INT,
ename VARCHAR(50),
salary REAL,
PRIMARY KEY(eid)
)ENGINE=innodb;

#creacionde tabla certificadoscertificados
CREATE TABLE certificados(
eid INT,
aid INT,
PRIMARY KEY (eid,aid),
FOREIGN KEY (eid) REFERENCES empleados(eid),
FOREIGN KEY (aid) REFERENCES aviones(aid)
)ENGINE=innodb;

#ejercicio 1.5.1: encuentre los eids de los pilotos certificados para algún avion "Boeing" 
SELECT DISTINCT CER.eid
FROM aviones AV, certificados CER
WHERE AV.eid=CER.eid AND CER.aid=AV.aid AND AV.aname LIKE '%Boeing%';


#ejercicio 1.5.2: encuentre los nombres de los pilotos certificados para algún avion "Boeing"
SELECT DISTINCT EMP.ename
FROM aviones AV, empleados EMP, certificados CER
WHERE EMP.eid=CER.eid AND CER.aid=AV.aid AND AV.aname LIKE '%Boeing%' AND AV.eid=CER.eid ;


#ejercicio 1.5.3: encuentre los aids de todos los aviones que pueden ser usados para vuelos sin paradas,
# desde "Bonn" hasta "Madras" 
SELECT DISTINCT AV.aid
FROM aviones AV, vuelos FLY
WHERE AV.distancia=FLY.cruisinrange AND FLY.desde LIKE '%Bonn%' AND FLY.hasta LIKE '%Madras%';


#ejercicio 1.5.4: identifique los vuelos que pueden ser piloteados por cada piloto cuyo salario sea
# mayor a $10.000
#REVISAR:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#SOLUCION A
SELECT DISTINCT FLY.flno
FROM vuelos FLY
WHERE NOT EXISTS ( 
					(SELECT DISTINCT CER.eid
					 FROM certificados CER, aviones AV
					 WHERE CER.aid=AV.aid AND AV.cruisingrange=FLY.distancia
                     AND NOT EXISTS (  SELECT DISTINCT EMP.eid
									FROM empleados EMP
                                    WHERE CER.eid=EMP.eid AND EMP.salary>10000
									)
					)
				  );
#SOLUCION B
SELECT DISTINCT FLY.flno
FROM vuelos FLY, certificados CER, empleados EMP, aviones AV
WHERE EMP.salary>10000 AND EMP.eid=CER.eid AND CER.aid=AV.aid AND AV.cruisingrange=FLY.distancia;


#ejercicio 1.5.5: encuentre los nombres de pilotos que pueden operar aviones con un rango amyor a 3.000 KM,
# pero que NO esten certificados para aviones "Boeing"

SELECT DISTINCT EMP.ename
FROM aviones AV, empleados EMP, certificados CER
WHERE EMP.eid=CER.eid AND CER.aid=AV.aid AND AV.cruisingrange>3000 AND (NOT AV.aname LIKE '%Boeing%');


#ejercicio 1.5.6: encuentre los eids de los empleados que ganan el mayor salario
SELECT DISTINCT EMP.eid
FROM empleados EMP
WHERE EMP.salary = MAX(EMP.salary);


#ejercicio 1.5.7: encuentre los eids de los empleados que ganan el segundo mayor salario
SELECT DISTINCT EMP.eid
FROM empleados as EMP, empleados as EMP2
WHERE MAX(EMP.salary)<(SELECT MAX(EMP2.salary));


#ejercicio 1.5.8: encuentre los eids de los empleados que estan certificados para la mayor cantidad de aviones

#MAS TARDE------------------------------------------------------------------------------------------


#ejercicio 1.5.9: encuentre los eids de los empleados que estan certificados para exactamente 3(tres) aviones
SELECT DISTINCT CER.eid
FROM certificados as CER
WHERE 3 = (SELECT COUNT(CER2.eid)
			FROM certificados as CER2
			WHERE CER.eid=CER2.eid
            );


#ejercicio 1.5.10: Encuentre la cantidad total de dinero pagado en concepto de salario
SELECT SUM(empleados.salary);


#NO SE RESOLVER!!!JAJAJA:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#ejercicio 1.5.11: ¿Existe alguna secuencia de vuelos de Buenos Aires a Berlín? Cada vuelo en
#la secuencia debe partir  de la ciudad que es destino del  vuelo anterior; el
#primer vuelo debe partir de Buenos Aires, el  último debe llegar a Berlín y no
#hay  restricción  en  la  cantidad  de  vuelos  intermedios.  Su  consulta  debe
#determinar cuándo existe alguna secuencia de vuelos desde Buenos Aires a
#Berlín para alguna instancia de la relación Vuelos



#Ejercicio 2
#TABLAS NECESARIAS
#1)Persona
#2)coche
#3)accidente
#4)es_dueño
#5)participo


#creacion tabla persona
CREATE TABLE persona(
id_conductor INT,
nombre VARCHAR(50),
direccion VARCHAR(100),
PRIMARY KEY (id_conductor)
)ENGINE=INNODB;

#creacion de la tabla coche
CREATE TABLE coche(
matricula VARCHAR(6),
año date,
modelo VARCHAR(50),
PRIMARY KEY (matricula)
)ENGINE=innodb;

#creacion de la tabla accidente
CREATE TABLE accidente(
numero_informe INT,
fecha date,
lugar VARCHAR(100),
PRIMARY KEY (numero_informe)
)ENGINE=innodb;

#creacion de la tabla es_dueño
CREATE TABLE es_dueno(
id_conductor INT,
matricula VARCHAR(6),
PRIMARY KEY(id_conductor,matricula),
CONSTRAINT `fk_id_conductor` FOREIGN KEY (id_conductor) REFERENCES persona(id_conductor),
CONSTRAINT `fk_coche` FOREIGN KEY (matricula) REFERENCES coche(matricula)
)ENGINE=innodb;

#creacion de la tabla participo
CREATE TABLE participo(
id_conductor INT,
matricula VARCHAR(6), #cambio de nombre de "coche" a "matricula"
numero_informe INT,
importe_danos REAL,
PRIMARY KEY (id_conductor,matricula,numero_informe),
FOREIGN KEY (id_conductor) REFERENCES persona(id_conductor),
FOREIGN KEY (matricula) REFERENCES coche(matricula),
FOREIGN KEY (numero_informe) REFERENCES accidente(numero_informe)
)ENGINE=innodb;



#2.a. Buscar el número total de las personas cuyos coches se han visto involucrados en un accidente en 1989.
SELECT COUNT(PAR.id_conductor)
FROM participo PAR, accidente ACC
WHERE ACC.fecha LIKE '%1989' and PAR.numero_informe=ACC.numero_informe;


#2.b. Buscar el número de accidentes en los cuales se ha visto involucrado un coche perteneciente a «Santos».
SELECT COUNT(ACC.numero_informe)
FROM accidentes ACC,persona PER
WHERE ACC.id_conductor=PER.id_conductor AND PER.nombre = 'Santos';


#2.c. Añadir un nuevo accidente a la base de datos; supóngase cualquier valor para los atributos necesarios.
INSERT INTO accidente (numero_informe,fecha,lugar)
VALUES (100,11/11/1996,'Palmont City');


#2.d. Borrar el Mazda de «Santos».
DELETE FROM coche
WHERE (SELECT CO
		FROM persona PER, coche CO , es_dueno ES
		WHERE CO.modelo LIKE '%Mazda%' AND PER.nombre LIKE '%Santos%' 
				AND CO.matricula=ES.matricula AND PER.id_conductor=ES.id_conductor);

#2.e. Actualizar  el  importe de daños del  coche de matrícula «CV 202 BD» en el accidente con número de informe «AR2197» a $3.000.
UPDATE accidente
SET importe=3000
WHERE (SELECT ACC
		FROM accidente ACC
        WHERE ACC.matricula='CV 202 BD' 
			AND ACC.numero_informe='AR2197');


#Ejercicio 3
#TABLAS NECESARIAS
#1)empleado
#2)trabaja
#3)empresa
#4)jefe

#creacion de la tabla empleado
CREATE TABLE empleado(
nombre_empleado VARCHAR(50),
calle VARCHAR(50),
ciudad VARCHAR(50),
PRIMARY KEY (nombre_empleado)
)ENGINE=innodb;

#creacion de la tabla trabaja
CREATE TABLE trabaja(
nombre_empleado VARCHAR(50),
nombre_empresa VARCHAR(50),
sueldo REAL,
PRIMARY KEY (nombre_empleado,nombre_empresa)
)ENGINE=innodb;

#creacion de la tabla empresa

CREATE TABLE empresa(
nombre_empresa VARCHAR(50),
ciudad VARCHAR(50),
PRIMARY KEY (nombre_empresa)
)ENGINE=innodb;

#creacion de la tabla jefe
CREATE TABLE jefe(
nombre_empleado VARCHAR(50),
nombre_jefe VARCHAR(50),
PRIMARY KEY (nombre_empleado,nombre_jefe),
FOREIGN KEY (nombre_empleado) REFERENCES trabaja(nombre_empleado)
)ENGINE=innodb;

#3.a. Buscar los nombres de todos los empleados que trabajan en el "Banco Importante"
SELECT TRA.nombre_empleado
FROM trabaja TRA
WHERE TRA.nombre_empresa = 'Banco Importante';


#3.b. Buscar los nombres y ciudades de residencia de todos los empleados que trabajan en el Banco Importante.
SELECT EMP.nombre_empleado, EMP.ciudad
FROM empleado EMP, trabaja TRA
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa='Banco Importante';


#3.c. Buscar los nombres, direcciones y ciudades de residencia de todos los empleados...
#...que trabajan en el Banco Importante y que ganan más de $10.000.
SELECT EMP
FROM empleado EMP, trabaja TRA
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa='Banco Importante' AND TRA.salario > 10000;


#3.d.  Buscar todos los empleados que viven en la ciudad de la empresa para la que trabajan.
SELECT EMP
FROM empleado EMP, trabaja TRA, empresa EM
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa=EM.nombre_empresa AND EM.ciudad=EMP.ciudad;


#3.e. Buscar todos los empleados que viven en la misma ciudad y en la misma calle que sus jefes.
SELECT EMP
FROM (empleado SUB INNER JOIN jefe J ON (SUB.nombre_empleado =J.nombre_empleado)) INNER JOIN empleado SUP ON( SUP.nombre_empleado=J.nombre_jefe)
WHERE(SUB.calle=SUP.calle AND SUB.ciudad=SUP.ciudad);


#3.f. Buscar todos los empleados que no trabajan en el Banco Importante.
SELECT EMP
FROM empleado EMP, trabaja TRA
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa<>'Banco Importante';


#3.g.  Buscar todos los empleados que ganan más que cualquier empleado del  Banco Pequeño.
SELECT EMP
FROM empleado EMP, trabaja TRA
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa<>'Banco Pequeño'
AND TRA.salario>(SELECT TRA2.salario
					FROM trabaja TRA2
                    WHERE MAX(TRA2.salario)=TRA2.salario AND TRA2.nombre_empresa = ' Banco Pequeño') ;


#3.h. Supóngase que las empresas pueden tener sede en varias ciudades. Buscar todas...
#...las  empresas  con sede en todas  las  ciudades  en las  que tiene sede el  Banco Pequeño.
SELECT E
FROM empresa E
WHERE E.ciudad IN (SELECT E2
					FROM empresa E2
                    WHERE E.nombre_empresa = 'Banco Pequeño');


#3.i. Buscar todos los empleados que ganan más que el sueldo medio de los empleado de su empresa.
SELECT EMP
FROM empleado EMP, trabaja TRA
WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.salario< AVG(TRA.salario);


#3.j. Buscar la empresa que tiene el mayor número de empleados.
SELECT COUNT(*)
 FROM empleado EMP, empresa E , trabaja TRA
 WHERE EMP.nombre_empleado=TRA.nombre_empleado AND TRA.nombre_empresa=E.nombre_empresa;

#3.k. Buscar la empresa que tiene el menor sueldo medio.
#3.l. Buscar aquellas empresas cuyos empleados ganan un sueldo más alto, en media,...
#...que el sueldo medio del Banco Importante.

#Ejercicio 4
#TABLAS NECESARIAS: MISMAS QUE EL EJERCICIO 3

#4.a. Modificar la base de datos de forma que Santos viva en Ávila.
UPDATE empleado E
SET ciudad = 'Avila'
WHERE E.nombre_empleado='Santos';


#4.b. Incrementar en un 10% el sueldo de todos los empleados del Banco Importante.
UPDATE trabaja T
SET sueldo = round(sueldo*0.10+sueldo)
WHERE T.nombre_empresa='Banco';

#4.c. Incrementar en un 10% el sueldo de todos los jefes del Banco Importante.
UPDATE trabaja T INNER JOIN Jefe J
SET sueldo = round(sueldo*0.10+sueldo)
WHERE T.nombre_empresa='Banco Importante';


#4.d. Incrementar en un 10% el sueldo de todos los empleados del Banco Importante, a...
#...menos que su sueldo pase a ser mayor de $100.000, en cuyo caso se incrementará su sueldo sólo en un 3%.
UPDATE trabaja T INNER JOIN Jefe J
SET sueldo = round(sueldo*0.10+sueldo)
WHERE T.nombre_empresa='Banco Importante' AND T.sueldo<100000;


#4.e. Borrar todas las tuplas de la relación trabaja correspondientes a los empleados del Banco Importante.
DELETE FROM trabaja
WHERE nombre_empresa='Banco Importante';

/*Ejercicio 5 -  Considérese la base de datos relacional del ejercicio anterior:
Utilizando SQL, defínase una vista que contenga nombre-jefe y el  sueldo medio de
todos los empleados que trabajan para ese jefe. Explíquese por qué el  sistema de
base de datos no debería permitir que las actualizaciones se expresaran en términos de esta vista.*/
/*SELECT j.nombre-jefe, AVG t.sueldo
FROM jefe j INNER JOIN trabaja t ON t.nombre-empleado=j.nombre-empleado
WHERE j.nombre-jefe= ´Jefe´*/

#El sistema de base de datos no puede realizar actualizaciones sobre datos calculados, 
#se deben especificar los campos a actualizar y los valores nuevos a insertar. 
#Se debe realizar una selección de los datos a modificar primero, luego intentar actualizar sobre la tabla filtrada.


/*Ejercicio 6 - Considérese la consulta SQL


	select p.a1
		from p, r1, r2
		where p.a1 = r1.a1 or p.a1 = r2.a1

#¿Bajo qué condiciones la consulta anterior  devuelve los valores de  p.a1 que están...
#...tanto en r1 como en r2? Examínense cuidadosamente los casos en los que r1.a1 o r2.a2 pueden ser nulos.*/

/*Esta consulta devuelve los valores p.a1 si o sólo si p.a1 se encuentra en la tabla r1 ó
 si se encuentra en la tabla r2 y si los valores del campo a1 son iguales. 
 En caso de que el campo sea nulo en r1 pero no así en r2, 
 devuelve la tabla p con los campos de a1. Lo mismo si en r2 es nulo 
 pero no así en r1. Si a1 tiene valor nulo en ambas tablas, no devuelve dicho valor*/
 
/*Ejercicio 7 - Supóngase que se tiene una relación nota (estudiante, puntuación) y que se quiere
clasificar a los estudiantes en función de la puntuación del modo siguiente:
SS: si la puntuación es menor que 5
AP: si la puntuación es mayor o igual que 5 y menor que 7
NT: si la puntuación es mayor o igual que 7 y menor que 8,5
SB: si la puntuación es mayor o igual que 8,5
Escríbanse consultas para hacer lo siguiente:
a. Mostrar la clasificación de cada estudiante, en términos de la relación nota.
SELECT n.estudiante AS 'SS'
FROM note n
WHERE n.puntuacion < 5;
    
SELECT n.estudiante AS 'AP'
FROM nota n
WHERE 5<n.puntuacion<7;
    
SELECT n.estudiante AS 'NT'
FROM nota n
WHERE 7<=n.puntuacion< 8.4;

SELECT n.estudiante AS 'SB'
FROM nota n
WHERE n.puntuacion >= 8.5;

b. Encontrar el número de estudiantes por clasificación.
SELECT count(n.estudiante) as 'SS'
FROM nota n
WHERE n.puntuacion < 5;

SELECT count(n.estudiante) AS 'AP'
FROM nota n
WHERE 5<n.puntuacion<7;
  
SELECT count(n.estudiante) AS 'NT'
FROM nota n
WHERE 7<=n.puntuacion<8.5;
    
SELECT count(n.estudiante) AS 'SB'
FROM nota n
WHERE n.puntuacion >= 8.5;

*/


/*Ejercicio 8 - Dada la definición de esquema SQL para la base de datos de empleados siguiente,
elíjase un dominio apropiado para cada atributo y una clave primaria para cada
esquema de relación.
empleado (nombre-empleado, calle, ciudad)
trabaja (nombre-empleado, nombre-empresa, sueldo)
empresa (nombre-empresa, ciudad)
jefe(nombre-empleado, nombre-jefe)

*/
CREATE TABLE Empleado(
nombre_empleado varchar(20),
calle varchar (30),
ciudad varchar (30),
PRIMARY KEY (nombre_empleado)
)ENGINE=INNODB;


CREATE TABLE Empresa(
nombre_empresa varchar(20),
ciudad varchar(30),
PRIMARY KEY (nombre_empresa)
);

CREATE TABLE Jefe(
nombre_empleado varchar(20),
nombre_jefe varchar(20),
PRIMARY KEY (nombre_empleado, nombre_jefe)
);

CREATE TABLE Trabaja(
nombre_empleado varchar(20),
nombre_empresa varchar(20),
sueldo integer(6),
PRIMARY KEY (nombre_empleado, nombre_empresa)
);

ALTER TABLE Jefe ADD CONSTRAINT fk_empleado FOREIGN KEY (nombre_empleado) REFERENCES Empleado (nombre_empleado);
ALTER TABLE Trabaja ADD CONSTRAINT fk_trabaja_empleado FOREIGN KEY (nombre_empleado) REFERENCES Empleado (nombre_empleado);
ALTER TABLE Trabaja ADD CONSTRAINT fk_trabaja_empresa FOREIGN KEY (nombre_empresa) REFERENCES Empresa (nombre_empresa);


/*9- Escríbanse condiciones check para el esquema del ejercicio anterior para asegurar que
a. Cada empleado trabaja para una empresa con sede en la ciudad de residencia del empleado.*/ 
ALTER TABLE empleado e
ADD CHECK ( SELECT 
FROM (empresa empr INNER JOIN trabaja tra ON empr.nombre-empresa=tra.nombre-empresa)INNER JOIN
empleado empl ON empl.nombre-empleado=tra.nombre-empleado
			WHERE e.nombre-empleado=tra.nombre-empleado AND empr.ciudad=empl.ciudad);

/*b. Ningún empleado gana un sueldo mayor que el de su jefe.*/
ALTER TABLE empleado e
ADD CHECK ( SELECT 
FROM (jefe jef INNER JOIN trabaja tra ON jef.nombre-empleado=tra.nombre-empleado)INNER JOIN
trabaja tra2 ON tra2.nombre-empleado=jef.nombre-jefe
			WHERE e.nombre-empleado=jef.nombre-empleado AND tra.sueldo<tra2.sueldo)
