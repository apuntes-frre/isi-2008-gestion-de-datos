# SQL: guía de trabajos prácticos 2018

> Transcripción íntegra de `Guia de TP 2018 - Unidad 5.pdf` (3 páginas),
> conservado en la carpeta 2018 de Gestión de Datos en OneDrive. La portada la
> titula «Unidad 5: SQL» y no imprime el año; los metadatos del PDF dicen
> LibreOffice 5.1, creado el 2018-05-22. Los 9 ejercicios se conservan sin
> resolver. [Procedencia y revisión](../../../resources/2018/fuentes.md).

Material relacionado:

- [Presentación de SQL (2018)](../teoria/sql-presentacion-2018-05-22.md).
- [Guía de ejercicios de álgebra relacional](algebra-relacional-guia-de-ejercicios.md),
  citada en el ejercicio 1.
- [Resolución de esta guía](sql-guia-de-tp-resuelta.md).

<!-- Fuente: Guia de TP 2018 - Unidad 5.pdf, página 1. -->

## Portada (página 1)

UNIVERSIDAD TECNOLÓGICA NACIONAL FACULTAD REGIONAL RESISTENCIA

![Emblema de la UTN de la portada](../../../resources/2018/sql-guia-logo-utn.png)

INGENIERÍA EN SISTEMAS DE INFORMACIÓN

GESTIÓN DE DATOS

GUÍA DE TRABAJOS PRÁCTICOS

Unidad 5: SQL

**Profesora de Teoría:** Ing. Carolina Orcola

**Jefe de T. P.:** Ing. Luis Eiman

**Auxiliar de T.P.:** Juan Carlos Fernández

<!-- Fuente: Guia de TP 2018 - Unidad 5.pdf, página 2. -->

## Ejercicios (páginas 2 y 3)

**1-** Dados los ejercicios 3 y 5 de la guía de álgebra relacional, resolver las
mismas consultas utilizando SQL.

**2-** Considerar el esquema de una base de datos de seguros siguiente, donde
las claves primarias se han subrayado.

- *persona (<ins>id-conductor</ins>, nombre, dirección)*
- *coche (<ins>matrícula</ins>, año, modelo)*
- *accidente (<ins>número-informe</ins>, fecha, lugar)*
- *es-dueño (<ins>id-conductor</ins>, <ins>matrícula</ins>)*
- *participó (<ins>id-conductor</ins>, <ins>coche</ins>,
  <ins>número-informe</ins>, importe-daños)*

Formúlense las siguientes consultas SQL para esta base de datos relacional:

- **a.** Buscar el número total de las personas cuyos coches se han visto
  involucrados en un accidente en 1989.
- **b.** Buscar el número de accidentes en los cuales se ha visto involucrado un
  coche perteneciente a «Santos».
- **c.** Añadir un nuevo accidente a la base de datos; supóngase cualquier valor
  para los atributos necesarios.
- **d.** Borrar el Mazda de «Santos».
- **e.** Actualizar el importe de daños del coche de matrícula «CV 202 BD» en el
  accidente con número de informe «AR2197» a \$3.000.

**3-** Considerar el esquema de una base de datos de empleados siguiente, donde
las claves primarias se han subrayado.

- *empleado (<ins>nombre-empleado</ins>, calle, ciudad)*
- *trabaja (<ins>nombre-empleado</ins>, <ins>nombre-empresa</ins>, sueldo)*
- *empresa (<ins>nombre-empresa</ins>, ciudad)*
- *jefe(<ins>nombre-empleado</ins>, <ins>nombre-jefe</ins>)*

Proporciónese una expresión SQL para cada una de las consultas siguientes:

- **a.** Buscar los nombres de todos los empleados que trabajan en el Banco
  Importante.
- **b.** Buscar los nombres y ciudades de residencia de todos los empleados que
  trabajan en el Banco Importante.
- **c.** Buscar los nombres, direcciones y ciudades de residencia de todos los
  empleados que trabajan en el Banco Importante y que ganan más de \$10.000.
- **d.** Buscar todos los empleados que viven en la ciudad de la empresa para la
  que trabajan.
- **e.** Buscar todos los empleados que viven en la misma ciudad y en la misma
  calle que sus jefes.
- **f.** Buscar todos los empleados que no trabajan en el Banco Importante.
- **g.** Buscar todos los empleados que ganan más que cualquier empleado del
  Banco Pequeño.
- **h.** Supóngase que las empresas pueden tener sede en varias ciudades. Buscar
  todas las empresas con sede en todas las ciudades en las que tiene sede el
  Banco Pequeño.
- **i.** Buscar todos los empleados que ganan más que el sueldo medio de los
  empleados de su empresa.
- **j.** Buscar la empresa que tiene el mayor número de empleados.
- **k.** Buscar la empresa que tiene el menor sueldo medio.
- **l.** Buscar aquellas empresas cuyos empleados ganan un sueldo más alto, en
  media, que el sueldo medio del Banco Importante.

**4-** Considerar el esquema de base de datos relacional siguiente:

- *empleado (<ins>nombre-empleado</ins>, calle, ciudad)*
- *trabaja (<ins>nombre-empleado</ins>, <ins>nombre-empresa</ins>, sueldo)*
- *empresa (<ins>nombre-empresa</ins>, ciudad)*
- *jefe(<ins>nombre-empleado</ins>, <ins>nombre-jefe</ins>)*

<!-- Fuente: Guia de TP 2018 - Unidad 5.pdf, página 3. -->

Formúlese una expresión en SQL para cada una de las siguientes consultas:

- **a.** Modificar la base de datos de forma que Santos viva en Ávila.
- **b.** Incrementar en un 10% el sueldo de todos los empleados del Banco
  Importante.
- **c.** Incrementar en un 10% el sueldo de todos los jefes del Banco
  Importante.
- **d.** Incrementar en un 10% el sueldo de todos los empleados del Banco
  Importante, a menos que su sueldo pase a ser mayor de \$100.000, en cuyo caso
  se incrementará su sueldo sólo en un 3%.
- **e.** Borrar todas las tuplas de la relación *trabaja* correspondientes a los
  empleados del Banco Importante.

**5-** Considérese la siguiente base de datos relacional:

- *empleado (<ins>nombre-empleado</ins>, calle, ciudad)*
- *trabaja (<ins>nombre-empleado</ins>, <ins>nombre-empresa</ins>, sueldo)*
- *empresa (<ins>nombre-empresa</ins>, ciudad)*
- *jefe(<ins>nombre-empleado</ins>, <ins>nombre-jefe</ins>)*

Utilizando SQL, defínase una vista que contenga *nombre-jefe* y el sueldo medio
de todos los empleados que trabajan para ese jefe. Explíquese por qué el sistema
de base de datos no debería permitir que las actualizaciones se expresaran en
términos de esta vista.

**6-** Considérese la consulta SQL

```sql
select p.a1
from p, r1, r2
where p.a1 = r1.a1 or p.a1 = r2.a1
```

¿Bajo qué condiciones la consulta anterior devuelve los valores de *p.a*1 que
están tanto en *r*1 como en *r*2? Examínense cuidadosamente los casos en los que
*r*1.*a*1 o *r*2.*a*2 pueden ser nulos.

**7-** Supóngase que se tiene una relación *nota (estudiante, puntuación)* y que
se quiere clasificar a los estudiantes en función de la puntuación del modo
siguiente:

- SS: si la puntuación es menor que 5
- AP: si la puntuación es mayor o igual que 5 y menor que 7
- NT: si la puntuación es mayor o igual que 7 y menor que 8,5
- SB: si la puntuación es mayor o igual que 8,5

Escríbanse consultas para hacer lo siguiente:

- **a.** Mostrar la clasificación de cada estudiante, en términos de la relación
  *nota*.
- **b.** Encontrar el número de estudiantes por clasificación.

**8-** Dada la definición de esquema SQL para la base de datos de empleados
siguiente, elíjase un dominio apropiado para cada atributo y una clave primaria
para cada esquema de relación.

- *empleado (nombre-empleado, calle, ciudad)*
- *trabaja (nombre-empleado, nombre-empresa, sueldo)*
- *empresa (nombre-empresa, ciudad)*
- *jefe(nombre-empleado, nombre-jefe)*

**9-** Escríbanse condiciones **check** para el esquema del ejercicio anterior
para asegurar que:

- **a.** Cada empleado trabaja para una empresa con sede en la ciudad de
  residencia del empleado.
- **b.** Ningún empleado gana un sueldo mayor que el de su jefe.
