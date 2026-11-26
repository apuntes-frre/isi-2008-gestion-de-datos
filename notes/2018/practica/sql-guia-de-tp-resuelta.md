# SQL: guía de trabajos prácticos resuelta

> Transcripción íntegra de `Gestión de Datos UNIDAD 5.docx`, conservado en la
> carpeta 2018 de Gestión de Datos en OneDrive. Es una resolución de estudiantes
> de la [guía de SQL](sql-guia-de-tp.md): el documento no indica autores, grupo
> ni fecha, y el archivo no trae propiedades de documento (sus entradas internas
> están fechadas el 2018-06-15). El «Ejercicio 1» responde las consultas de los
> ejercicios 3 y 5 de la
> [guía de álgebra relacional](algebra-relacional-guia-de-ejercicios.md) («Punto
> 3» y «Punto 5»). No hay respuestas para los apartados 3.g, 3.j a 3.l y 4.d de
> la guía de SQL. No se verificó ni se corrigió ninguna respuesta.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

La negrita con que el original resalta las palabras clave no se conserva dentro
de los bloques de código. La sangría se normaliza y las líneas que la página
cortaba por falta de ancho se escriben unidas.

<!-- Fuente: Gestión de Datos UNIDAD 5.docx. -->

## Ejercicio 1

### Punto 3

1\. Encontrar los nombres de los proveedores que proveen alguna parte roja

```sql
select distinct s.sname
from suppliers s, catalog c, parts p
where s.sid=c.sid and p.pid=c.pid and p.color='red';
```

2\. Encontrar los idp de los proveedores que provean alguna parte roja o verde

```sql
select distinct c.sid
from catalog c, parts p
where ( p.color='red' or p.color='green') and p.pid=c.pid;
```

3\. Encontrar los idp de los proveedores que provean alguna parte roja o vivan en
Av.9 de julio 2222

```sql
select distinct c.sid
from catalog c, parts p, suppliers s
where (p.color='red' or s.address like 'Av.9  de julio 2222' ) and s.sid=c.sid and p.pid=c.pid;
```

4\. Encontrar los idps de los proveedores que proveen alguna parte roja y alguna
parte verde.

```sql
select distinct c.sid
from catalog c, parts p
where c.pid=p.pid and p.color='red' and exists(select distinct c.sid
        from  parts p2
        where  c.pid=p2.pid and p.color='green');
```

5\. Encontrar os idps de los proveedores que proveen todas las partes.

```sql
select distinct s.sname
from suppliers s
where not exists(select p.pid
        from parts p
        where not exists ( select *
                from catalog c
                where p.pid=c.pid and c.sid=s.sid));
```

6\. Encontrar los idps de los proveedores que proveen todas las partes rojas.

```sql
select s.sname
from suppliers s
where not exists(select p.pid
        from parts p
        where p.color like 'red' and not exists (select *
                from catalog c1
                where  c1.pid=p.pid and c1.sid=s.sid ));
```

7\. Encontrar los idps de los proveedores que proveen todas las partes rojas o
verdes.

```sql
select s.sid
from suppliers s
where not exists(select p.pid
        from parts p
        where (p.color like'red' or p.color like 'green') and not exists (select *
                from catalog c1
                where c1.pid=p.pid and c1.sid=s.sid ));
```

8\. Encontrar los idps de los proveedores que proveen todas las partes rojas o
todas las partes verdes.

```sql
select s.sname
from suppliers s
where not exists(select p.pid
        from parts p
        where p.color like 'red' and not exists (select *
                from catalog c1
                where  c1.pid=p.pid and c1.sid=s.sid ))
union

select s.sname
from suppliers s
where not exists(select p.pid
        from parts p
        where p.color like 'green' and not exists (select *
                from catalog c1
                where  c1.pid=p.pid and c1.sid=s.sid ));
```

9\. Encontrar pares de idps tales que el proveedor con el primer idp vende más
caro alguna parte que el proveedor con el segundo idp

```sql
select distinct c.sid , c1.sid
from catalog c, catalog c1
where c.pid=c1.pid and c.sid<>c1.sid and c.cost > c1.cost;
```

10\. Encontrar los idpas de las partes que son proveídas por por al menos dos
proveedores diferentes.

```sql
select distinct c.pid
from catalog c, catalog c1
where c.sid<>c1.sid and c.pid=c1.pid;
```

11\. Encontrar los idpas de las partes mas caras que son proveídas por
proveedores llamados Juan García.

```sql
select c.pid, c.sid, max(cost)
from catalog c, suppliers s
where c.sid=s.sid and s.sname like ',Acme Widget Suppliers'
group by c.sid;
```

12\. Encontrar los idpas de las partes proveídas por todos los proveedores a
menos de \$200

```sql
select p.pid
from parts p
where not exists(
        select *
    from suppliers s
    where not exists(
            select *
                    from catalog c
                    where c.sid=s.sid and c.pid=p.pid and cost>=200));
```

### Punto 5

1\. Encuentre los eids de pilotos certificados para algún avión Boeing.

```sql
select distinct c.eid
from certified c, aircraft a
where c.aid=a.aid and a.aname like 'Boeing%';
```

2\. Encuentre los nombres de pilotos certificados para algún avión Boeing.

```sql
select distinct e.ename
from certified c, aircraft a, employees e
where c.aid=a.aid and c.eid=e.eid and a.aname like 'Boeing%';
```

3\. Encuentre los aids de todos los aviones que pueden ser usados para vuelos sin
parada desde Bonn hasta Madras.

```sql
select distinct a.aid
from aircraft a, flights f
where (f.origin like 'Los angeles' and f.destination like 'Chicago') and a.crusingrange >=f.distance;
```

4\. Identifique los vuelos que pueden ser piloteados por cada pilot cuyo salario
sea mayor a \$100,000.

```sql
select distinct f.flno
from flights f
where exists (select *
        from certified c, aircraft a, employees e
        where (c.aid=a.aid and c.eid=e.eid) and e.salary > 10000 and a.crusingrange>=f.distance );
```

5\. Encuentre los nombres de pilotos que pueden operar aviones con un rango mayor
a 3,000 millas pero que NO esten certificados para los aviones Boeing.

```sql
select distinct e.ename
from employees e, certified c, aircraft a
where c.eid=e.eid and c.aid=a.aid and a.crusingrange > 3000 and e.eid not in (select c.eid
        from certified c, aircraft a1
        where c.aid=a1.aid and a1.aname like '%Airbus%');
```

6\. Encuentre los eids de empleados que ganan el mayor salario.

```sql
select e.ename
from employees e
where e.salary= (select max(salary)
        from employees );
```

7\. Encuentre los eids de empleados que ganen el segundo mayor salario.

```sql
select e.eid
from employees e
where e.salary=(
        Select max(salary)
        from (select *      -- salarios sin el maximo--
          from employees e
          where e.eid not in (
                  select e.eid      -- salario maximo--
                  from employees e
                  where e.salary=(
                          select max(e.salary)
                          from employees e))) as primero);
```

8\. Encuentre los eids de empleados que están certificados para el mayor número
de aviones.

```sql
select c.eid
from certified c
group by c.eid
having count(c.aid)=(
        select  max(maximo.cantAviones)
        from (
            select eid , count(aid) as cantAviones
            from certified
            group by eid) as maximo);
```

9\. Encuentre los eids de los empleados que están certificados para exactamente 3
(tres) aviones.

```sql
select c.eid
from certified c
group by c.eid
having count(*)=3;
```

10\. Encuentre la cantidad total de dinero pagado en concepto de salario.

```sql
select sum(salary)
from employees;
```

11\. ¿Existe alguna secuencia de vuelos de Buenos Aires a Berlín? Cada vuelo en
la secuencia debe partir de la ciudad que es destino del vuelo anterior, y no
hay restricción en la cantidad de vuelos intermedios. Su consulta debe
determinar cuando existe alguna secuencia de vuelos desde Buenos Aires a Berlín
para alguna instancia de la relación Vuelos.

**No existe una forma de controlar la cantidad de viajes intermedios.**

## Ejercicio 2

Punto a

```sql
SELECT COUNT(DISTINCT (p.id-conductor))
FROM (participo p) INNER JOIN (accidente ac) ON (p.numero-informe=ac.numero-informe)
WHERE ac.fecha=1989;
```

Punto b

```sql
SELECT COUNT(*)
FROM (participo p) INNER JOIN (persona per) ON (p.id-conductor=per.id-conductor)
WHERE per.nombre=’Santos’;
```

Punto c

```sql
INSERT INTO `ej2`.`accidente` (`numero-informe`, `fecha`, `lugar`) VALUES ('22', 2018, 'Chaco');
```

<ins>Punto d</ins>

```sql
DELETE FROM `seguros`.`es_dueno` WHERE `idc`=(SELECT id-conductor FROM persona p WHERE p.nombre='Santos') and `matricula`=(SELECT matricula FROM coche c WHERE c.modelo='MAZDA');
```

Punto e

```sql
UPDATE `ej2`.`participo` SET `importe-danos`='3000' WHERE `coche`='CV 202 BD' AND `numero-informe`=`AR2197`;
```

## Ejercicio 3

```sql
/*Ejer 3 a*/
select e.nombreEmpleado
from empleado e inner join trabaja tr on e.nombreEmpleado = tr.nombreEmpleado
where tr.nombreEmpresa = 'banco importante';

/*Ejer 3 b*/
select e.nombreEmpleado, e.ciudad
from empleado e inner join trabaja tr on e.nombreEmpleado = tr.nombreEmpleado
where tr.nombreEmpresa='Banco';

/*Ejer 3 c*/
select e.nombreEmpleado, e.ciudad, e.calle
from empleado e inner join trabaja tr on e.nombreEmpleado = tr.nombreEmpleado
where tr.nombreEmpresa='Banco' and tr.sueldo>10000;

/*ejer 3 d*/
select e.nombreEmpleado
from (empleado e inner join trabaja tr on e.nombreEmpleado = tr.nombreEmpleado) inner join empresa em on em.nombreEmpresa = tr.nombreEmpresa
where e.ciudad = em.ciudad;

/*Ejercicio 3 e*/

select e.nombreEmpleado, jefe.nombreEmpleado
from (empleado e inner join jefe j on e.nombreEmpleado = j.nombreEmpleado) inner join empleado jefe on jefe.nombreEmpleado = j.nombreJefe
where e.ciudad = jefe.ciudad and e.calle = jefe.calle;

/*ejer 3 f*/
select e.nombreEmpleado
from empleado e
where not exists(
    select em.nombreEmpleado
    from empleado em inner join trabaja tr on em.nombreEmpleado = tr.nombreEmpleado
        where tr.nombreEmpresa = 'empresa a' and em.nombreEmpleado = e.nombreEmpleado);

select e.nombreEmpleado
from empleado e inner join trabaja tr on e.nombreEmpleado = tr.nombreEmpleado
where tr.nombreEmpresa != "empresa a";

/*Ejer 3 g*/


/*Ejer 3 h*/
select em.nombreEmpresa
from empresa em
where ciudad in (select em1.ciudad
            from empresa em1
            where em1.nombreEmpresa='Banco Pequeño');

/*Ejer 3 i*/
select e.nombreEmpleado
from empleados e
where e.sueldo > (Select avg(e1.sueldo) from empleados e1);
```

## Ejercicio 4

Punto a

```sql
UPDATE Empleado E
SET ciudad = 'Avila'
WHERE E.nombre_empleado='Santos';
```

Punto b

```sql
UPDATE Trabaja T
SET sueldo = round(sueldo*0.10+sueldo)
WHERE T.nombre_empresa='Banco';
```

Punto c

```sql
UPDATE Trabaja T INNER JOIN Jefe J
SET sueldo = round(sueldo*0.10+sueldo)
WHERE T.nombre_empresa='Banco';
```

Punto d

(Sin respuesta en el original.)

Punto e

```sql
DELETE FROM Trabaja
WHERE nombre_empresa='Banco';
```

## Ejercicio 5

*empleado (nombre-empleado, calle, ciudad)*\
*trabaja (nombre-empleado, nombre-empresa, sueldo)*\
*empresa (nombre-empresa, ciudad)*\
*jefe(nombre-empleado, nombre-jefe)*

```sql
SELECT j.nombre-jefe, AVG t.sueldo
FROM jefe j INNER JOIN trabaja t ON t.nombre-empleado=j.nombre-empleado
WHERE j.nombre-jefe= ´Jefe´
```

El sistema de base de datos no puede realizar actualizaciones sobre datos
calculados, se deben especificar los campos a actualizar y los valores nuevos a
insertar. Se debe realizar una selección de los datos a modificar primero, luego
intentar actualizar sobre la tabla filtrada.

## Ejercicio 6

```sql
select p.a1
from p, r1, r2
where p.a1 = r1.a1 or p.a1 = r2.a1
```

Esta consulta devuelve los valores p.a1 si o sólo si p.a1 se encuentra en la
tabla r1 ó si se encuentra en la tabla r2 y si los valores del campo a1 son
iguales. En caso de que el campo sea nulo en r1 pero no así en r2, devuelve la
tabla p con los campos de a1. Lo mismo si en r2 es nulo pero no así en r1. Si a1
tiene valor nulo en ambas tablas, no devuelve dicho valor

## Ejercicio 7

Supóngase que se tiene una relación nota (estudiante, puntuación) y que se
quiere clasificar a los estudiantes en función de la puntuación del modo
siguiente:

SS: si la puntuación es menor que 5\
AP: si la puntuación es mayor o igual que 5 y menor que 7\
NT: si la puntuación es mayor o igual que 7 y menor que 8,5\
SB: si la puntuación es mayor o igual que 8,5

Escríbanse consultas para hacer lo siguiente:

a. Mostrar la clasificación de cada estudiante, en términos de la relación
nota.\
b. Encontrar el número de estudiantes por clasificación.

En este punto consideramos que cada clasificación es una consulta distinta, y
que no es posible realizar la misma en una consulta, por lo que dividimos las
consultas por cada clasificación.

### Punto a

```sql
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
```

### Punto b

```sql
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
```

## Ejercicio 8

```sql
CREATE TABLE Empleado(
nombre_empleado varchar(20),
calle varchar (30),
ciudad varchar (30),
PRIMARY KEY (nombre_empleado)
);

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
```

## Ejercicio 9

Punto a

```sql
ALTER TABLE empleado e
ADD CHECK ( SELECT
            FROM (empresa empr INNER JOIN trabaja tra ON empr.nombre-empresa=tra.nombre-empresa)INNER JOIN
        empleado empl ON empl.nombre-empleado=tra.nombre-empleado
            WHERE e.nombre-empleado=tra.nombre-empleado AND empr.ciudad=empl.ciudad);
```

Punto b

```sql
ALTER TABLE empleado e
ADD CHECK ( SELECT
            FROM (jefe jef INNER JOIN trabaja tra ON jef.nombre-empleado=tra.nombre-empleado)INNER JOIN
        trabaja tra2 ON tra2.nombre-empleado=jef.nombre-jefe
            WHERE e.nombre-empleado=jef.nombre-empleado AND tra.sueldo<tra2.sueldo)
```
