UNIVERSIDAD TECNOLÓGICA NACIONAL
FACULTAD REGIONAL RESISTENCIA

INGENIERÍA EN SISTEMAS
DE INFORMACIÓN

GESTIÓN DE DATOS

APUNTES TEÓRICOS

Unidad 4: Álgebra y Cálculo
Relacional

Profesor Teoría:  Ing.  Carolina Orcola
Jefe de T. P.: Ing. Luis Eiman
Auxiliar de T.P.: Juan Carlos Fernandez

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Índice

Unidad V: Álgebra y Cálculo Relacional .......................................................................................... 3

Álgebra Relacional ...................................................................................................................... 4

Operaciones unitarias ............................................................................................................. 4

Selección (σ) ....................................................................................................................... 4

Proyección () ..................................................................................................................... 5

Asignación (←) .................................................................................................................... 6

Operaciones con conjuntos ..................................................................................................... 6

Unión () ............................................................................................................................ 6

Intersección () .................................................................................................................. 7

Diferencia de conjuntos (‒) .................................................................................................. 7

Producto cartesiano (X) ....................................................................................................... 7

Renombramiento (ρ) ............................................................................................................... 8

Reuniones (join) ...................................................................................................................... 8

Reuniones condicionales ..................................................................................................... 9

Equirreuniones .................................................................................................................... 9

Reunión Natural .................................................................................................................. 9

División ................................................................................................................................. 10

Más ejemplos de consultas de álgebra relacional ................................................................. 11

Cálculo Relacional .................................................................................................................... 16

Cálculo relacional de tuplas ................................................................................................... 16

Sintaxis de las consultas del CRT ..................................................................................... 17

Semántica de las consultas de CRT .................................................................................. 17

Cálculo relacional de dominios .............................................................................................. 18

Bibliografía .................................................................................................................................... 19

Ing. Carolina Orcola                                                Año 2013                                                                     Página  2

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Unidad V: Álgebra y Cálculo Relacional

En  este  capítulo  se  presentan  dos  lenguajes  formales  de  consultas  asociados  con  el  modelo
relacional. Los lenguajes de consultas son lenguajes especializados para formular preguntas, o
consultas, que implican a los datos  de una base de datos dada. Las consultas se componen en
el  álgebra  relacional  de  un  conjunto  de  operadores,  y  cada  consulta  describe  un  procedimiento
paso a paso para calcular la respuesta deseada; es decir, las consultas se especifican de manera
operativa.  En  cambio  en  el  cálculo  relacional,  cada  consulta  describe  la  respuesta  deseada  sin
especificar  la  manera  en  que  se  debe  calcular  la  respuesta;  este  estilo  de  consulta  no
procedimental  se  denomina  declarativo.  Estos  lenguajes  formales  de  consulta  han  influido
enormemente en los lenguajes de consulta comerciales como el SQL.

Comencemos  por  aclarar  algunos  aspectos  importantes  de  las  consultas  relacionales.  Tanto  las
entradas como los resultados de las consultas son relaciones. Las consultas se evalúan a partir de
ejemplares de cada relación de entrada y genera un ejemplar de relación de salida. En el capítulo
anterior, cuando se mostraba consultas básicas de SQL, se emplearon nombres de campos para
hacer  referencia  a  los  campos  porque  esa  notación  hace  más  legibles  las  consultas.  Una
alternativa  es  relacionar  siempre  los  campos  de  una  relación  dada  en  el  mismo  orden  y  hacer
referencia a ellos por su posición en vez de por su nombre.

Al definir el álgebra y el cálculo relacional, la alternativa de hacer referencia a los campos por su
posición resulta más conveniente que hacerlo por su nombre, ya que las consultas suelen suponer
el  cálculo  de  resultados  intermedios,  que  son  en  sí  mismo  ejemplares  de  relaciones;  y,  si  se
empleara  el  nombre  para  hacer  referencia  a  los  campos,  la  definición  de  las  estructuras  del
lenguaje de consulta debería especificar el nombre de los campos para todos los ejemplares de
las relaciones intermedias. Esto puede resultar tedioso y realmente es un aspecto secundario, ya
que de todas maneras se puede hacer referencia a los campos por su posición. Por otro lado, el
nombre de los campos hacer las consultas más legibles.

Debido  a  estas  consideraciones  se  emplea  la  notación  posicional  para  definir  formalmente  el
álgebra  y  el  cálculo  relacional.  Por  comodidad,  también  se  introducirán  convenios  sencillos  que
permitan que las relaciones intermedias “hereden” los nombres de los campos.

Se presentarán varias consultas de ejemplo mediante el siguiente esquema:

Marineros (idm: integer, nombrem: string, categoria: integer, edad: real)

Barcos (idb: integer, nombreb: string, color: string)

Reservas (idm: integer, idb: integer, fecha: date)

Los campos de la clave están subrayados, y el dominio de cada campo se indica después de su
nombre. Por lo tanto, ide es la clave de Marineros, idb es la clave de Barcos y los tres campos de
Reservas son su clave. Se hará referencia a los campos de cada ejemplar de cualquiera de estas
relaciones  por  el  nombre,  o  posicionalmente,  empleando  el  nombre  en  el  que  se  acaban  de
mencionar.

En varios ejemplos que ilustran los operadores del álgebra relacional, se emplean los ejemplares
M1  y  M2  (de  Marineros)  y  R1  (de  Reservas),  que  podemos  ver  en  las  figuras  que  están  a
continuación.

M1

idm
nombrem
22  Domínguez
31  López
58  Rubio

7
8
10
Ejemplar M1 de Marineros

categoria  edad
45,0
55,5
35,0

M2

nombrem

idm
28  Yiyo
31  López
44  Gallardo
58  Rubio

categoria  edad
35,0
55,5
35,0
35,0

9
8
5
10

Ejemplar M2 de Marineros

R1

idm
22
58

idb
101
103

fecha
10/10/2008
11/12/2008

Ejemplar R1 de Reservas

Ing. Carolina Orcola                                                Año 2013                                                                     Página  3

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Álgebra Relacional

El  Álgebra Relacional  (AR)  es uno de  los dos  lenguajes formales de  consultas asociados  con el
modelo relacional, en este caso un lenguaje de consulta procedimental. Consta de un conjunto de
operaciones que sirven para manipular relaciones enteras. El resultado de cada operación es una
nueva  relación,  que  podremos  manipular  en  ocasiones  futuras.  Las  operaciones  del  AR  suelen
clasificarse en dos grupos:

 Operaciones Unitarias: Trabajan sobre una única relación.

                                     SELECCIONAR(), PROYECTAR(), RENOMBRAR()

 Operaciones Binarias: Trabajan sobre dos relaciones.

ASIGNACIÓN (), UNION(),

INTERSECCION(), DIFERENCIA(),

REUNIÓN o JUNTA( ),

REUNIÓN NATURAL o JUNTA NATURAL(),

PRODUCTO CARTESIANO(), DIVISION()

Una  propiedad  fundamental  es  que  todos  los  operadores  del  álgebra  aceptan  (uno  o  dos)
ejemplares  de  relaciones  como  argumento  y  devuelven  un  ejemplar  de relación  como  resultado.
Esta  propiedad  facilita  la  composición  de  operadores  para  formar  consultas  complejas  –las
expresiones  del  álgebra  relacional  se  definen  recursivamente  como  relaciones,  como
operadores  unitarios  del  álgebra  aplicados  a  una  sola  expresión  o  como  operadores  binarios
aplicados a dos relaciones-.

Cada  consulta  relacional  describe  un  procedimiento  detallado  para  el  cálculo  de  las  respuestas
deseadas,  siguiendo  el  orden en  el  que  se aplican  los operadores  en  la  consulta.  La  naturaleza
procedimental del álgebra permite considerar cada expresión algebraica como una receta, o plan,
para la evaluación de una consulta, y los sistemas relacionales, de hecho, emplean expresiones
algebraicas para representar los planes de evaluación de las consultas.

Operaciones unitarias

El  álgebra  relacional  incluye  operadores  para  seleccionar  filas  de  las  relaciones  ()  y  para
proyectar columnas (). Estas operaciones permiten manipular los datos de una sola relación.

Selección (σ)

Esta operación sirve para seleccionar un subconjunto de las tuplas de una relación que satisfacen
una condición de selección.

Expresión  booleana  especificada  en
términos de los atributos de la relación

Sigma



 <CONDICIÓN DE SELECCIÓN> (<NOMBRE DE LA RELACIÓN>)

El operador  especifica las tuplas que hay que conservar mediante una condición de selección.
En general, la condición de selección es una combinación booleana (es decir, una expresión que
emplea  conectores  lógicos  como    y  )  de  términos  que  tienen  la  forma  de  atributo  operador
constante o atributo1 operador atributo2, donde el operador  es cualquiera de los operadores de
comparación (<, <=, =, , >, >=). La referencia a los atributos puede hacerse por su posición (de la
forma .i o i) o pos su nombre (de la forma .nombre o nombre). El esquema del resultado de una
selección es el esquema del ejemplar de la relación de entrada.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  4

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Veamos ejemplos:

Consideremos  el  ejemplar  M2  de  Marineros,  se  pueden  recuperar  las  filas  correspondientes  a
marineros  expertos  mediante  el  operador  σ.  La  siguiente  expresión  daría  como  resultado  el
ejemplar de relación que vemos abajo.

categoría > 8 (M2)

nombrem

idm
28  Yiyo
58  Rubio

categoria
9
10

edad
35,0
35,0

El subíndice categoría > 8 especifica el criterio de selección que hay que aplicar para seleccionar
las filas de la relación.

Otro  ejemplo,  suponiendo  una  relación  EMPLEADOS.  Queremos  seleccionar  el  subconjunto  de
tuplas de  EMPLEADOS,  que  trabajan  en  el  departamento 4 (DPTO)  y  cuyo salario  supera  los $
1.000 (SALARIO).

 <DPTO=4 y SALARIO>=1000> (EMPLEADOS)

Proyección ()

Esta  operación  selecciona  ciertas  columnas  de  una  tabla  (relación)  y  desecha  las
demás. La relación resultante elimina las tuplas duplicadas.

Pi

   Campos o atributos que deseo de la tabla

 <LISTA DE ATRIBUTOS>  (<NOMBRE DE LA RELACIÓN>)
La  lista  de  atributos  especifica  los  campos  que  hay  que  conservar,  y  los  que  se  descartan
(omitiéndolos).  El  esquema  del  resultado  de  cada  proyección  está  formado  por  los  campos
proyectados.

Por ejemplo, se puede averiguar el nombre y la categoría de todos los marineros mediante . La
expresión que mostramos de cómo resultado el ejemplar de relación que aparece luego.

nombre, categoría  (M2)
categoria
nombrem
9
8
5
10

Yiyo
López
Gallardo
Rubio

Supongamos  que  únicamente  deseamos  averiguar  la  edad  de  los  marineros,  allí  la  expresión
sería:

edad  (M2)
edad
35,0
55,5

Observemos que aquí, aunque son tres los marineros que tienen 35 años, solo aparece una vez
35  años  en  la  proyección.  Esto  se  debe  a  que  el  resultado,  al  formar  una  nueva  relación,  debe
conservar  la  integridad  de  la  misma  y  no  permite  tuplas  duplicadas,  eliminando  así  las  tuplas
repetidas.

Dado que el resultado de las expresiones del álgebra relacional siempre es una relación, se puede
colocar  una expresión  en cualquier  lugar  en que  se espere  una relación.  Por  ejemplo,  se  puede

Ing. Carolina Orcola                                                Año 2013                                                                     Página  5

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
calcular  el  nombre  y  la  categoría  de  los  marineros  de  mayor  categoría  combinando  dos  de  las
consultas  anteriores.  La  expresión  siguiente  produce  el  resultado  en  el  ejemplar  que  vemos  a
continuación:

nombre, categoría categoría > 8 (M2))

nombrem

Yiyo
Rubio

categoria
9
10

Se obtiene aplicando la selección a M2 (que vimos antes) y a ese esquema de relación resultante
se le aplica luego la proyección.

Asignación (←)

Si bien esta es una operación binaria, ya que actúa sobre dos relaciones, la explicamos ya para
poder usarla más fácilmente.

Esta operación se la utiliza para asignar el resultado de una operación del algebra relacional a una
variable auxiliar.

                              AUXILIAR ←  T1   T2

Con  la  operación  asignación  se  pueden  escribir  las  consultas  como  programas  secuenciales  en
una serie de asignaciones seguidas de una expresión cuyo valor se muestra como resultado de la
consulta.

Temp1 ← categoría > 8 (M2)
Temp2 ←nombre, categoría (Temp1)

En  las  consultas  del  algebra  relacional    la  asignación  siempre  debe  hacerse  a  una
variable  de  relación
intermedia.  Las  asignaciones  a  relaciones  permanentes
constituyen, como veremos más adelante, modificaciones en la base de datos.

Operaciones con conjuntos

Las  siguientes  operaciones  estándares  sobre  conjuntos  también  están  disponibles  en  el  álgebra
relacional: unión (), intersección (), diferencia de conjuntos (‒) y producto cartesiano (X).

Las tres primeras (unión, intersección y diferencia) tienen la particularidad de que las relaciones a
las que involucra deben ser compatibles con la unión.

Se  dice  que  dos  relaciones  R(A1,A2,...,AN)  y  S(B1,B2,  ...,BN)  son  compatibles  con  la
unión  si  tienen  el  mismo  grado  N  y  si  el  dominio(Ai)=dominio(Bi),  para  1    i    N.  O
sea,  que  la  segunda  relación  tiene  el  mismo  número  de  atributos  y  que  cada  par  de
atributos tiene el mismo dominio.

Unión ()

Sea R  S, esta operación genera una nueva relación que incluye todas las tuplas que están en
R  o  en  S  o  en  ambas,  y  el  esquema  resultante  es  idéntico  al  de  R.  Las  tuplas  repetidas  se
eliminan. Las dos relaciones a las que se aplique esta operación deberán ser compatibles con la
unión. La unión entre M1 y M2 puede verse a continuación:

M1  M2

nombrem

López

Idm
28  Yiyo
31
44  Gallardo
58  Rubio
22  Domínguez

categoria
9
8
5
10
7

edad
35,0
55,5
35,0
35,0
45,0

Ing. Carolina Orcola                                                Año 2013                                                                     Página  6

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Los campos se relacionan en orden; el orden de los campos; el orden de los campos también se
heredan  de  M1.  M2 tiene  los mismos  nombres de  campos,  por  supuesto,  ya que también  es un
ejemplar  de  Marineros.  En general  los  campos  de  M2 pueden  tener  nombres  diferentes,  ya que
solo se exige que los dominios coincidan. Observemos que el resultado es un conjunto de tuplas,
y para no perder integridad en la relación, las tuplas que aparecen tanto en M1 como en M2 solo
aparecen en la unión una vez.
Por  otro  lado,  M1  R1  no  es  una  operación  válida,  ya  que  las  relaciones  M1  y  R1  no  son
compatibles con la unión.
En muchos casos debemos forzar la compatibilidad con la unión de dos relaciones. Por ejemplo,
pensemos en dos relaciones no compatibles con la unión como ALUMNOS y PROFESORES.

Queremos listar el NOMBRE, APELLIDO y LEGAJO de todos los ALUMNOS y PROFESORES.

 <NOMBRE, APELLIDO, LEG>  (ALUMNOS)  <NOMBRE, APELLIDO, LEG>  (PROFESORES)

A través de la proyección, selecciono los campos que tengan el dominio compatible que necesito
(no importa si el nombre de esos atributos es diferente).

Intersección ()

Sea  R   S,  esta  operación  genera  una  nueva  relación  que  incluye  todas  las  tuplas  que  están
tanto en R como en S, y el esquema resultante es idéntico al de R. Las dos relaciones a las que
se aplique esta operación deberán ser compatibles con la unión.

Como ejemplo podemos ver la intersección entre M1 y M2:

M1  M2

nombrem

idm
31
López
58  Rubio

categoria
8
10

edad
55,5
35,0

De  manera  equivalente  a  la  unión,  podemos  forzar  la  compatibilidad  con  la  unión  de  dos
relaciones usando la proyección. Queremos listar el NOMBRE, APELLIDO y LEGAJO de todos los
ALUMNOS que además son PROFESORES (ayudantes de cátedra) .

 <NOMBRE, APELLIDO, LEG>  (ALUMNOS)  <NOMBRE, APELLIDO, LEG>  (PROFESORES)

Diferencia de conjuntos (‒)

Sea R  S, esta operación genera una nueva relación que incluye todas las tuplas que están en R
pero  no  en  S,  y  el  esquema  resultante  es  idéntico  al  de  R..    Las  dos  relaciones  a  las  que  se
aplique esta operación deberán ser compatibles con la unión.

Como ejemplo podemos ver la diferencia entre M1 y M2:

M1  M2

idm
22  Domínguez

nombrem

categoria
7

edad
45,0

Siguiendo los ejemplos anteriores, queremos listar el NOMBRE, APELLIDO y LEGAJO de todos
los ALUMNOS que no son PROFESORES (ayudantes de cátedra).

 <NOMBRE, APELLIDO, LEG>  (ALUMNOS)  <NOMBRE, APELLIDO, LEG>  (PROFESORES)

Producto cartesiano (X)

Esta  operación  sirve  para  combinar  tuplas  de  dos  relaciones  para  poder  identificar  las  tuplas
relacionadas  entre  sí.  El  producto  cartesiano  crea  tuplas  con  los  atributos  combinados  de  dos
relaciones.  Después  podremos  seleccionar  solo  las  tuplas  relacionadas  de  las  dos  relaciones

Ing. Carolina Orcola                                                Año 2013                                                                     Página  7

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
especificando  una  condición  de  selección  apropiada.  Generalmente  no  se  utiliza  solo,  sino
combinado con una selección y/o una proyección.

Así R X S devuelve el ejemplar de una relación cuyo esquema tiene todos los campos de R (en el
mismo orden en el que aparecen en R) seguido de todos los campos de S (en el mismo orden en
que aparecen en S). El resultado de R X S contiene todas las tuplas (r,s) (la concatenación de las
tuplas r y s) por cada par de tuplas según r R y s  S.
Generalmente  los  campos  de  R  X  S  heredan  el  nombre  de  los  campos  de  R  y  de  S
respectivamente.  Es  posible  que  tanto  R  como  S  contengan  campos  que  tengan  el  mismo
nombre;  esta  situación  crea  un  conflicto  de  denominaciones.  En  este  caso  los  campos  de  RXS
quedan sin nombre y se hace referencia a ellos por su posición.

Como ejemplo vemos que el producto cartesiano M1 X R1 quedaría:

(idm)

nombrem

22  Domínguez
22  Domínguez
31
López
López
31
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

(idm)
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

Como  tanto  R1  como  M1  tienen  un  campo  denominado  idm,  ambos  campos  (por  convenio)
permanecerán sin nombre, y se los referenciará por su posición. Los campos de M1 X R1 tienen
los mismos dominios que los correspondientes a R1 y M1.

Renombramiento (ρ)

Como vimos antes, la denominación de los campos se heredan de manera natural de la relación
de  entrada,  siempre  que  sea  posible.  Sin  embargo,  suele  surgir  conflictos  de  denominación  de
campos,  como  fue  el  caso  de  M1  X  R1.  Por  lo  tanto  resulta  conveniente  poder  dar  nombre  de
manera explícita a los campos de cada ejemplar de las relaciones  definidas por expresiones del
álgebra  relacional.  De  hecho,  suele  resultar  conveniente  poner  nombre  al  propio  ejemplar
(renombrar o dar un nombre a relación resultante), de manera de poder descomponer expresiones
algebraicas largas en fragmentos más pequeños y comprensibles de subexpresiones.

Con  este  objeto  se  introduce  el  operador  de  renombramiento  ρ.  La  expresión  ρ(R(F),  E)  toma
una  expresión  arbitraria  del  álgebra  relacional  E  y  devuelve  un  ejemplar  de  relación  nueva
denominada R. R contiene las mismas tuplas que el resultado de E, y tiene el mismo esquema de
E, pero se cambian algunos nombres de campo.

El nombre de los campos de la relación R es el mismo que en E, salvo  para los campos que se
han cambiado de nombre en la lista de renombramiento F, que es una lista de términos que tiene
la  forma  nombreantiguo→nombrenuevo,  o  bien  posición→nombrenuevo.  Para  ρ  que  esté  bien
definida  las  referencias  a  los  campos  (de  la  forma  nombresantiguos  o  posiciones  en  la  lista  de
renombramiento)  no  pueden  ser  ambiguas,  y  no  puede  haber  dos  campos  del  resultado  que
tengan el mismo nombre. A veces solo se desea cambiar el nombre de campos o (re)nombrar la
relación; por tanto, se considera que tanto R como F son opcionales en el empleo de ρ.

Por  ejemplo,    ρ(C(1→idm,  5→idm2),  M1  X  R1)  devuelve  una  relación  C  cuyo  esquema  sería  el
siguiente:

C(idm1:integer,nombrem:string,categoria:integer,edad:real,idm2:integer, idb:integer, fecha:date)

Es  habitual  incluir  algunos  operadores  adicionales  en  el  álgebra,  pero  todos  ellos  se  pueden
definir en términos de los operadores ya definidos.

Reuniones (join)

La operación reunión es una de  las más útiles en el álgebra relacional y la más frecuentemente
usada  para  combinar  información  de  dos  o  más  relaciones.  Aunque  las  reuniones  se  pueden
definir  como  productos  cartesianos,  seguidos  de  una  selección  y  proyección,  aparecen  en  la
práctica mucho más frecuentemente que los meros productos cartesianos. Además, el resultado
de un producto cartesiano suele ser mucho más grande que el de una reunión.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  8

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Reuniones condicionales

La  versión  más general  de  la  operación  reunión  acepta  una  condición  de  reunión  c  y  un  par  de
ejemplares de relación como argumento y devuelve el ejemplar de una relación. La condición de
reunión es idéntica en su forma a la condición de selección. La operación se define de la siguiente
manera:

R   <CONDICIÓN DE REUNIÓN> S = σ<CONDICIÓN DE SELECCIÓN> (R X S)

Así  se  define  que      es  un  producto  cartesiano  seguido  de  una  selección  (con  la  misma
condición  de  selección  que  la  condición  de  reunión).  La  condición  de  reunión  (selección)  puede
hacer referencia tanto a campos de R como de S. La referencia a los atributos de las relaciones,
por  ejemplo  R,  puede  hacerse  por  su  posición  (de  la  forma  R.i)  o  por  su  nombre  (de  la  forma
R.nombre).

A modo de ejemplo el resultado de M1  M1.idm  <  R1.idmR1 puede verse en el ejemplar de relación
siguiente:

(idm)

nombrem

22  Domínguez
López
31

categoria
7
8

edad
45,0
55,5

(idm)
58
58

idb
103
103

fecha
11/12/2008
11/12/2008

Equirreuniones

Un  caso  especial  frecuente  de  la  operación  reunión  R  S  es  que  la  condición  de  reunión  solo
consista  en  igualdades  (conectadas  por  )  de  la  forma  R.nombre1=S.nombre2,  es  decir,
igualdades  entre  dos  campos  de  R  y  de  S.  En  este  caso,  se  produce  evidentemente  cierta
redundancia al conservar en el resultado los dos atributos. Para condiciones de reunión que solo
contienen  igualdades  de  este  tipo,  se  puede  refinar  la  operación  de  reunión  realizando  una
proyección  adicional  en  la  que  se  descarte  S.nombre2.  La  operación  reunión  con  este
refinamiento se denomina equirreunión.

El  esquema  del  resultado  de  las  equirreuniones  contiene  los  campos  de  R  (con  los  mismos
nombres y dominios que en R) seguido de los campos de S que no aparecen en las condiciones
de reunión (ya que el que aparecía en la condición de reunión ya está correspondiente a R, de lo
contrario  estaría  redundante).  Si  este  conjunto  de  campos  de  la  relación  resultante  incluye  dos
campos  que  hereden  el  mismo  nombre  de  R  y  de  S,  quedarán  sin  nombre  en  la  relación
resultante.

En  la  siguiente  figura  podemos  ver  el  ejemplar  de  relación  resultante  de  hacer  la  siguiente
equirreunión:   M1 M1.idm = R1.idm R1

nombrem

Idm
22  Domínguez
58  Rubio

categoria
7
10

edad
45,0
35,0

idb
101
103

fecha
10/10/2008
11/12/2008

Se puede observar que en el esquema de relación resultante solo aparece un campo idm.

Reunión Natural

Otro caso especial de la operación reunión R S es la reunión natural, en la que las igualdades
se especifican para todos los campos que tienen el mismo nombre en R y en S.  En este caso, se
puede omitir  simplemente el  caso de  la condición de  reunión;  el  valor  predeterminado  es que  la
condición de reunión sea un conjunto de igualdades para todos los campos comunes. La reunión
natural  tiene  la  propiedad  de  garantizar  que  el  resultado  no  tenga  dos  campos  con  el  mismo
nombre.

La expresión de la equirreunión M1  M1.idm  =  R1.idm R1 es realmente una reunión natural, y por lo
tanto se puede denotar simplemente como M1 R1, ya que el único campo común es idm. Si las
dos relaciones no tienen atributos en común, M1 R1 no será más que un producto cartesiano.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  9

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Ejemplo: Sean las tablas:

PROFESORES                                                     DEPARTAMENTOS
DPTO
03
02
03

CODDPTO  NOMDPTO
MATEMÁTICA
SISTEMAS
INGLES

NOMBRE
GARCÍA
PEREZ
LOPEZ

LEGAJO
100
101
102

01
02
03

El  atributo  de  reunión  será  DPTO  y  CODDPTO.  Como  deben  tener  el  mismo  nombre,  primero
debemos hacer:

ρ(DEPARTA(1→DPTO, 2→NOMDPTO), DEPARTAMENTO)

Luego sí podemos hacer:

PROFESORES   DEPARTA

LEGAJO
100
101
102

NOMBRE
GARCÍA
PEREZ
LOPEZ

DPTO
03
02
03

NOMDPTO
INGLES
SISTEMAS
INGLES

Produce el mismo resultado que haber hecho:

                           AUX1   PROFESORES  DEPARTAMENTOS
                           AUX2   <DPTO=CODDPTO>  (AUX1)
                   AUXILIAR    <LEGAJO, NOMBRE, DPTO, NOMDPTO>  (AUX2)

División

El  operador  división  resulta  útil  para  expresar  determinadas  clases  de  consultas  como,  por
ejemplo,  “Averiguar  el  nombre  de  los  marineros  que  tienen  reservados  todos  los  barcos”.
Comprender la menara de utilizar los operadores básicos del álgebra para definir la división es un
ejercicio  útil.  Sin  embargo,  el  operador  división  no  tiene  la  misma  importancia  que  los  demás
operadores,  ya  que  no  se  utiliza  con  tanta  frecuencia,  y  los  SGBD  no  intentan  aprovechar  la
semántica  de  la  división  implementándola  como  un  operador  diferente  (como  si  se  hace,  por
ejemplo, con el operador reunión).

Para ver la división vayamos a un ejemplo. Consideremos dos ejemplares de relación, A y B, de
las que A tiene dos campos, x e y, y B tiene solo un campo, y, con el mismo dominio que en A. Se
define  la operación  división  A/B  como  el  conjunto  de  todos los  valores  de  x  (en forma de  tuplas
unarias) tales que, para todos los valores de y de (cualquier tupla de) B, hay una tupla de A/B.

Otra  manera  de  comprender  la  división  es  la  siguiente.  Para  cada  valor  de  x  de  (la  primera
columna de) A, considérese el conjunto de valores de y que aparecen en (el segundo campo de)
las tuplas de A con ese valor de x. Si ese conjunto contiene (todos los valores de y de9 B, el valor
de x se halla en el resultado de A/B.

Una  analogía  con  la  división  de  enteros  puede  resultar  también  de  ayuda  para  comprender    la
división. Para los enteros A y B, A/B es el mayor entero Q tal que Q*B ≤ A. Para los ejemplares de
relaciones A y B, A/B es el mayor ejemplar de relación Q tal que Q X B  A.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  10

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
En  la  figura  anterior  se  puede  ilustrar  la  división.  Resulta  de  ayuda  pensar  en  A  como  en  una
relación  que  enumera  los  repuestos facilitados  por  diferentes  proveedores  y  en  las  relaciones  B
como en listados de repuestos. A/Bi calcula los proveedores que facilitan todos los repuestos que
aparecen en el ejemplar Bi.

Expresar  A/B  en  términos  de  los  operadores  algebraicos  básicos  es  un  ejercicio  interesante.  La
idea  básica  es  calcular  todos  los  valores  de  x  de  A  que  no  estén  descalificados.  Un  valor  de  x
queda descalificado si, al adjuntarle un valor de y de B, se obtiene una tupla (x, y) que no está en
A. se pueden calcular las tuplas descalificadas mediante la expresión algebraica:

Por lo tanto, se puede definir A/B como:

x ((x (A) X B) ‒ A)

x (A) ‒ x ((x (A) X B) ‒ A)
Para comprender la operación división en toda su generalidad hay que considerar el caso en que
tanto x como y se sustituyen por un conjunto de atributos.

Más ejemplos de consultas de álgebra relacional

Ahora  se  presentarán  varios  ejemplos  para  ilustrar  la  manera  de  escribir  consultas  en  álgebra
relacional. Se empleará para ellos los esquemas de Marineros, Reservas y Barcos que definimos
al comienzo, y sus ejemplares M3, R2 y B1 correspondientes, que se muestran a continuación.

idb

fecha

idm
nombrem
22  Domínguez
29  Bravo
31  López
32  Alández
58  Rubio
64  Horacio
71  Zuazo
74  Horacio
85  Arturo
95  Benito
                M3 de Marineros                                       R2 de Reservas                        B1 de Barcos

idm
22  101  10/10/2009
22  102  10/10/2009
22  103  10/8/2009
22  104  10/7/2009
31  102  11/10/2009
31  103  11/6/2009
31  104  11/12/2009
64  101
64  102
74  103

categoria  edad
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

nombreb
idb
Intrépido
101
102
Intrépido
103  Campeón
104  Místico

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

9/5/2009
9/8/2009
9/8/2009

Color
Azul
Rojo
Verde
Rojo

(Consulta 1)  Averiguar el nombre de los marineros que han reservado el barco 103

Esta consulta se puede escribir así:

nombrem (idb=103 (Reservas)   Marineros)
En  primer  lugar  se  calcula  el  conjunto  de  tuplas  de  Reservas  con  ide=103  y  luego  se  toma  la
reunión natural de este conjunto con Marineros. Esta expresión se puede evaluar con ejemplares
de Reserva y de Marineros. Evaluada con los ejemplares R2 y M3, da una relación que contiene
un  solo  campo,  denominado  nombrem,  y  tres  tuplas  (Dominguez),  (Horacio)  y  (López).
(Obsérvese que si bien hay dos marineros de nombre Horacio, solo uno de ellos ha reservado un
barco color rojo).

Esta  consulta  se  puede  descomponer  en  fragmentos  más  pequeños  mediante  el  operador
renombramiento ρ:

ρ(Temp1, σidb=103(Reservas))

ρ(Temp2, Temp1 Marineros))

nombrem (Temp2)
Obsérvese que, como solo se está empleando ρ para dar nombres a las relaciones intermedias, la
lista  de  renombramiento  es  opcional  y  se  omite.  Tem1  denota  una  relación  intermedia  que
identifica las reservas del barco 103. Tem1 es otra relación intermedia, y denota los marineros que

Ing. Carolina Orcola                                                Año 2013                                                                     Página  11

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
han  hecho  alguna  reserva  del  conjunto  Temp1.  Los  ejemplares  de  estas  relaciones,  al  evaluar
esta consulta con los ejemplares R2 y M3, se ilustran en las siguientes figuras.

idb

fecha

idm
22  103  10/8/2009
31  103  11/6/2009
9/8/2009
74  103

idm
nombrem
22  Domínguez
31  López
74  Horacio

categoria  edad

idb

fecha

7
8
9

45,0  103  10/8/2009
55,5  103  11/6/2009
35,0  103  9/8/2009

Ejemplar Temp1                       Ejemplar Temp2

Finalmente, se extrae el nombrem de Temp2.

La versión de la consulta que emplea ρ es básicamente igual que la consulta original; el empleo
de ρ no es más que una simplificación sintáctica. Sin embargo hay diferentes maneras de escribir
la consulta en el Algebra Relacional. Veamos otra forma de escribir la misma consulta:

nombrem (σidb=103 (Reservas   Marineros))
En  esta  versión  se  calcula  en  primer  lugar  la  reunión  natural  Reservas  y  Marineros  y  luego  se
aplica la selección y la proyección.

Este  ejemplo  permite  ver  el  papel  desempeñado  por  el  álgebra  en  el  SGBD  relacional.  Los
usuarios  expresan  las  consultas  en  un  lenguaje  SQL.  El  SGBD  traduce  las  consultas  de  SQL  a
(una  versión  ampliada  del)  álgebra  relacional  y  luego  busca  otras  expresiones  algebraicas  que
produzcan las mismas respuestas pero que sean más económicas de evaluar. Si la consulta del
usuario se traduce primero en la expresión

un buen optimizador de consultas hallará la expresión equivalente

nombrem (σidb=103 (Reservas   Marineros))

nombrem (σidb=103 (Reservas)   Marineros)
Además,  el  optimizador  reconocerá  que  es  probable  que  la  segunda  expresión    sea  menos
costosa de calcular, ya que el tamaño de las relaciones intermedias es menor, gracias al empleo
temprano de la selección.

(C2) Averiguar el nombre de los marineros que han reservado barcos rojos.

nombrem (σcolor=”rojo” (Barcos)   Reservas   Marineros)
Esta  consulta  implica  una  serie  de  dos  reuniones.  En  primer  lugar,  se  escogen  (tuplas  que
describan)  barcos  rojos.  Luego  se  reúne  este  conjunto  con  Reservas  (reunión  natural,  con  la
igualdad especificada para la columna idb) para identificar las reservas de barcos rojos. Luego se
reúne  la  relación  intermedia  resultante  con  Marineros  (reunión  natural,  con  la  igualdad
especificada  para  la  columna  idm)  para  recuperar  el  nombre  de  los  marineros  que  han  hecho
reservas  de barcos rojos. Finalmente se proyectan  los nombres de los marineros. La respuesta
cuando se evalúa con los ejemplares B1, R2 y M3, contiene los nombres Dominguez, Horacio y
López.

Una expresión equivalente es:

nombrem (idm (idb (σcolor=”rojo” (Barcos))   Reservas)   Marineros)
Esta segunda consulta genera relaciones intermedias con menos campos (y por lo tanto, también
es probable  que dé lugar a ejemplares y a comparar los esquemas de las relaciones intermedias
con menos tuplas). Un optimizador de consultas relacional intentaría llegar a la segunda expresión
si se le diera la primera.

(C3) Averiguar el color de los barcos reservados por López.

color (σnombrem=”López” (Marineros)   Reservas   Barcos)
Esta  consulta  es  muy  parecida  a  la  que  se  empleó  para  calcular  los  marineros  que  habían
reservado barcos rojos. Para los ejemplares B1, R2 y M3 devuelve los colores rojo y verde.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  12

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

(C4) Averiguar el nombre de los marineros que han reservado, como mínimo, un barco.

nombrem (Marineros   Reservas)
La reunión de Marineros y Reservas crea una relación intermedia en la que las tuplas consisten en
una  tupla  de  Marineros  “adjunta  a”  otra  de  Reservas.  Sólo  aparece  una  tupla  de  Marineros  en
(alguna tupla de) esta relación intermedia si, como mínimo, una tupla de Reservas tiene el mismo
valor de idm, es decir, si ese marinero ha hecho alguna reserva. La respuesta, cuando se evalúa
para  los  ejemplares  B1,  R2  y  M3,  contempla  las  tres  tuplas  (Dominguez),  (Horacio)  y  (López).
Aunque  dos  marineros  llamados  Horacio  han  reservado  barcos,  la  respuesta  sólo  contiene  una
copia de la tupla con nombrem Horacio, ya que de lo contrarío habrían tuplas repetidas, violando
la  integridad  de  la  relación.  Se  puede  ver  la  frecuencia  con  que  se  utiliza  la  operación  reunión
natural.

(C5) Averiguar el nombre de los marineros que han reservado barcos rojos o verdes.

ρ(Barcostemp, σcolor=”rojo” (Barcos)  σcolor=”verde” (Barcos))
nombrem (Barcostemp   Reservas   Marineros)
Primero  se  identifica  todos  los  barcos  que  son  rojos  o  verdes  (Barcostemp,  que  contendrá  los
barcos con idb 102, 103 y 104 de los ejemplares B1, R2 y M3). Luego se reúne con Reservas para
identificar  los  idm  de  los  marineros  que  han  reservado  alguno  de  esos  barcos;  esto  nos  da  los
ítems  22,  31,  64  y  74  para  los  ejemplares  usados  como  ejemplo.  Finalmente  se  reúne  (una
relación intermedia que contiene este conjunto de idms) con Marineros para averiguar el nombre
de los marineros con esas idms. Esto resulta en los nombres de Dominguez, Horacio y López para
los ejemplares de nuestro ejemplo. Otra definición equivalente de la consulta sería:

ρ(Barcostemp, σcolor=”rojo”   color=”verde” (Barcos))
nombrem (Barcostemp   Reservas   Marineros)

(C6) Averiguar el nombre de los marineros que han reservado barcos rojos y verdes.

Esta consulta es muy parecida a la anterior, y uno tendería a intentar sustituir simplemente  por
  en la definición de Barcostem:

Incorrecto

ρ(Barcostemp2, σcolor=”rojo” (Barcos)  σcolor=”verde” (Barcos))
nombrem (Barcostemp2   Reservas   Marineros)
Sin  embargo,  esta  solución  es  incorrecta  –en  vez  de  lo  que  se  pretende,  intenta  calcular  los
marineros que han reservado que sean a la vez rojos y verdes-. (Dado que idb es una clave de
Barcos,  cada  Barco  solo  puede  tener  un  color;  esta  consulta  devuelve  siempre  un  conjunto  de
respuestas  vacío).  El  enfoque  correcto  es  averiguar  los  marineros  que  han  reservado  barcos
verdes y, más tarde, tomar la intersección de esos dos conjuntos:

ρ(Rojotemp, idm (σcolor=”rojo” (Barcos)   Reservas))
ρ(Verdetemp, idm (σcolor=”verde” (Barcos)   Reservas))
nombrem ((Rojotemp  Verdetemp)   Marineros)
Las dos relaciones temporales calculan los idms de los marineros, y su intersección identifica los
marineros que han reservado tanto barcos rojos como barcos verdes. En los ejemplares B1, B2 y
M3, los idms de los marineros que han reservado barcos verdes, sus nombres son Dominguez y
López.

Esta formulación de la consulta C6 se puede adaptar fácilmente para averiguar los marineros que
han reservado barcos rojos y verdes (C5); basta con sustituir  por :

ρ(Rojotemp, idm (σcolor=”rojo” (Barcos)   Reservas))
ρ(Verdetemp, idm (σcolor=”verde” (Barcos)   Reservas))
nombrem ((Rojotemp  Verdetemp)   Marineros)

Ing. Carolina Orcola                                                Año 2013                                                                     Página  13

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
En la formulación de las consultas C5 y C6 el hecho de que idm (el campo sobre el que se calcula
la  unión  o  la  intersección)  sea  clave  de  Marineros  es  muy  importante.  Considérese  el  siguiente
intento de responder a la consulta C6:

ρ(Rojotemp, nombrem (σcolor=”rojo” (Barcos)   Reservas   Marineros))
ρ(Verdetemp, nombrem (σcolor=”verde” (Barcos)   Reservas   Marineros))
Rojotemp  Verdetemp

Este  intento  es  incorrecto  por  una  razón  bastante  sutil.  Dos  marineros  diferentes  con  el  mismo
nombre,  como  Horacio  en  los  ejemplares  de  nuestro  ejemplo,  pueden  haber  reservado  barcos
rojos y verdes, respectivamente. En este caso, el nombre Horacio (incorrectamente) se incluye en
la  respuesta  aunque  ninguna  persona  llamada  Horacio  ha  reservado  tanto  barcos  rojos  como
barcos verdes. La causa de este error es que nombrem se emplea para identificar a los marineros
(cuando se lleva a cabo la intersección) en esta versión de la consulta, pero nombrem no es una
clave.

(C7) Averiguar el nombre de los marineros que han reservado, como mínimo, dos barcos.

ρ(Reservas1, idm, nombrem, idb (Marineros   Reservas))
ρ(Paresreservas(1→idm1,2→nom1,3→idb1,4→idm2,5→nom2,6→idb2), Reservas1 X Reservas1)
nom1 (σ(idm1= idm2)˄ (idb1≠ idb2)(Paresreservas))
En primer lugar, se calculan las tuplas de la forma (idm, nombrem, idb), donde el marinero idm ha
hecho  una  reserva  del  bote  idb;  este  conjunto  de  tuplas  es  la  relación  temporal  Reservas1.  A
continuación  se buscan todos los  pares de  tuplas  de  reservas en  los que el  mismo marinero ha
hecho  las  dos  reservas  y  los  barcos  implicados  son  diferentes.  He  aquí  la  idea  central:  para
mostrar que un marinero ha reservado dos barcos hay que encontrar dos tuplas de reservas que
impliquen al mismo marinero pero a barcos distintos. En los ejemplos B1, R2 y M3 cada uno de
los  marineros  con    idms  22,  31  y  64  ha  reservado,  como  mínimo,  dos  barcos.  Finalmente,  se
proyectan los nombres de estos marineros para obtener la respuesta, que contiene los nombres
Dominguez, Horacio y López.

Obsérvese que se ha incluido idm en Reservas, ya que es el campo de la clave que identifica a los
marineros  y  necesitamos  que  compruebe  que  dos  tuplas  cualesquiera  de  Reservas  implican  al
mismo marinero. Como se indicó en el ejercicio anterior, no se pueden emplear nombrem con ese
fin.

(C8)  Averiguar  el  idm  de  los  marineros  con  edad  superior  a  20  que  no  hayan  reservado  ningún
barco rojo.

idm (σedad>20 (Marineros)) ‒ idm (σcolor= “rojo” (Barcos)   Reservas   Marineros)
Esta consulta ilustra el empleo del operador diferencia de conjuntos. Una vez más se aprovecha el
hecho de que idm es la clave de Marineros. En primer lugar se identifican los marineros mayores
de veinte años (en los ejemplares de ejemplo son los idm 22, 29, 31, 32, 58, 64, 74, 85 y 95). Si se
desea calcular el nombre de estos marineros hay que calcular primero sus idms (como ya se ha
visto) y luego reunirlos con Marineros y proyectar los valores de sus nombrem.

(C9) Averiguar el nombre de los marineros que han reservado todos barcos.

El  empleo  de  la  palabra  todos  (o  cada)  es  una  buena  indicación  de  que  se  podría  aplicar  la
operación división:

ρ(Idmstemp, idm, idb (Reservas) / idb (Barcos))
nombrem (Idmstemp   Marineros)
La relación intermedia Idmstemp se define mediante la división  y calcula el conjunto de  idms de
los marineros que han reservado todos los barcos (en los ejemplares de ejemplo esto es solo el
idm 22. Observemos que se han definido las dos relaciones a las que se aplica el operador / -la
primera  tiene  el  esquema  (idm,  idb)  y  la  segunda  tiene  el  esquema  (idb)-.  La  división  devuelve
todos  los  idms  tales  que  hay  una  tupla  (idm,  idb)  en  la  primera  relación  para  cada  idb  de  la

Ing. Carolina Orcola                                                Año 2013                                                                     Página  14

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
segunda. La reunión de Idmstemp con Marineros es necesaria para asociar los nombres con los
idms seleccionados; para el marinero 22 el nombre es Dominguez.

(C10) Averiguar el nombre de los marineros que han reservado todos barcos llamados Intrépido.

ρ(Idmstemp, idm, idb (Reservas) / idb (σnombreb=”Intrépido” (Barcos)))
nombrem (Idmstemp   Marineros)
La  única  diferencia  con  respecto  a  la  consulta  anterior  es  que  ahora  se  aplica  una  selección  a
Barcos,  para  garantizar  que  solo  se  calculan  los  idbs  de  los  barcos  llamados  “Intrépido”  para
definir el segundo argumento del operador división. En los ejemplares de ejemplo la respuesta es
Dominguez y Horacio.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  15

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Cálculo Relacional

Cuando Escribimos una expresión del Algebra Relacional proporcionamos una serie de procedimientos que generan
la respuesta a la consulta. El Calculo Relacional en cambio es un lenguaje de consultas no procedimental, ya que
describe la información deseada sin dar un procedimiento específico para obtenerla.

Hay dos formas de adoptar el cálculo de predicados para crear un lenguaje para
las  Base  de  Datos  relacional.  La  primera  se  denomina  CALCULO  RELACIONAL  DE
TUPLAS, y la segunda CALCULO RELACIONAL DE DOMINIOS.

CALCULO RELACIONAL DE TUPLAS

Las consultas se expresan en el cálculo relacional de tuplas como

{t / P(t)}

es decir, son el conjunto de todas las tuplas tales que el predicado P es cierto para t.
El predicado P es una fórmula.

Ejemplo.  Se  desea  averiguar  el  nombre-sucursal,  número-préstamo  e  importe  de  los
préstamos superiores a $ 2400.

{t / t  préstamo t [importe] > 2400}

CALCULO RELACIONAL DE DOMINIOS

Esta forma utiliza variables de dominio que toman sus valores de los dominios de

un atributo, en vez de tomarlos de una tupla completa.

Las expresiones del calculo relacional de dominios son de la forma

{<x1, x2, …, xn> / P(x1, x2, …, xn)}

donde  x1,  x2,  …,  xn  representan  las  variables  de  dominio,  P  representa  una  formula
compuesta de átomos, como era el caso en el calculo relacional de tuplas.

Cálculo Relacional

El  cálculo  relacional  es  una  alternativa  al  álgebra  relacional.  A  diferencia  del  álgebra,  que  es
procedimental,  el  cálculo  es  no  procedimental,  o  declarativo,  en    el  sentido  de  que  permite
describir el conjunto de respuestas sin necesidad de ser explícitos acerca del modo en el que se
deben  calcular.  El  cálculo  relacional  ha  tenido  gran  influencia  en  el  diseño  de  lenguajes  de
consulta comerciales como el SQL y, especialmente, el Query-by-Example (QBE).

La  variedad  del  cálculo  que  mostramos  aquí  se  llama  cálculo  relacional  de  tuplas  (CRT).  Las
variables  del  CRT  toman  las  tuplas  como  valores.  En  otra  variedad,  denominada  cálculo
relacional  de  dominios  (CRD),  las  variables  adoptan  los  valores  de  los  campos.  El  CRT  ha
tenido cierta influencia en SQL, mientras que el CRD ha influido mucho en QBE. Se tratará CDR
luego.

Cálculo relacional de tuplas

Una variable tupla es una variable que adopta como valores las tuplas de una relación concreta.
Es decir, cada valor asignado a una variable tupla dada tiene el mismo número y tipo de campos.
Una  consulta  del  cálculo  relacional  de  tuplas  tiene  la forma  {  T  |  p(T)},  donde  T  es  una  variable
tupla y  p(T)  denota  una fórmula que  describe  T.  El  resultado  de  esta consulta  es  el  conjunto de
todas las tuplas t para las que la fórmula  p(T) se evalúa como verdadera con T = t. El lenguaje
para  escribir  la fórmula  p(T)  se  halla,  por  lo  tanto,  en  el  corazón  del  CRT  y,  básicamente  es  un

Ing. Carolina Orcola                                                Año 2013                                                                     Página  16

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
mero subconjunto de la lógica de primer orden. Como ejemplo sensillo, consideremos la siguiente
consulta:

(C11) Averiguar todos los marineros con categoría superior a 7.

{ M | M  Marineros  M.categoria > 7}

Cuando se evalúa esta conuslta para algún ejemplar de la relación Marineros, la variable tupla M
se instancia sucesivamente con cada tupla, y se aplica la prueba matemática M.categoría > 7. La
respuesta contiene aquellos ejemplares de M que superan esta prueba.

Sintaxis de las consultas del CRT

Ahora definiremos formalmente conceptos, comenzando con el de fórmula. Sea Rel el nombre de
una relación, R y S variables tuplas, a un atributo de R y b un atributo de S. Supongamos que op
denota un operador del conjunto {<, >, =, ≤, ≥, ≠}. Una fórmula atómica puede ser:

  R  Rel

  R.a op S.b

  R.a op constante o constante op R.a

Se define recursivamente fórmula como una de las posibilidades siguientes, donde p y q son ellas
mismas fórmulas y p(R) denota una fórmula en la que aparece la variable R:

  Cualquier fórmula atómica



-p, p ˄ q, p  q   o  p  q

  R(p(R)), donde R es una variable de tupla

  R(p(R)), donde R es una variable de tupla

En las dos últimas cláusulas se dice que los  cuantificadores  y  ligan la variable R. Se dice
que  una  variable  es  libre  en  una  fórmula  o  subfórmula  (una  fórmula  contenida  en  una  fórmula
mayor) si la (sub)fórmula no contiene ninguna aparición de algún cuantificador que la ligue.1

Observemos  que  cada  variable  de  las  fórmulas  del  CRT  aparece  en  una  subfórmula  atómica,  y
todos  los  esquemas  de  relaciones  especifican  un  dominio  para  cada  campo;  esta  observación
garantiza  que  cada  variable  de  una  fórmula  del  CRT  tenga  un  dominio  bien  definido  del  cual
extraer  los  valores  de  las  variables.  Es  decir,  cada  variable  tiene  un  tipo  bien  definido,  en  el
sentido de los lenguajes de programación. Informalmente, la fórmula atómica  R  Rel  da a R el
tipo de tupla de Rel, y comparaciones como R.a op S.b y R.a op constante inducen restricciones
de tipos para el campo R.a. Si una variable R no aparece en una fórmula atómica de la forma R 
Rel  (es  decir,  sólo  aparece  en  la  fórmulas  atómicas  que  son  comparaciones),  se  deduce  el
convenio  de  que  el  tipo  de  R  es  una  tupla  cuyos  campos  incluyen  todos  los  campos  de  R  que
aparecen en la fórmula (y sólo esos).

No se definen formalmente los tipos de variables, pero el tipo de cada variable estará claro en la
mayor parte de los casos, y lo que hay que destacar es que la mayor parte de las comparaciones
de valores con tipos diferentes  deben fallar siempre. (En discusiones sobre el cálculo relacional
se suele hacer la suposición simplificadora de que hay un solo dominio de constantes y que es el
dominio asociado con cada campo de cada relación).

Se define una consulta del CRT como una expresión de la forma { T | p(T)}, donde T es la única
variable libre de la fórmula p.

Semántica de las consultas de CRT

¿Qué  significan  las  consultas  del  CRT?  Más  exactamente,  ¿qué  es  el  conjunto  de  tuplas
respuesta  para  una  consulta  del  CRT  dada?  La  respuesta  a  una  consulta  del  CRT  {  T  |  p(T)},
como ya se ha indicado, es el conjunto de todas las tuplas t para las que la fórmula p(T) se evalúa

1 Se hace la suposición de que cada variable de la fórmula es libre o está ligada debido a exactamente un
cuantificador. Esto se hace para evitar la preocupación por detalles como los cuantificadores anidados que
ligan algunas apariciones de las variables, pero no todas.

Ing. Carolina Orcola                                                Año 2013                                                                     Página  17

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
como verdadera con la variable T asignada al valor tupla t. Para completar esta definición hay que
indicar las asignaciones de valores tuplas a las variables libres de una fórmula que hacen que esa
fórmula se evalúa como verdadera.

Cada  consulta  se  evalúa  sobre  un  ejemplar  dado  de  la  base  de  datos.  Supongamos  que  cada
variable libre de la fórmula F está ligada a un valor tupla. Para la asignación dada de tuplas a las
variables, con respecto al ejemplar de la base de datos dada, F se evalúa como (o, sencillamente,
“es”) verdadera si se cumple alguna de las siguientes condiciones:

  F es una fórmula atómica R  Rel y a R se le asigna una tupla del ejemplar de la relación

Rel.

  F  es  una  comparación  R.a  op  S.b,  R.a  op  constante  o  constante  op  R.a  y  las  tuplas
asignadas  a  R  y  a  S  tienen  los  valores  de  campos  R.a  y  S.b,  que  hacen  que  la
comparación sea verdadera.

  F  es  de  la  forma  –p  y  p  no  es  verdadera,  o  de  la  forma  p  ˄  q,  y  tanto  p  como  q  son
verdaderas, o de la forma p  q y una de ellas es verdadera, o de la forma  p  q y que q
es verdadera siempre que p sea verdadera.

  F es de la forma R(p(R)) y hay alguna asignación de tuplas a las variables libres de p(R),

incluida la variable R, que hace que la fórmula p(R) sea verdadera.



 F es de la forma R(p(R)) y hay alguna asignación de tuplas a las variables libres de p(R)
que hace que la fórmula p(R) sea verdadera independientemente de la tupla que se asigne
a R.

Cálculo relacional de dominios

Una variable de dominio es una variable que recorre los valores del dominios  de algún atributo
(por ejemplo, se le puede asignar un entero a la variable si aparece en un atributo cuyo dominio
sea el conjunto de enteros). Las consultas del CRD tienen la forma {(x1, x2, …, xn)  | p(x1, x2, …,
xn)},  donde  cada  xi  es  una  variable  de  dominio  o  una  constante,  y  p(x1,  x2,  …,  xn)  denota  una
fórmula  del  CRD  cuya  únicas  variables  libres  son  las  que  se  hallan  entre  las  xi,  1≤  i  ≤  n.  El
resultado de esta consulta es el conjunto de todas las tuplas (x1, x2, …, xn) para las que  la fórmula
se evalúa como verdaderas.

Las fórmulas del  CRD  se  definen  de manera muy  parecida  a las fórmulas del  CRT.  La  principal
diferencia  es  que  ahora  las  variables  son  variables  de  dominio.  Supongamos  que  op  denota  un
operador  del  conjunto  {<,  >,  =,  ≤,  ≥,  ≠}  y  que  X  e  Y  son  variables  de  dominio.  Una  fórmula
atómica en el CRD es una de las siguientes:



(x1,  x2,  …,  xn)    Rel,  donde  Rel  es una relación  con  n  atributos;  cada  xi,  1≤  i ≤  n es una
variable o una constante.

  X op Y

  X op constante o constante op X

Las  fórmulas  se definen recursivamente como una de  las  siguientes posibilidades,  donde  p  y  q
son fórmulas y p(X) denota una fórmula en la que aparece la variable X.

  Cualquier fórmula atómica

  X(p(X)), donde X es una variable de dominio

  X(p(X)), donde X es una variable de dominio

Ing. Carolina Orcola                                                Año 2013                                                                     Página  18

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

Ing. Carolina Orcola                                                Año 2013                                                                     Página  19

