UNIVERSIDAD TECNOLÓGICA NACIONAL
FACULTAD REGIONAL RESISTENCIA

INGENIERÍA EN SISTEMAS
DE INFORMACIÓN

GESTIÓN DE DATOS

APUNTES TEÓRICOS

Unidad 6: SQL

Profesor Teoría:  Ing.  Carolina Orcola
Jefe de T. P.: Ing. Luis Eiman
Auxiliar de T.P.: Juan Carlos Fernandez

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Índice

Unidad VI: SQL ............................................................................................................................... 3

Introducción ................................................................................................................................ 3

Formas de las consultas SQL Básicas ........................................................................................ 4

Ejemplos de consultas básicas de SQL................................................................................... 7

Expresiones y cadenas de caracteres en la orden SELECT ..................................................... 8

Subconsultas o Consultas Anidadas ........................................................................................... 9

Otros predicados ......................................................................................................................... 9

UNION, INTERSECT y EXCEPT .............................................................................................. 11

Consultas Anidadas .................................................................................................................. 15

Consultas anidadas correlacionadas ..................................................................................... 15

Más ejemplos de consultas anidadas .................................................................................... 16

Operadores de agregación ........................................................................................................ 17

Ordenación de datos resultantes ............................................................................................... 19

La cláusula GROUP BY y HAVING ............................................................................................. 19

Más ejemplos de consultas de agregación ............................................................................ 20

Valores nulos ............................................................................................................................ 22

Comparaciones que emplean valores nulos .......................................................................... 22

Las conectivas lógicas AND, OR y NOT ................................................................................ 22

Consecuencias para las estructuras de SQL ......................................................................... 23

Reuniones externas .............................................................................................................. 23

Desactivación de valores nulos ............................................................................................. 23

JOINs o Reuniones ................................................................................................................... 24

Reunión interna - cláusulas inner join / on ............................................................................. 24

Reunión externa - left outer join / right outer join ................................................................... 24

¿Que trae de nuevo SQL Server 2008? ....................................... ¡Error! Marcador no definido.

Bibliografía .................................................................................................................................... 26

Ing. Carolina Orcola                                                Año 2010                                                                       Página  2

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Unidad VI: SQL

El  Lenguaje  Estructurado  de  Consultas  (Structured  Query  Lenguage,  SQL)  es  el  lenguaje
comercial de base de datos relacionales más utilizado.

Los orígenes del SQL están ligados a los de las bases de datos relacionales. En 1970 E. F. Codd
propone el modelo relacional y asociado a éste un sublenguaje de acceso a los datos basado en
el cálculo de predicados. Basándose en estas ideas, los laboratorios de IBM definen el lenguaje
SEQUEL (Structured English QUEry Language) que más tarde sería ampliamente implementado
por  el  SGBD  (Sistemas  Gestores  de  Bases  de  Datos)  experimental  System  R,  desarrollado  en
1977 también por IBM. Sin embargo, fue Oracle quien lo introdujo por primera vez en 1979 en un
programa comercial.

El  SEQUEL  terminaría  siendo  el  predecesor  de  SQL,  siendo  éste  una  versión  evolucionada  del
primero. El SQL pasa a ser el lenguaje por excelencia de los diversos SGBD relacionales surgidos
en los años siguientes y es por fin estandarizado en 1986 por el ANSI, dando lugar a la primera
versión  estándar  de  este  lenguaje,  el  "SQL-86"  o  "SQL1".  Al  año  siguiente  este  estándar  es
también adoptado por la ISO.

Sin  embargo,  este  primer  estándar  no  cubre  todas  las  necesidades  de  los  desarrolladores  e
incluye funcionalidades de definición de almacenamiento que se consideraron suprimir. Así que en
1992 se lanza un nuevo estándar ampliado y revisado del SQL llamado "SQL-92" o "SQL2".

En la actualidad el SQL es el estándar de facto de la inmensa mayoría de los SGBD comerciales.
Y,  aunque  la  diversidad  de  añadidos  particulares  que  incluyen  las  distintas  implementaciones
comerciales del lenguaje es amplia, el soporte al estándar SQL-92 es general y muy amplio.

El ANSI SQL sufrió varias revisiones y agregados a lo largo del tiempo:

Alias  Comentarios

Año  Nombre
1986  SQL-86
1989  SQL-89
1992  SQL-92
1999  SQL:1999   SQL2000  Se agregaron expresiones regulares, consultas recursivas (para relaciones

SQL-87  Primera publicación hecha por ANSI. Confirmada por ISO en 1987.

Revisión menor.
SQL2  Revisión mayor.

2003  SQL:2003

2006  SQL:2006

2008  SQL:2008

Introducción

jerárquicas), triggers y algunas características orientadas a objetos.
Introduce algunas características de XML, cambios en las funciones,
estandarización del objeto sequence y de las columnas autonumericas. (Ver
Eisenberg et al.: SQL:2003 Has Been Published.)
ISO/IEC 9075-14:2006 Define las maneras en las cuales el SQL se puede utilizar
conjuntamente con XML. Define maneras importar y guardar datos XML en una
base de datos SQL, manipulándolos dentro de la base de datos y publicando el
XML y los datos SQL convencionales en forma XML. Además, proporciona
facilidades que permiten a las aplicaciones integrar dentro de su código SQL el uso
de XQuery, lenguaje de consulta XML publicado por el W3C (World Wide Web
Consortium) para acceso concurrente a datos ordinarios SQL y documentos XML.
Permite el uso de la cláusula ORDER BY fuera de las definiciones de los cursores.
Incluye los disparadores del tipo INSTEAD OF. Añade la sentencia TRUNCATE.

El lenguaje SQL tiene varios aspectos diferentes:

  Lenguaje  de  Manipulación  de  Datos  (LMD).  Este  subconjunto  de  SQL  permite  a  los

usuarios formular consultas e insertar, eliminar y modificar filas.

  Lenguaje de  Definición  de  Datos  (LDD).  Este subconjunto de  SQL  soporta la creación,
eliminación  y  modificación  de  definiciones  de  tablas  y  vistas.  Se  pueden  definir
restricciones  de  integridad  para  las  tablas,  ya  sea  en  el  momento  de  crearlas  o
posteriormente.

  Disparadores  y  restricciones  de  integridad  avanzadas.  Las  normas  de  SQL:1999  ya
incluyen  soporte  para  los  disparadores  (Triggers),  que  son  acciones  ejecutadas  por  el
SGBD  siempre  que  las  modificaciones  de  la  base  de  datos  cumplen  las  condiciones
especificadas en el disparador.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  3

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

  SQL  incorporado  y  SQL  dinámico.  Las  características  de  SQL  incorporado  permiten

llamar al código SQL desde lenguajes anfitriones como C o Cobol.

  Ejecución  cliente-servidor  y  acceso  a  bases  de  datos  remotas.  Estas  órdenes
controlan el modo en que los programas de aplicación cliente pueden conectarse con los
servidores de la base de datos de SQL o tener acceso a los datos de la base de datos a
través de la red.

  Gestión  de  transacciones.  Diversas  órdenes  permiten  que  los  usuarios  controlen  de

manera explícita aspectos del modo en que se deben ejecutar las transacciones.

  Seguridad. SQL ofrece mecanismos para controlar el acceso de los usuarios a los objetos

de datos, como tablas y vistas.

  Características  avanzadas.  Las  normas  SQL:1999  incluyen  características  orientadas  a
objetos,  consultas  de  apoyo  a  decisiones,  y  también  aborda  áreas  emergentes  como  la
minería de datos, datos espaciales y gestión de datos de texto y XML.

Las consultas que se van a usar de ejemplo emplean las tablas ya usadas en la unidad anterior,
es decir:

Marineros (idm: integer, nombrem: string, categoria: integer, edad: real)

Barcos (idb: integer, nombreb: string, color: string)

Reservas (idm: integer, idb: integer, fecha: date)

Se usan los ejemplares M3 y R2 de Marineros y Reservas respectivamente.

R2

idm
22
22
22
22
31
31
31
64
64
74

idb
101
102
103
104
102
103
104
101
102
103

fecha
10/10/2008
10/10/2008
10/8/2008
10/7/2008
11/10/2008
11/6/2008
11/12/2008
9/5/2008
9/8/2008
9/8/2008

M3

nombrem

idm
22  Dominguez
29  Barvo
Lorca
31
32  Alández
58  Rubio
64  Horacio
71  Zuazo
74  Horacio
85  Arturo
95  Benito

categoria
7
1
8
8
10
7
10
9
3
3

edad
45,0
33,0
55,5
25,5
35,0
35,0
16,0
35,0
25,5
63,5

B1

nombreb
idb
Intrépido
101
Intrépido
102
103  Campeón
104  Místico

color
azul
rojo
verde
rojo

Formas de las consultas SQL Básicas

La forma básica de las consultas de SQL son:

SELECT [DISTINCT] lista-de-selección
FROM  lista-de-tablas
WHERE  condición

Todas  las  consultas  deben  tener  una  cláusula  SELECT,  que  especifica  las  columnas  que  se
deben conservar en el resultado, y una cláusula FROM, que especifica un producto cartesiano de
las  tablas  que  allí  se  enuncian.  La  cláusula  opcional  WHERE  especifica  las  condiciones  de
selección para las tablas indicadas en FROM.
Una consulta así, intuitivamente, corresponde a una expresión del álgebra relacional que implica
selecciones,  proyecciones  y  productos  cartesianos.  La  estrecha  relación  entre  SQL  y  el  álgebra

Ing. Carolina Orcola                                                Año 2010                                                                       Página  4

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
relacional es la base de la optimización de las consultas en los SGBD relacionales. En realidad,
los  planes  de  ejecución  de  las  consultas  SQL  se  presentan  mediante  una  variación  de  las
expresiones del álgebra relacional.
Consideremos ejemplos sencillos para comprender mejor las consultas:

(C15) Averiguar el nombre y la edad de todos los marineros.

SELECT DISTINCT M.nombrem, M.edad
FROM  Marineros M

La respuesta es un conjunto de filas, cada una de ellas es un par (nombrem, edad). Si dos o más
marineros tienen el mismo nombre y la misma edad, la respuesta sigue teniendo una sola pareja
con ese nombre y esa edad. Esta consulta es equivalente a la aplicación del operador proyección
del álgebra relacional.

Si se omite la palabra clave DISTINCT, se obtendrá una copia de la fila (n,e) por cada marinero
de nombre n y edad e; la respuesta sería un  multiconjunto de filas. Los multiconjuntos se parecen
a los conjuntos  en que son  colecciones  desordenadas de  elementos,  pero  en  los multiconjuntos
puede  haber  varias  copias  de  cada  elemento  y  el  número  de  copias  es  significativo  –dos
multiconjuntos pueden tener  los mismos  elementos y  ser  diferentes  porque el  número de  copias
de algún elemento sea diferente-. Por ejemplo, {a,b,b} y {b,a,b} denotan el mismo multiconjunto, y
son diferentes del multiconjunto {a,a,b}.

La respuesta a esta consulta, con o sin la palabra DISTINCT, para el ejemplar M3 de Marinero
se puede ver en las figuras siguientes. La única diferencia es que la tupla de Horacio aparece dos
veces  si  se  omite  DISTINCT,  esto  se  debe  a  que  hay  dos  marineros  que  se  llaman  Horacio  y
tienen 35 años.

nombrem

Dominguez
Barvo
Lorca
Alández
Rubio
Horacio
Zuazo
Horacio
Arturo
Benito

edad
45,0
33,0
55,5
25,5
35,0
35,0
16,0
35,0
25,5
63,5

nombrem

Dominguez
Barvo
Lorca
Alández
Rubio
Horacio
Zuazo
Arturo
Benito

edad
45,0
33,0
55,5
25,5
35,0
35,0
16,0
25,5
63,5

       Respuesta a C15 sin DISTINCT                             Respuesta a C15

La siguiente consulta es equivalente a una aplicación del operador selección del álgebra
relacional.

(C11) Averiguar todos los marineros con categoría superior a 7.

{ M | M  Marineros  M.categoria > 7}   En Cálculo Relacional de Tuplas

SELECT  M.idm, M.nombrem, M.categoría, M.edad
FROM  Marineros AS M
WHERE M.categoría > 7

Esta consulta emplea la palabra clave opcional AS para introducir una variable de rango. Cuando,
como en este caso, se desea recuperar todas las columnas de una tabla, SQL ofrece la alternativa
de  abreviar  la  consulta  escribiendo  directamente  SELECT  *.  Esta  notación  resulta  útil  para  las
consultas interactivas, pero no es una buena práctica para las consultas que se pretende volver a
utilizar y conservar, ya que el esquema del resultado no queda claro desde la propia consulta; hay
que hacer referencia al propio esquema  de la tabla Marineros subyacente.

La cláusula SELECT  se emplea realmente para hacer proyecciones, mientras que las selecciones
en el sentido del álgebra relacional se expresan mediante la cláusula WHERE. Este desajuste entre
la denominación de los operadores selección y proyección del álgebra relacional  y la sintaxis de
SQL es un accidente histórico desafortunado.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  5

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Veamos la sintaxis de las consultas e SQL con mayor detalle:

  La lista-de-tablas de la cláusula FROM  es una lista de nombres de tablas. El nombre de
cada  tabla  puede  ir  seguido  de  una  variable  de  rango;  las  variables  de  rango  resultan
especialmente útiles cuando el mismo nombre de tabla aparece más de una vez en esta
lista.

  La lista-de-selección es una lista de (expresiones que implican a) nombres de columna de
tabla que se mencionan en la lista-de-selección. A los nombres de columna se le pueden
anteponer una variable de rango.

  La  condición  de  la  cláusula  WHERE    es  una  combinación  booleana  (es  decir,  una
expresión que emplea las conectivas lógicas AND, OR y NOT) de condiciones de la forma
expresión op expresión, donde op es alguno de los operadores de comparación {<, <=, =,
<>,  >=,  >}.  Una  expresión  es  un  nombre  de  columna,  una  constante  o  una  expresión
(aritmética o cadena de caracteres).

  La palabra clave DISTINCT  es opcional. Indica que la tabla calculada como respuesta a
la  consulta  no  debe  contener  duplicados,  es  decir,  dos  copias  de  la  misma  fila.  El  valor
predeterminado es que los duplicados no se eliminan.

Aunque las reglas anteriores describen (de manera informal) la sintaxis de las consultas básicas
de SQL, no indican el significado de las consultas. La respuesta de las consultas es en si misma
una relación –que es un multiconjunto de filas en SQL_ cuyo contenido se puede comprender
considerando la siguiente estrategia de evaluación conceptual:

1.  Calcular el producto cartesiano de las tablas de la lista-de-tablas.

2.  Eliminar filas del producto cartesiano que no cumplan las condiciones de condición.

3.  Eliminar todas las columnas que no aparezcan en la lista-de-selección.

4.  Si se especifica DISTINCT, eliminar las filas repetidas.

Esta sencilla estrategia de evaluación conceptual explicita las filas que deben encontrarse en la
respuesta a la consulta. Sin embargo, es probable que sean bastante ineficiente.

(C1)  Averiguar el nombre de los marineros que han reservado el barco 103

En álgebra relacional era:

idb=103 (nombrem (Reservas   Marineros) )

En SQL es:

SELECT M.nombrem
FROM  Marineros M, Reservas R
WHERE M.ide = R.ide AND R.ide = 103

Usamos para esta consulta los ejemplares R3 de reservas y M4 de Marineros (para hacer menos
tedioso el ejemplo).
M4
idm
22  Dominguez
31
Lorca
58  Rubio

categoria
7
8
10

fecha
10/10/2008
11/12/2008

edad
45,0
55,5
35,0

idb
101
103

Idm
22
58

nombrem

R3

El primer paso es crear el producto cartesiano de M4XR3, que podemos ver en la siguiente figura.

nombrem

idm
22  Dominguez
22  Dominguez
Lorca
31
31
Lorca
58  Rubio
58  Rubio

categoria
7
7
8
8
10
10

edad
45,0
45,0
55,5
55,5
35,0
35,0

Idm
22
58
22
58
22
58

idb
101
103
101
103
101
103

fecha
10/10/2008
11/12/2008
10/10/2008
11/12/2008
10/10/2008
11/12/2008

Ing. Carolina Orcola                                                Año 2010                                                                       Página  6

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
El segundo paso es aplicar la condición M.ide = R.ide AND R.ide = 103. Este paso elimina todas
las filas del ejemplar resultante del producto cartesiano visto antes menos la última.

idm
58  Rubio

Nombrem

categoria
10

edad
35,0

Idm
58

idb
103

fecha
11/12/2008

El  tercer  paso  es  eliminar  las  columnas  no  deseadas;  solo  aparece  nombrem  en  la  cláusula
SELECT. Este paso deja entonces una sola columna y una sola fila, que es la siguiente:

nombrem

Rubio

Ejemplos de consultas básicas de SQL

A  continuación  se  presentan  varios  ejemplos  de  consultas  SQL,  muchas  de  las  cuales  ya  se
expresaron anteriormente en el álgebra relacional y el cálculo relacional. El primer ejemplo ilustra
que el empleo de variables de rango es opcional, a menos que sea necesario para resolver alguna
ambigüedad.  La  consulta  C1,  que  ya  se  vió  antes,  también  se  puede  expresar  de  la  siguiente
manera:

SELECT nombrem
FROM  Marineros M, Reservas R
WHERE M.ide = R.ide AND ide = 103

Sólo  hay  que  cualificar  las  apariciones  de  idm,  ya  que  esta  columna  aparece  en  las  dos  tablas
vinculadas a la consulta. Otra manera equivalente de escribir esta consulta sería:

SELECT nombrem
FROM  Marineros, Reservas
WHERE Marineros.ide = Reservas.ide AND R.ide = 103

Esta  consulta  muestra  que  los  nombres  de  las  tablas  se  pueden  emplear  de  manera  implícita
como variables de fila. Sólo hace falta introducir variables de rango de manera explícita cuando la
cláusula  FROM    contiene  más  de  una  aparición  de  una  misma  relación.  No  obstante,  se
recomienda  el  empleo  explícito  de  las  variables  de  rengo  y  la  condición  completa  de  todas  las
apariciones  de  las  columnas  con  una  variable  de  rango  para  mejorar  la  legibilidad  de  las
consultas.

(C16) Averiguar el idm de los marineros que han reservado barcos rojos.

SELECT R.idm
FROM  Barcos B, Reservas R
WHERE B.idb = R.idb AND B.color = “rojo”

Esta  consulta  contiene  una  reunión  de  dos  tablas,  seguida  de  una  selección  del  color  de  los
barcos. Se puede pensar en B y en R como en filas de las tablas correspondientes que “prueban”
que un marinero con idm = R.idm reservó un barco B.idb rojo.

(C2) Averiguar el nombre de los marineros que han reservado barcos rojos.

En álgebra relacional:

nombrem (σcolor=”rojo” (Barcos)   Reservas   Marineros)

En SQL:

SELECT M.nombrem
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm = R.idm  AND R.idb = B.idb AND B.color = “rojo”

Esta  consulta  contiene  una  reunión  de  tres  tablas  seguida  de  una  selección  del  color  de  los
barcos. La reunión con Marineros permite averiguar el nombre del marinero que, según la tupla R
de Reservas, ha reservado el barco rojo descripto por la tupla B.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  7

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

(C3) Averiguar el color de los barcos reservados por López.

En álgebra relacional:

color (σnombrem=”López” (Marineros)   Reservas   Barcos)

En SQL:

SELECT B.color
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm = R.idm  AND R.idb = B.idb AND M.nombre = “López”

Esta consulta es muy parecida a la anterior. Obsérvese que, en general, puede que haya más de
un  marinero  llamado  López  (ya  que  nombrem  no  es  clave  de  Marineros);  esta  consulta  sigue
siendo correcta en el sentido que devolverá el color de los barcos reservados por algún López, si
es que hay varios marineros llamados López.

(C4) Averiguar el nombre de los marineros que han reservado, como mínimo, un barco.

En álgebra relacional:

En SQL:

nombrem (Marineros   Reservas)

SELECT M.nombrem
FROM  Marineros M, Reservas R
WHERE M.idm = R.idm

La reunión de Marineros y Reservas garantiza que, para cada nombrem seleccionado, el marinero
haya hecho alguna reserva. (Si algún marinero no ha hecho ninguna reserva, el segundo paso de
la  estrategia  de  evaluación  conceptual  eliminará  todas  las  filas  del  producto  cartesiano  que
impliquen a ese marinero).

Expresiones y cadenas de caracteres en la orden SELECT

SQL soporta una versión más general de la lista-de-selección que una mera lista de columnas.
Cada elemento de una lista-de-selección puede ser de la forma expresión AS nombre-columna,
donde expresión es cualquier expresión aritmética o de cadena de caracteres para los nombres de
las columnas (posiblemente con variables de rango antepuestas) y constantes, y nombre-columna
es un nombre nuevo para esa columna en el resultado de la consulta.

También puede contener agregados como sum y count, entre otros. La norma de SQL también
incluye  expresiones  para los valores  de fecha  y  de  hora, que  no  se tratarán.  Aunque  no forman
parte de  la norma de  SQL, muchas  implementaciones soportan también  el  empleo  de funciones
predefinidas como sqrt, sen y mod.

(C17)  Calcular  el  incremento  de  la  categoría  de  las  personas  que  han  navegado  en  dos  barcos
diferentes el mismo día.

SELECT M.nombrem, M.categoría+1 AS categoría
FROM  Marineros M, Reservas R1, Reservas R2
WHERE  M.idm  =  R1.idm  AND  M.idm  =  R2.idm    AND  R1.fecha  =  R2.fecha

AND  R1.idb <> R2.idb

Además, cada elemento de la condición puede ser tan general como expresión1 = expresión2.

SELECT M1.nombrem  AS nombre1, M2.nombrem  AS nombre2
FROM  Marineros M1, Marineros M2
WHERE 2*M1.categoría = M2.categoría-1

Para  la  comparación  de  cadenas  de  caracteres  se  pueden  emplear  las  operaciones  de
comparación (=, <, >, etc.) con el orden de la cadena de caracteres determinado alfabéticamente,
como  de  costumbre.  Si  hay  que  ordenar  las  cadenas  de  caracteres  de  manera  diferente  a  la
alfabética (por ejemplo, ordenar las cadenas de caracteres que denotan el nombre de los meses
según su orden en el calendario enero, febrero, marzo, etc.), SQL soporta el concepto general de

Ing. Carolina Orcola                                                Año 2010                                                                       Página  8

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
ordenación, u orden de colocación, para los conjuntos de caracteres. La ordenación permite que
el usuario especifique los caracteres que son “menores que” otros y ofrece gran flexibilidad para la
manipulación de cadenas de caracteres.

Además,  SQL  ofrece  soporte  para  la  comparación  de  estructuras  mediante  el  operador  LIKE,
junto con  el  uso  de  los  símbolos  %  (que  sustituye a  cero  o  más caracteres  arbitrarios)  y  _ (que
sustituye  exactamente  a  un  carácter  arbitrario).  Así  “_AB%”  denota  una  estructura  que  coincida
con todas las cadenas de caracteres que contienen, como mínimo, tres caracteres, en las que el
segundo y tercer carácter son A y B respectivamente. Observemos que, a diferencia de los demás
operadores  de  comparación,  los  espacios  en  blanco  pueden  resultar  significativos  para  el
operador  LIKE  (dependiendo  de  la  ordenación  del  conjunto  de  caracteres  subyacentes).  Por  lo
tanto,  “Jesús”=”Jesús  “  es  verdadero,  mientras  que  “Jesús”  LIKE  ”Jesús  “  es falso.  Veamos  un
ejemplo de LIKE.

(C18)  Averiguar  la  edad  de  los  marineros  cuyo  nombre  comienza  con  B,  acaba  con  O  y  tiene
como mínimo seis caracteres.

SELECT M.edad
FROM  Marineros M
WHERE M.nombrem  LIKE “B_%_ _ _O”

Subconsultas o Consultas Anidadas

Al  escribir  una  consulta,  a  veces  hay  que  expresar  una  condición  que  hace  referencia  a  alguna
tabla  que,  a  su  vez,  se  debe  calcular.  Las  consultas  empleadas  para  calcular  esas  tablas  son
subconsultas y aparecen como parte de las consultas principales.
Una subconsulta es una consulta incluida en una cláusula WHERE o HAVING(1) de otra consulta.
En algunas ocasiones, para expresar ciertas condiciones no hay más remedio que obtener el valor
que buscamos como resultado de una consulta.

SELECT M.nombrem
FROM  Marineros M
WHERE M.categoria = (SELECT MAX M.categoria

 FROM  Marineros M)

En  este  ejemplo,  queremos  ver  los  nombre  de  los  marineros  que  tienen  la  categoría  máxima,  y
para  ello  debemos  primero  averiguar  cuál  es  esa  categoría  máxima  (usamos  la  función  de
agregación MAX que veremos luego).

 (1) La cláusula HAVING la vemos después.

Otros predicados

Predicado BETWEEN

Para expresar una condición que quiere encontrar un valor entre unos límites concretos podemos
usar el predicado BETWEEN.

SELECT columnas
FROM  tabla
WHERE columna  BETWEEN límite1 AND límite2

Por ejemplo, queremos ver los marineros cuyo rango de edad está entre 20 y 35 años:

SELECT M.nombrem
FROM  Marineros M
WHERE M.edad  BETWEEN 20 AND 35

Ing. Carolina Orcola                                                Año 2010                                                                       Página  9

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Predicado IN

Para  comprobar  si  un  elemento  coincide  con  los  elementos  de  una  lista utilizaremos  IN,  y  para
ver si no coinciden NOT IN.

SELECT columnas
FROM  tabla
WHERE columna  [NOT] IN  (valor1 … valorN)

Por ejemplo, queremos ver los marineros cuya edad sea 15, 20 y 30 años:

SELECT M.nombrem
FROM  Marineros M
WHERE M.edad  IN (15, 20, 35)

Predicado IS

Para comprobar si un valor es nulo utilizamos IS NULL, y para averiguar si no es nulo, IS NOT
NULL. El formato es:

SELECT columnas
FROM  tabla
WHERE columna  IS [NOT] NULL

Como  ejemplo,  supongamos  que  la  tabla  Marineros  tiene  una  columna  más  hijos,  en  la  que  se
pone la cantidad de hijos que tiene. Bajo ese supuesto, se puede escribir la consulta pidiendo el
nombre de los marineros sin hijos, así:

SELECT M.nombrem
FROM  Marineros M
WHERE M.hijos  IS NULL

Predicado ALL o ANY/SOME

Para ver si una columna cumple con la condición de que todas sus filas (ALL) o algunas de sus
filas (ANY/SOME) satisfaga una condición, podemos escribir:

SELECT columnas
FROM  tabla
WHERE columna  operador_comparación  {ALL/ANY/SOME} subconsulta

Por  ejemplo,  escribimos  una  consulta  que  liste  los  idb  de  los  barcos  que  fueron  reservados  por
marineros todos mayores de 18 años:

SELECT R.idb
FROM  Reserrvas R
WHERE R.idm =  ALL SELECT M.idm

  FROM  Marineros M
  WHERE M.edad>=18

Y para ejemplificar el uso de ANY/SOME, podemos pedir  que liste los idb de los barcos que fueron
reservados por al menos un o algún marinero mayor de 18 años:

SELECT R.idb
FROM  Reserrvas R
WHERE R.idm =  ANY  SELECT M.idm

  FROM  Marineros M
  WHERE M.edad>=18

Ing. Carolina Orcola                                                Año 2010                                                                       Página  10

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Predicado EXIST

Para comprobar si una consulta produce alguna fila de resultado, es decir, si existe un resultado,
podemos  usar  el  predicado  EXISTS.  Así  mismo,  para  comprobar  si  no  existe  se  aplicaría  NOT
EXISTS.

SELECT columnas
FROM  tabla
WHERE [NOT] EXISTS  subconsulta

Por ejemplo, para mostrar el idm y nombre de los marineros que reservaron un bote determinado
podemos también escribir:

SELECT M.idm, M.nombrem
FROM  Marineros M
WHERE EXISTS  SELECT R.idm

   FROM  Reserrvas R
   WHERE R.idb = “103”

UNION, INTERSECT y EXCEPT

SQL ofrece tres estructuras para la manipulación de conjuntos que amplía la forma básica de las
consultas presentadas hasta aquí. Dado que la respuesta a cada consulta es un multiconjunto de
filas,  resulta  natural  considerar  el  empleo  de  operaciones  como  la  unión,  la  intersección  y  la
los  nombres  de  UNION,
diferencia  de  conjuntos.  SQL  soporta  estas  operaciones  con
INTERSECT  y  EXCEPT.  SQL  ofrece  también  aplicar  otras  operaciones  con  conjuntos,    que
hemos visto antes, como: IN (para comprobar si un elemento pertenece a un conjunto dado), ANY
y ALL (para comparar un valor con los elementos de un conjunto dado) y EXIST (para comprobar
si un conjunto está vacío).

La cláusula UNION puede unir dos o más sentencias SELECT FROM. Su formato es:

SELECT columna
FROM  tabla
 [WHERE condiciones]

UNION [ALL]

SELECT columna
FROM  tabla
 [WHERE condiciones]

Si  ponemos  la  opción  ALL,  aparecerán  todas  las  filas  obtenidas  a  causa  de  la  unión.  No  la
pondremos si queremos eliminar las filas repetidas. Las tablas resultantes de las sentencias a unir
deben ser compatibles con la unión.

Consideremos la siguiente consulta:
(C5) Averiguar el nombre de los marineros que han reservado barcos rojos o verdes.

SELECT M.nombrem
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm=R.idm  AND R.idb=B.idb
      AND (B.color=”rojo”  OR  B.color=”verde”)

Esta consulta se expresa fácilmente usando el operador OR en la cláusula WHERE. Sin embargo,
la siguiente consulta, que es idéntica salvo por el empleo de “y” en lugar de “o” resulta mucho más
difícil:

(C6) Averiguar el nombre de los marineros que han reservado barcos rojos y verdes.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  11

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Si simplemente se tuviera que sustituir el operador OR en la cláusula WHERE por el de AND, en
analogía con la expresión escrita de las consultas, se recuperaría el nombre de los marineros que
han reservado barcos que son a la vez rojos y verdes (no los que reservaron barcos rojos y barcos
verdes). La restricción de integridad de que idb es clave de Barcos indica que el mismo barco no
puede tener dos colores y, por lo tanto, la variante de la consulta anterior daría siempre resultados
vacíos. La respuesta correcta de la consulta C6 es la siguiente:

SELECT M.nombrem
FROM  Marineros M, Reservas R1, Barcos B1, Reservas R2, Barcos B2
WHERE M.idm=R1.idm  AND R1.idb=B1.idb
      AND M.idm=R2.idm  AND R2.idb=B2.idb
               AND B1.color=”rojo”  AND  B2.color=”verde”

Se puede pesnar en R1 y en B1 como en filas que prueban que el mariner  M.idm ha reservado
barcos  rojos;  y  de  manera  parecida,  R2  y  B2  prueban  que  el  mismo  marinero  ha  reservado
también  barcos  verdes.  M.nombrem  no  se  incluye  en  el  resultado  a  menos  que  se  encuentren
cinco filas como M, R1, B1, R2 y B2.

La consulta anterior es difícil de comprender (y también ineficiente de ejecutar). Una solución más
adecuada para estas dos consultas sería emplear UNION e INTERSECT.

Así, la consulta C5 se puede escribir:

SELECT M.nombrem
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm=R.idm  AND R.idb=B.idb
      AND B.color=”rojo”

UNION

SELECT M2.nombrem
FROM  Marineros M2, Reservas R2, Barcos B2
WHERE M2.idm=R2.idm  AND R2.idb=B2.idb
      AND B2.color=”verde”

Esta consulta indica que se desea la unión del conjunto de marineros que han reservado barcos
rojos con el conjunto de marineros que han reservado barcos verdes.

En completa simetría, la consulta C6 se escribiría:

SELECT M.nombrem
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm=R.idm  AND R.idb=B.idb
      AND B.color=”rojo”

INTERSECT

SELECT M2.nombrem
FROM  Marineros M2, Reservas R2, Barcos B2
WHERE M2.idm=R2.idm  AND R2.idb=B2.idb
     AND B2.color=”verde”

La cláusula INTERSECT genera la intersección entre dos o más sentencias SELECT FROM. Su
formato es:

SELECT columna
FROM  tabla
 [WHERE condiciones]

INTERSECT [ALL]

SELECT columna
FROM  tabla

Ing. Carolina Orcola                                                Año 2010                                                                       Página  12

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

 [WHERE condiciones]

Si ponemos la opción ALL, aparecerán todas las filas obtenidas a partir de la intersección. No la
pondremos si queremos eliminar las filas repetidas.

Las tablas resultantes de las sentencias a unir deben ser compatibles con la unión.

      Intersección utilizando IN

SELECT columna
FROM  tabla
WHERE columna IN ( SELECT columna

  FROM  tabla
     [WHERE condiciones])

     Intersección utilizando EXISTS

SELECT columna
FROM  tabla
WHERE EXISTS (SELECT *

    FROM  tabla
          WHERE condiciones)

Para hallar la diferencia entre dos o más sentencias SELECT FROM podemos utilizar la clásula
EXCEPT, que tiene este formato:

SELECT columna
FROM  tabla
 [WHERE condiciones]

EXCEPT [ALL]

SELECT columna
FROM  tabla
 [WHERE condiciones]

Si  ponemos  la  opción  ALL,  aparecerán  todas  las  filas  obtenidas  a  partir  de  la  diferencia.  No  la
pondremos si queremos eliminar las filas repetidas.

Al  igual  que  la  intersección  y  la  unión,  las  relaciones  que  componen  la  diferencia  deben  ser
compatibles con la unión, o debemos forzar que las columnas a vincular lo sean.

La diferencia es, junto con la intersección, una de las operaciones del SQL que se puede realizar
de más formas diferentes. Así es que podemos encontrar la diferencia usando en vez de EXCEPT
los predicados NOT IN o NOT EXIST, de la siguiente forma:

      Intersección utilizando NOT IN

SELECT columna
FROM  tabla
WHERE columna NOT IN ( SELECT columna

      FROM  tabla
              [WHERE condiciones])

Ing. Carolina Orcola                                                Año 2010                                                                       Página  13

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

     Intersección utilizando NOT EXISTS

SELECT columna
FROM  tabla
WHERE NOT EXISTS (SELECT *
       FROM  tabla
                 WHERE condiciones)

La siguiente consulta ilustra la operación diferencia de conjuntos en SQL:

(C19) Averiguar el idm de todos los marineros que han reservado barcos rojos pero no verdes.

SELECT M.idm
FROM  Marineros M, Reservas R, Barcos B
WHERE M.idm=R.idm  AND R.idb=B.idb
      AND B.color=”rojo”

EXCEPT

SELECT M2.idm
FROM  Marineros M2, Reservas R2, Barcos B2
WHERE M2.idm=R2.idm  AND R2.idb=B2.idb
     AND B2.color=”verde”

Los marineros 22, 64 y 31 han reservado barcos rojos. Los marineros 22, 74 y 31 han reservado
barcos verdes. Por lo tanto, la respuesta contiene solo el idm 64.

En realidad, dado que la relación Reservas contiene información sobre los idms, no hay necesidad
alguna  de  consultar  a  la  relación  Marineros,  y  se  puede  simplificar  la  consulta  de  la  siguiente
manera:

SELECT R.idm
FROM  Reservas R, Barcos B
WHERE R.idb=B.idb AND B.color=”rojo”

EXCEPT

SELECT R2.idm
FROM Reservas R2, Barcos B2
WHERE R2.idb=B2.idb AND B2.color=”verde”

Obsérvese  que  esta  consulta  confía  en  la  integridad  referencial;  es  decir,  no  hay  reservas  de
marineros que no existan. Tengamos en cuenta que UNION, INTERSECT y EXCEPT se pueden
emplear  en  cualquier  par  de  tablas  compatibles  con  la  unión,  es  decir,  que  tengan  el  mismo
número  de  columnas  y  esas  columnas,  tomadas  en  orden,  se  correspondan  sus  dominios.  Por
ejemplo se puede escribir la siguiente consulta:

(C20)  Averiguar  el  idm  de  los  marineros  que  tengan  una  categoría  de  10  o  hayan  reservado  el
barco 104.

SELECT M.idm
FROM  Marineros M,
WHERE M.categoría=10

UNION

SELECT R.idm
FROM  Reservas R,
WHERE R.idb=104

Ing. Carolina Orcola                                                Año 2010                                                                       Página  14

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
La  primer  parte  de  la  unión  devuelve  los  idms  58  y  71.  La  segunda  parte  devuelve  22  y  31.  La
respuesta es, por lo tanto, el conjunto de idms 22, 31, 58 y 71. Un último punto a destacar sobre la
UNION, INTERSECT y EXCEPT es: a diferencia del criterio predeterminado  de que de la forma
básica de las consultas no se eliminan los duplicados a menos que se especifique DISTINCT, el
criterio predeterminado para las consultas UNION es que los duplicados sí se eliminan, a menos
que  escribamos  UNION  ALL,  que  fuerza  a  dejar  los  duplicados.  Igual  para  el  caso  de
INTERSECT ALL o de EXCEPT ALL.

Consultas Anidadas

Volvamos  a  las  subconsultas  o  consultas  anidadas,  dando  ejemplos  de  su  uso.  A  manera  de
ejemplo reescribiremos la siguiente consulta empleando una subconsulta anidada:

(C1)  Averiguar el nombre de los marineros que han reservado el barco 103

SELECT M.nombrem
FROM  Marineros M,
WHERE M.ide IN (SELECT R.idm

    FROM  Reservas R,
    WHERE R.ide = 103)
La subconsulta anidada calcula el (multi)conjunto de idms de los marineros que han reservado el
barco 103 (el conjunto contiene 22, 31 y 74 para los ejemplares R2 y M3)  y la consulta de nivel
superior recupera el nombre de los marineros cuyo idm se halla en ese conjunto. El operador IN,
como ya vismos antes, permite comprobar si un valor pertenece a un conjunto de elementos dado.
Veamos  que  para  averiguar  todos  los  marineros  que  NO  reservaron  el  barco  103  bastaría  con
sustituir IN por NOT IN.
Veamos ahora un ejemplo de consulta con varios anidamientos:

(C2) Averiguar el nombre de los marineros que han reservado barcos rojos.

SELECT M.nombrem
FROM  Marineros M,
WHERE M.idm IN ( SELECT R.idm

    FROM  Reservas R,
    WHERE R.idb  IN (   SELECT B.idb

    FROM  Barcos B,
    WHERE B.color = “rojo”))

La  subconsulta  más  interna  busca  el  conjunto  de  idbs  de  los  barcos  rojos  (102  y  104  para  el
ejemplar B1). La subconsulta que se halla un nivel por encima de ella busca el conjunto de idms
de  los  marineros que  han  reservado  algunos  de  esos  barcos.  Para  los  ejemplares  B1,  R2  y  M3
ese conjunto de idms contiene 22, 31 y 64. La consulta de nivel superior busca el nombre de los
marineros que pertenecen a ese conjunto de idms; y se obtiene Dominguez, Lorca y Horacio.
Para  averiguar  el  nombre  de  los  marineros  que  NO  han  reservado  barcos  rojos,  se  sustituye  la
aparición más externa de IN por NOT IN, de la siguiente manera:
SELECT M.nombrem
FROM  Marineros M,
WHERE M.idm NOT IN ( SELECT R.idm

        FROM  Reservas R,
        WHERE R.idb  IN (   SELECT B.idb

        FROM  Barcos B,
        WHERE B.color = “rojo”))

Esta consulta calcula el nombre de los marineros cuyo idm no pertenece al conjunto 22, 31 y 64.

Consultas anidadas correlacionadas

En las consultas anidadas vistas hasta el momento la subconsulta interior ha sido completamente
independiente de la consulta exterior. En general la subconsulta interior puede depender de la fila
que se está examinando en cada momento en la consulta exterior (en términos de la estrategia de
evaluación conceptual). Reescribamos una vez más la siguiente consulta:

Ing. Carolina Orcola                                                Año 2010                                                                       Página  15

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

(C1)  Averiguar el nombre de los marineros que han reservado el barco 103

SELECT M.nombrem
FROM  Marineros M,
WHERE  EXIST (  SELECT *

    FROM  Reservas R,
    WHERE R.ide = 103 AND R.idm = M.idm)

El operador EXIST, como se vió antes, es otro operador para la comparación de conjuntos, como
IN, permite comprobar si un conjunto no está vacío. Por lo tanto, para cada fila M de Marineros,
se comprueba  si  el  conjunto de filas de  Reservas  R  tal que  R.ide  =  103 AND  R.idm =  M.idm  no
está vacío. Si no lo está, el marinero M ha reservado el barco 103 y se devuelve su nombre. La
subconsulta depende claramente de la fila actual M y se debe volver a evaluar para cada fila de
Marineros.  La  aparición  de  M  en  la  subconsulta  se  denomina  correlación,  y  estas  consultas  se
denominan consultas correlacionadas.
Esta consulta también ilustra el empleo del símbolo especial * en situaciones en las que todo lo
que  se  desea  hacer  es  comprobar  si  existe  una  fila  que  cumpla  la  condición  y  no  se  desea
realmente recuperar ninguna columna de esa fila.
Como  ejemplo  adicional,  mediante  el  empleo  de    NOT  EXIST  en  lugar  de  EXIST,  se  puede
calcular  el  nombre  de  los  marineros  que  no  han  reservado  barcos  rojos.  Estrechamente
relacionado  con  EXIST  está  el  predicado  UNIQUE.  Cuando  se  aplica  UNIQUE  a  una
subconsulta, la condición resultante devuelve  verdadero si ninguna fila aparece dos veces en la
respuesta  de  la  subconsulta,  es  decir,  si  no  hay  ningún  duplicado;  en  especial  devuelve
verdadero si la respuesta está vacía.

Más ejemplos de consultas anidadas

Veamos más ejemplos de consultas anidadas:
(C6) Averiguar el nombre de los marineros que han reservado barcos rojos y verdes.

SELECT M.nombrem
FROM  Marineros M, Reservas R, Barcos B,
WHERE M.idm=R.idm  AND R.idb=B.idb AND B.color=”rojo”
       AND M.idm IN ( SELECT M2.idm

     FROM  Marineros M2, Reservas R2, Barcos B2,

  WHERE M2.idm=R2.idm  AND R2.idb=B2.idb

   AND  B2.color=”verde)

Esta  consulta  se  la  puede  entender  de  la  siguiente  manera:  “Averiguar  todos  los  marineros  que
han reservado barcos rojos y, además, tienen idms que están incluidos en el conjunto de idms de
marineros que han reservado barcos verdes.” Esta formulación de la consulta ilustra la manera en
la que las consultas que implican a INTERSECT se pueden reescribir usando IN, lo que es muy
útil  saber  cuando  el  sistema  no  soporta  INTERSECT.  Las  consultas  que  emplean  EXCEPT  se
pueden reescribir de manera parecida usando NOT IN. Para averiguar los idms de los marineros
que han reservado barcos rojos pero no barcos verdes basta con sustituir la palabra clave IN de
la consulta anterior por NOT IN.

SELECT M.nombrem
FROM  Marineros M,
WHERE M.idm IN  (   (SELECT R.idm

     FROM  Reservas R, Barcos B,

 WHERE R.idb=B.idb AND  B2.color=”rojo”)
 INTERSECT

     (SELECT R2.idm

     FROM  Reservas R2, Barcos B2,

 WHERE R2.idb=B2.idb AND  B2.color=”verde”) )

Ing. Carolina Orcola                                                Año 2010                                                                       Página  16

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Como  se  puede  ver  en  la  consulta  anterior,  escribir  la  consulta  (C6)  empleando  INTERSECT
resulta más complicado porque hay que utilizar los idms para identificar a los marineros (durante
la intersección) y hay que devolver el nombre de los marineros.
El  siguiente  ejemplo  ilustra  la  manera  que  se  puede  expresar  en  SQL  la  operación  división  del
álgebra relacional:
(C9) Averiguar el nombre de los marineros que han reservado todos los barcos.

SELECT M.nombrem
FROM  Marineros M,
WHERE NOT EXIST  ( (SELECT B.idb

       FROM  Barcos B,

   EXCEPT

       (SELECT R.idb

          FROM  Reservas R,

   WHERE R.idm=M.idm) )

Obsérvese que esta consulta está correlacionada  –para cada miembro de M se comprueba si el
conjunto de barcos reservados por M incluye todos los barcos-. Una manera alternativa de llevar a
cabo la consulta sin emplear EXCEPT es la siguiente:

SELECT M.nombrem
FROM  Marineros M,
WHERE NOT EXIST  ( (SELECT B.idb

         FROM  Barcos B,

   WHERE NOT EXIST (SELECT R.idb

  FROM  Reservas R,
  WHERE R.idb=B.idb

AND R.idm=M.idm) )

De manera intuitiva, para cada marinero se comprueba que no hay ningún barco que no haya sido
reservado por ese marinero.

Operadores de agregación

Además  de  recuperar  datos,  a  menudo  se  desea  llevar  a  cabo  algún  cálculo  o  resumen  en  las
consultas.  SQL  permite  el  empleo  de  expresiones  aritméticas,  pero  además  permite  el  uso  de
operadores de agregación, tales como MIN o SUM, que representan una ampliación significativa
del  álgebra  relacional.  SQL  soporta  cinco  operadores  de  agregación,  que  se  pueden  aplicar  a
cualquier columna de una relación dada, a saber:

  COUNT ([DISTINCT] columna): el número de valores (únicos) de la columna en cuestión.

  SUM ([DISTINCT] columna): suma de todos los valores (únicos) de la columna en cuestión.

  AVG ([DISTINCT] columna): promedio de todos los valores (únicos) de la columna.

  MAX (columna): el valor máximo de la columna en cuestión.

  MIN (columna): el valor mínimo de la columna en cuestión.

Veamos ejemplos:

(C25) Averiguar el promedio de edad de los marineros.

SELECT AVG M.edad
FROM  Marineros M

(C26) Averiguar el promedio de edad de los marineros cuya categoría es 10.

SELECT AVG M.edad
FROM  Marineros M
WHERE  M.categoría=10

Ing. Carolina Orcola                                                Año 2010                                                                       Página  17

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Para averiguar la edad del marinero más joven (o más viejo) se puede usar MIN (o MAX) en lugar
de  AVG.  Ahora,  si  además queremos  el  nombre  de  ese marinero,  no  es  tan  simple como  poner
SELECT  MIN  M.edad,  M.nombrem….  Esta  consulta  es  ilegal  en  SQL  (si  la  cláusula  SELECT
emplea  una  operación  de  agregación,  solo  debe  emplear  operaciones  de  agregación,  a  menos
que la consulta contenga alguna cláusula GROUP BY). Por lo tanto habría que escribir:

SELECT M.nombrem, M.edad
FROM  Marineros M
WHERE  M.edad =  ( SELECT MIN (M2.edad)

    FROM  Marineros M2)

Observemos que se utiliza el resultado de una operación de agregación en la subconsulta como
argumento  de  una  operación  de  comparación.  Estamos  comparando  un  valor  de  edad  con  el
resultado de la subconsulta, que es una relación. Sin embargo, debido al empleo de la operación
de agregación, se garantiza que la subconsulta devuelve una sola tupla con un solo campo, y SQL
convierte esa relación en un valor de campo a fines de la comparación. La siguiente consulta, si
bien es legal para SQL, muchos sistemas no la soportan:

SELECT M.nombrem, M.edad
FROM  Marineros M
WHERE (  SELECT MIN (M2.edad)

                FROM  Marineros M2) = M.edad

Se puede contar el número de marineros con COUNT. Este ejemplo ilustra el empleo de * como
argumento de COUNT, que resulta útil cuando se desea contar todas las filas.
(C28) Contar el número de marineros.

SELECT COUNT (*)
FROM  Marineros M

Se puede considerer * una abreviatura de todas las columnas.

(C29) Contar el número de nombres de marineros diferentes.

SELECT COUNT (DISTINCT M.nombrem)
FROM  Marineros M

Los operadores de agregación ofrecen una alternativa al uso de las estructuras ANY y ALL. Por
ejemplo, consideremos la siguiente consulta:

(C30) Averiguar nombre de los marineros de más edad que el marinero más viejo de categoría 10.

SELECT M.nombrem
FROM  Marineros M
WHERE  M.edad > ( SELECT MAX (M2.edad)
             FROM  Marineros M2
             WHERE  M2.categoría=10)

Empleando ALL esta consulta se podría escribir:

SELECT M.nombrem
FROM  Marineros M
WHERE  M.edad > ALL (SELECT M2.edad
                FROM  Marineros M2
                WHERE  M2.categoría=10)

La consulta usando ALL es más susceptible de sufrir errores. El empleo de ANY se corresponde
con el de MIN en lugar de MAX.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  18

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Ordenación de datos resultantes

Si se desea que, al hacer una consulta, los datos aparezcan en un orden determinado, es preciso
utilizar la cláusula ORDER BY en la sentencia SELECT, que se escribe de la siguiente forma:

SELECT [DISTINCT] columnas
FROM  Tablas
[WHERE  condiciones]
[ORDER BY columna-a-ordenar [DESC][, columna2-a-ordenar [DESC]…]]

Si  no  se  especifica  DESC  seguirá  el  orden  ascendente  por  defecto.  Se  puede  ordenar
considerando varios niveles de ordenación, siempre la que se escribe primero es el primer nivel de
ordenación, y así sucesivamente.

La cláusula GROUP BY y HAVING

Hasta ahora hemos aplicado las operaciones de agregación a todas las filas de la relación. Pero a
menudo se desea  aplicar  operaciones de  agregación  a cada  uno de  los  grupos  de filas de  una
relación,  donde  el  número  de  grupos  depende  del  ejemplar  de  esa  relación  (es  decir,  no  se
conoce con antelación). Por ejemplo, consideremos la siguiente consulta:
(C31) Averiguar la edad del marinero más joven de cada categoría.
Si sabemos que las categorías son enteros que van del 1 al 10, se pueden escribir diez consultas
de esta forma:

SELECT MIX (M.edad)
FROM  Marineros M
WHERE  M.categoría=i

Donde i= 1, 2, 3,.., 10. Escribir estas diez consultas puede resultar tedioso, sin contar que quizás
no sepamos cuantas categorías hay.
La cláusula GROUP BY permite escribir consultas como esta de manera mucho más simple.

SELECT M.categoría, MIX (M.edad)
FROM  Marineros M
GROUP BY  M.categoría

La forma general del uso de esta cláusula es:

SELECT [DISTINCT] columnas
FROM  Tablas
[WHERE  condiciones]
GROUP BY  columnas-según-las-cuales-se-quiere-agrupar
[HAVING condición-sobre-grupos]
[ORDER BY columna-a-ordenar [DESC][, columna2-a-ordenar [DESC]…]]

En las columnas que aparecen en el SELECT deben si o si estar incluidas las columnas que se
usan para agrupar. El motivo es que cada fila del resultado de la consulta se corresponde  con un
grupo,    que  es un  conjunto  de  filas que  concuerdan  con  los  valores  de  las columnas-según-las-
cuales-se-quiere-agrupar.  En  general,  si  una  columna  aparece  en  el  SELECT  pero  no  en  las
columnas-según-las-cuales-se-quiere-agrupar,  puede  haber  varias  filas  de  un  mismo  grupo  que
tengan valores diferentes en esa columna, y no resulta evidente el valor que se le debe asignar en
la fila de la respuesta.

La cláusula HAVING permite especificar condiciones a los agrupamientos realizados con GROUP
BY.  Del  mismo  modo  que  existe  la  cláusula  WHERE  para  filas  individuales  en  la  sentencia
SELECT,  también  se  puede  especificar  una  condición  para  grupos  de  registros.  Al  utilizar  la
cláusula HAVING no se incluyen aquellos grupos que no cumplan una determinada condición. La
cláusula HAVING siempre va detrás de la cláusula GROUP BY y no puede existir sin ésta.

Veamos mediante un ejemplo el uso de estas cláusulas:

Ing. Carolina Orcola                                                Año 2010                                                                       Página  19

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
(C32) Averiguar la edad del marinero más joven que tiene derecho a voto (es decir, es mayor a 18
años) para cada categoría que tenga, como mínimo, dos marineros con derecho a voto.

SELECT M.categoría, MIN  (M.edad) AS  edadmín
FROM  Marineros M
WHERE  M.edad >= 18
GROUP BY  M.categoría
HAVING COUNT (*) > 1

Lo primero que haríamos es calcular el producto cartesiano entre las tablas del FROM, que en este
ejemplo  no  hace falta  ya  que  usamos  una  sola  relación.  El  segundo  paso  es  aplicar  la  cláusula
WHERE,  M.edad  >=  18,  eliminando  aquellas  filas  que  no  cumplen  con  esa  condición.  El  tercer
paso es eliminar las columnas que no necesitamos (las que no aparecen en la cláusula SELECT,
la  cláusula  GROUP  BY  o  la  cláusula  HAVING).  Si  hay  filas  idénticas  en  este  resultado,  al  no
especificar  DISTINCT  no  se  eliminan  los  duplicados.  El  cuarto  paso  es  ordenar  la  tabla
resultante  de  acuerdo  con  la  cláusula  GROUP  BY  para  identificar  los grupos.  El  quinto  paso  es
aplicar la condición de la cláusula HAVING, es decir, la condición COUNT (*) > 1. Observemos que
el orden en que se toman en consideración las cláusulas WHERE y GROUP BY es significativo: si
no se toma en consideración primero el WHERE cambiaría el resultado, y sería un error. Y el sexto
paso  es  generar  una  fila  de  respuesta  para  cada  grupo  restante.  La  fila  de  respuesta
correspondiente a cada grupo consiste en un subconjunto de las columnas de agrupación, y una o
más columnas generadas mediante la aplicación de un operador de agregación. En este ejemplo,
cada  fila  de  respuesta  tiene  una  columna  categoría  y  una  columna  edadmín,  que  se  calcula
aplicando MIN a los valores de la columna edad del grupo correspondiente.

Más ejemplos de consultas de agregación

(C33) Para cada barco rojo, averiguar el número de reservas realizadas.

SELECT B.idb, COUNT  (*) AS  numreservas
FROM  Barcos B, Reservas R
WHERE  B.idb=R.idb AND B.color= “rojo”
GROUP BY  B.idb

Observemos que si quisiéramos escribir la consulta como mostramos abajo, esto sería ilegal:

SELECT B.idb, COUNT  (*) AS  numreservas
FROM  Barcos B, Reservas R
WHERE  B.idb=R.idb
GROUP BY  B.idb
HAVING B.color= “rojo”

Aunque  la condición  para  agrupar  B.color= “rojo”  tiene un  solo valor  para cada grupo,  ya que  el
atributo de agregación idb es clave en barcos (y por lo tanto determina “color”), y por ello SQL no
permite esta consulta. Sólo pueden aparecer en la cláusula HAVING las columnas que aparecen
en  la  cláusula  GROUP  BY,  a  menos  que  aparezca  como  argumento  de  algún  operador  de
agregación de la cláusula HAVING.
Aún así, esta consulta se podría reescribir fácilmente usando SQL:1999 o superior, empleando la
cláusula  EVERY  en  la  cláusula  HAVING,  escribiendo  “HAVING  EVERY  B.color=  “rojo””.  La
palabra clave EEVRY exige que todas las filas de cada grupo satisfaga la condición que precede
para superar la condición para grupos.

(C34) Averiguar la edad media de los marineros de cada categoría que tenga, como mínimo, dos
marineros.

SELECT M.categoría, AVG  (M.edad) AS  edadmedia
FROM  Marineros M
GROUP BY  M.categoría
HAVING COUNT  (*) > 1

Luego de agrupar por categoría, se conservan los que tienen dos marineros como mínimo.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  20

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
La siguiente es una formulación alternativa de la consulta, que ilustra cómo la cláusula  HAVING
puede tener subconsultas anidadas, al igual que la cláusula WHERE. Observemos que se puede
emplear M.categoría dentro de la consulta anidada de la cláusula HAVING, ya que tienen un solo
valor para el grupo actual de marineros:

SELECT M.categoría, AVG  (M.edad) AS  edadmedia
FROM  Marineros M
GROUP BY  M.categoría
HAVING 1 < ( SELECT COUNT  (*)
 FROM  Marineros M2
 WHERE  M.categoría=M2.categoría )

(C35) Averiguar la edad media de los marineros con derecho a voto (mayores de 18 años) para
cada categoría que tenga, como mínimo, dos marineros.

SELECT M.categoría, AVG  (M.edad) AS  edadmedia
FROM  Marineros M
WHERE  M.edad >= 18
GROUP BY  M.categoría
HAVING 1 < ( SELECT COUNT  (*)
 FROM  Marineros M2
 WHERE  M.categoría=M2.categoría )

En  esta  variante  de  la consulta  C34  primero  se eliminan las tuplas  con edad  <  18  y  se agrupan
que  restan  por  categoría.  La  subconsulta  de  la  cláusula  HAVING  calcula  para  cada  grupo  el
número  de  tuplas  para  Marineros  (sin  aplicar  la  selección  edad  <  18)  con  el  mismo  valor  de
categoría  que  el  grupo en  cuestión.  Si  algún  grupo  tiene  menos  de  dos  marineros,  se  descarta.
Para cada grupo restante se obtiene como resultado la edad media.

(C36) Averiguar la edad media de los marineros con derecho a voto (mayores de 18 años) para
cada categoría que tenga, como mínimo, dos marineros así.

SELECT M.categoría, AVG  (M.edad) AS  edadmedia
FROM  Marineros M
WHERE  M.edad >= 18
GROUP BY  M.categoría
HAVING 1 < ( SELECT COUNT  (*)
 FROM  Marineros M2
 WHERE  M.categoría=M2.categoría AND  M2.edad >= 18 )

Esta formulación de la consulta C36 es realmente muy parecida a la C32, y lo podemos ver en la
siguiente formulación alternativa, más sencilla que la anterior:

SELECT M.categoría, AVG  (M.edad) AS  edadmedia
FROM  Marineros M
WHERE  M.edad >= 18
GROUP BY  M.categoría
HAVING COUNT (*) > 1

Esta formulación  de  C36 se  aprovecha  del  hecho  de  que  la cláusula  WHERE  se  aplica  antes de
llevar  a  cabo  la  agrupación;  por  lo  tanto  solo  quedan  los  marineros  con  edad  =>  18  cuando  se
agrupa. Resulta instructivo considerar otra manera más de escribir esta consulta:

SELECT Temp.categoría, Temp.edadmedia
FROM (SELECT M.categoría, AVG  (M.edad) AS  edadmedia, COUNT (*) AS numcateg

FROM  Marineros M
WHERE  M.edad >= 18
GROUP BY  M.categoría) AS  Temp

WHERE  Temp.numcateg > 1

Ing. Carolina Orcola                                                Año 2010                                                                       Página  21

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Esta  alternativa  trae  a  colación  varios  puntos  interesantes.  En  primer  lugar,  la  cláusula  FROM
también puede contener subconsultas anidadas de acuerdo con las normas de SQL (aunque no
todos  los  SGBD  lo  soportan).  En  segundo  lugar,  la  cláusula  HAVING  no  es  necesaria  en  lo
absoluto.  Cualquier  consulta  con  cláusula  HAVING  se  puede  reescribir  sin  ella,  pero    muchas
consultas  resultan  más  sencillas  de  expresar  usándola.  Finalmente,  cuando  aparecen
subconsultas en la cláusula FROM, es necesario emplear la palabra clave AS para darle nombre
(ya que en caso contrario no se puede expresar, por ejemplo, Temp.numcateg > 1).

(C37) Averiguar las categorías para las que la edad media de los marineros es mínima.

Esta  consulta  la  usamos  para  ejemplificar  que  en  las  operaciones  de  agregación  no  se  permite
anidar. Podríamos escribirla erróneamente se la siguiente manera:

SELECT M.categoría,
FROM  Marineros M
WHERE  AVG  (M.edad) = (  SELECT MIN(AVG  (M2.edad))

    FROM  Marineros M2
    GROUP BY  M2.categoría)

Esta consulta no funcionaría aunque se permitiera hacer MIN(AVG(M2.edad)), lo cual es ilegal. En
la consulta anidada, Marineros se divide en grupos por categorías y la edad media se calcula para
cada valor de la categoría. Para cada grupo, la aplicación de MIN a este valor medio de la edad
del grupo devuelve el mismo valor. A continuación veremos una versión correcta de esta consulta.

SELECT Temp.categoría, Temp.edadmedia
FROM  (  SELECT M.categoría, AVG  (M.edad) AS  edadmedia
      FROM  Marineros M
      GROUP BY  M.categoría) AS  Temp
WHERE   Temp.edadmedia = ( SELECT MIN (Temp.edadmedia) FROM  Temp)

Fundamentalmente  calcula  una  tabla  temporal  que  contiene  la  edad  media  de  cada  valor  de
categoría y luego halla la(s) categoría(s) para la que esa edad media es mínima.

Valores nulos

Hasta  ahora  se  ha  asumido  que  los  valores  de  las  columnas  para  una  fila  dada  siempre  son
conocidos.  En  la  práctica,  los  valores  de  las  columnas  pueden  ser  desconocidos.  Por  ejemplo,
cuando  un  marinero,  por  ejemplo  dani,  se  hace  socio  de  un  club  náutico,  puede  que  no  tenga
todavía  categoría  asignada.  Dado  que  la  definición  de  la  tabla  Marineros  tiene  una  columna
categoría, ¿qué fila hay que insertar para Dani? Lo que hace falta es un valor especial que denote
“desconocido”.
SQL  ofrece  un  valore  especial  para  los  valores  “desconocidos”  denominado  NULL  (nulo)  para
emplearlo en estas situaciones. Se emplea NULL cuando el valor de la columna es desconocido o
inaplicable. Esta existencia de valores NULL complica muchas situaciones en el uso de SQL.

Comparaciones que emplean valores nulos

Consideremos una comparación como categoría=8. Si se aplica a la fila de Dani, ¿esta condición
es  verdadera  o  falsa?  Dado  que  la  categoría  de  Dani  es  desconocida,  el  resultado  de  esta
comparación debería ser “desconocido”, y de hecho es así en SQL. SQL también ofrece, como ya
vimos antes, el operador de comparación especial IS NULL o IS NOT NULL.

Las conectivas lógicas AND, OR y NOT

Consideremos  ahora  expresiones booleanas  como  categoría =  8 OR  edad  <  40,  y  categoría  = 8
AND edad < 40. Tomando a Dani nuevamente como ejemplo, como Dani es < 40, esa parte de la
comparación  toma  el  valor  verdadero,  independientemente  del  valor  de  categoría,  pero  ¿qué
ocurre con esa segunda parte? Solo podemos decir “desconocido”, como vimos antes.

NOT NULL = NULL
Verdadero/Falso OR Verdadero = Verdadero
Falso/NULL OR NULL = NULL
Verdadero AND Verdadero = Verdadero

Ing. Carolina Orcola                                                Año 2010                                                                       Página  22

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Verdadero/Falso/NULL AND NULL = NULL
Verdadero/Falso AND Falso = Falso

Consecuencias para las estructuras de SQL

Las  expresiones  booleanas  aparecen  en  muchos  contextos  de  SQL,  y  el  efecto  de  los  valores
NULL  se  debe  reconocer.  Por  ejemplo,  la  condición  de  la  cláusula  WHERE  elimina  filas  (del
producto cartesiano de las tablas llamadas en FROM) para las cuales la condición no toma el valor
verdadero.  Por  lo  tanto,  en  presencia  de  valores  NULL,  cualquier  fila  que  tome  el  valor  falso  o
NULL  se  elimina.  La  eliminación  de  la  fila  que  toma  el  valor  NULL  tiene  un  efecto  sutil  pero
significativo en las consultas, especialmente en las consultas anidadas que implican a EXIST o a
UNIQUE.
Otro  problema  con  la  presencia  de  valores  NULL  es  la  definición  de  la  consideración  como
duplicado de dos filas del mismo ejemplar de una relación dada. La definición de SQL es que dos
filas  están  duplicadas   si  las  columnas  correspondientes  son  iguales  o contienen  valores  NULL.
Comparemos  esta  definición  con  el  hecho  de  que,  si  se  comparan  dos  valores  NULL  con  =,  el
resultado  es  NULL.  En  el  contexto  de  los  duplicados,  esta  comparación  se  trara  de  manera
implícita como verdadera, lo que constituye una anomalía.
Como cabía esperar, todas las operaciones aritméticas +, -, * y / devuelven NULL si uno de sus
argumentos  es  NULL.  Sin  embargo,  los  valores  NULL  pueden  provocar  comportamientos
inesperados en las operaciones de agregación. COUNT (*) trata a los valores NULL igual que a los
demás valores, es decir, los cuenta. Todas las demás operaciones de agregación (COUNT, SUM,
AVG, MIN, MAX y las variaciones con DISTINCT) se limitan a descartar los valores NULL. Como
caso especial, si unos de estos operadores – que no sea COUNT– se aplica solo a valores NULL,
el resultado es también NULL.

Reuniones externas

SQL soporta algunas variedades interesantes de la operación reunión que aprovechan los valores
NULL,  las  denominadas  reuniones  externas.  Consideremos  la  reunión  de  dos  tablas,  por
ejemplo  Marineros    C Reservas.  Las  tuplas  de  Marinero  que  no  coinciden  con  ninguna fila  de
Reservas según la condición de reunión c no aparecen en el resultado. En las reuniones externas,
por  otro  lado,  las  filas  de  Marineros  sin  filas  correspondientes  en  Reservas  aparecen  en  el
resultado exactamente una vez y con las columnas heredadas de Reservas asignadas a valores
NULL.
De hecho, hay diversas variedades de reunión externa. En las reuniones externas por izquierda
(LEFT  JOIN)  las  filas  de  Marineros  sin  fila  correspondiente  de  Reservas  aparecen  en  el
resultado, pero no al contrario. En las reuniones externas por derecha (RIGTH JOIN) las filas
de Reservas sin filas correspondientes de Marineros aparecen en el resultado, pero no  al revés.
En las reuniones externas completas (FULL OUTER JOIN) tanto las filas de Marineros como
las de Reservas sin filas correspondientes aparecen en el resultado.
SQL Permite especificar el tipo de reunión deseada en la cláusula FROM. Por ejemplo, la siguiente
consulta muestra pares [idm, idb] correspondientes a marineros y a los barcos que han reservado:

SELECT M.idm, R.idb
FROM  Marineros M  NATURAL LEFT OUTER JOIN  Reservas R

Las  palabras claves NATURAL  especifica que  la condición  de  reunión es la igualdad para todos
los atributos comunes, y no exige la cláusula WHERE (a menos que desee especificar condiciones
adicionales que no afecten a la reunión).

Desactivación de valores nulos

Se  puede  impedir  los  valores  NULL  especificando  NOT  NULL  como  parte  de  la  definición  del
campo, por ejemplo, nombrem CHART(20) NOT NULL. Además, no se permite que los campos
de la clave primaria tomen valores NULL.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  23

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

JOINs o Reuniones

Existe una sintaxis más concreta para realizar la operación de reunión, donde la cláusula WHERE
se usa únicamente para filtrar registros y no para reunir registros.

Reunión interna - cláusulas inner join / on

Esta  cláusula  está  diseñada  precisamente  para  reunir  registros  de  varias  tablas,  en  ella
intervienen las claves primarias y foráneas, y no intervienen, o lo hacen en la cláusula WHERE, los
filtros propiamente dichos.

SELECT <select_list>
FROM Table_A A INNER JOIN Table_B B
           ON A.Key = B.Key

Si  antes  se  dijo  que  el  SGBD  realiza  el  producto  cartesiano  entre
dos  tablas  y  posteriormente  mediante  la  cláusula  WHERE  ignora
aquellos  registros  que  carecen  de  sentido  y  muestra  los  que
guardan una relación, ahora podemos verlo del siguiente modo: el
SGBD  recorrerá  la  tabla  A  y  para  cada  uno  asociará  el  registro  de  la  tabla  B  que  satisface  la
cláusula ON.

Reunión externa - left outer join / right outer join

La reunión externa puede verse como una reunión interna donde no es necesario que el registro
hijo tenga informada la clave foránea para ser mostrado. La reunión externa siempre se realizara
por  la  izquierda  o  por  la  derecha,  una  de  las  dos.  De  este  modo  expresamos  el  deseo  de
considerar  todos  los  registros  de  la  tabla  a  la  izquierda  o  a  la  derecha  de  la  cláusula  OUTER
JOIN, aunque no se hallen coincidencias con la otra tabla según la cláusula ON.

SELECT <select_list>
FROM Table_A A RIGHT JOIN Table_B B
            ON A.Key = B.Key

SELECT <select_list>
FROM Table_A A LEFT JOIN Table_B B
            ON A.Key = B.Key

Ing. Carolina Orcola                                                Año 2010                                                                       Página  24

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Ing. Carolina Orcola                                                Año 2010                                                                       Página  25

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Bibliografía

(1) “Sistema  de  Administración  de  Bases  de  Datos”;  Raghu  Ramakrishnan/Johannes

Gehrke; Mc Graw Hill, 3º Edición, edición en español – 2007

La  mayoría  de  los  contenidos  de  este  apunte  son  extraídos  de  este  libro,  con
ejemplos y gráficos incluidos.

(2) “Fundamentos de Sistemas de Bases de Datos”; Elmasri y Navathe; Addison Wesley; 3º

Edición; Madrid; 2002.

(3) “Introducción a las bases de datos relacionales”; Mendelzon-Ale; Prentice may; 1º edición;

Argentina; 2000.

(4)  “Concepto y diseño de  bases de datos”; Miguel Mario Piattini; Addison-Wesley.

(5)  “Fundamentos de base de datos”; Korth F. Henry; McGraw Hill; 3º Edición; 1998.

(6)  “Introducción a los sistemas de base de datos”; C. J. Date; Prentice-Hall; 7º Edición; 2001.

(7)  “Sistemas de Bases de Datos – Conceptos fundamentales”; Elmasri y Navathe; Addison

Wesley; 2º Edición; Madrid; 1994.

Ing. Carolina Orcola                                                Año 2010                                                                       Página  26

