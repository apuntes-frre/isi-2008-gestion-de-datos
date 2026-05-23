UNIVERSIDAD TECNOLÓGICA NACIONAL

FACULTAD REGIONAL RESISTENCIA

INGENIERÍA EN SISTEMAS

DE INFORMACIÓN

GESTIÓN DE DATOS

APUNTES TEÓRICOS

Unidad 2: Almacenamiento de Registros y
organización de ficheros primarios

Profesor Teoría:  Ing.  Carolina Orcola
Jefe de T. P.: Ing. Luis Eiman
Auxiliar de T.P.: Juan Carlos Fernandez

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

INTRODUCCIÓN ................................................................................................................................................. 3
Jerarquías de memoria y dispositivos de almacenamiento ....................................................................... 3
Almacenamiento de base de datos ............................................................................................................ 3
DISPOSITIVOS DE ALMACENAMIENTO SECUNDARIO ............................................................................................. 4
ACCESO PARALELO AL DISCO MEDIANTE EL USO DE TECNOLOGÍAS RAID ............................................................. 4
ALMACENAMIENTO INTERMEDIO DE BLOQUES ..................................................................................................... 4
GRABACIÓN DE LOS REGISTROS DE UN FICHERO EN DISCO .................................................................................. 5
Registros y tipos de registros ..................................................................................................................... 5
Ficheros, registros de longitud fija y registros de longitud variable ........................................................... 5
Grabación de registros en bloques ............................................................................................................ 5
Asignación en el disco de los bloques de un fichero ................................................................................. 5
OPERACIONES CON FICHEROS........................................................................................................................... 6
ESTRUCTURAS DE ÍNDICE PARA FICHEROS ......................................................................................................... 7
Índices de un solo nivel .............................................................................................................................. 7
Índices multinivel ........................................................................................................................................ 9
Índices multinivel dinámicos basados en árboles B+ .............................................................................. 10
Índices sobre claves múltiples ................................................................................................................. 11

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  2

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Introducción

La colección de datos que conforma una base de datos debe almacenarse físicamente en algún
medio  de  almacenamiento  de  la  computadora.  Estos  medios  de  almacenamiento  forman  una
jerarquía que incluye dos categorías principales:

•  Almacenamiento  primario:  incluye  medios  de  almacenamiento  sobre  los  cuales  la  CPU
puede  operar  directamente,  como  la  memoria  principal  y  las  memorias  caché.  Ofrecen
acceso rápido a los datos, aunque su capacidad de almacenamiento es limitada.

•  Almacenamiento  secundario:  incluye  discos  magnéticos,  discos  ópticos  y  cintas.  Estos
generalmente  tienen  mayor  capacidad,  cuestan  menos  y  ofrecen  acceso  más  lento  a  los
datos  que  los  dispositivos  de  almacenamiento  secundario.  La  CPU  debe  copiar
previamente  los  datos  del  almacenamiento  secundario  al  primario  para  poder  operar  con
ellos.

Jerarquías de memoria y dispositivos de almacenamiento

Los  medios  de  almacenamiento  presentan  una  relación  entre  los  factores  precio  y  velocidad  de
acceso  a  los  datos  -  capacidad  de  almacenamiento,  teniendo generalmente  las  de  mayor  precio
más velocidad y menor capacidad.

La capacidad de almacenamiento se mide en kilobytes, megabytes, gigabytes y terabytes.

En la categoría de almacenamiento primario se encuentran los niveles:

-  Memorias  caché  en  el  nivel  más  caro.  Es  una  RAM  estática  utilizada  por  la  CPU  para

aumentar la velocidad de ejecución de los programas.

-  DRAM o RAM dinámica, conocida como memoria principal, que proporciona a la CPU la
principal área de trabajo. Su ventaja es el bajo costo y su desventaja la volatilidad y menor
velocidad que la RAM estática.

En la categoría de almacenamiento secundario se encuentran:

-  Discos magnéticos.

-  Dispositivos CD-ROM. Almacenan datos ópticamente y son leídos mediante un láser. Sus
datos  son  pregrabados  y  no  pueden  ser  sobrescritos.  Su  capacidad  supera  apenas  el
medio  gigabyte.  También  los  DVD,  con  una  capacidad  mucho  mayor  (entre  4  y  15
gigabaytes), entran en este nivel.

-  Cintas, en el nivel mas barato de la jerarquía. Los juke-box de cintas contienen un banco
de  cintas  catalogadas  y  que  pueden  ser  cargadas  automáticamente  en  las  unidades  de
cinta, llegando a contener varios terabytes.

Almacenamiento de base de datos

Las  bases  de  datos  almacenan  grandes  cantidades  de  datos  que  deben  persistir  por  periodos
largos, lo que contrasta con la noción de estructuras de datos transitorias, que persisten sólo por
el tiempo que dura la ejecución del programa. La mayoría de las bases de datos se almacenan en
el almacenamiento secundario del disco magnético debido a:

•  Son demasiado grandes como para caber completas en la memoria principal.
•  La  pérdida  permanente  de  datos  tiene  una  menor  probabilidad  de  ocurrencia  en  el
almacenamiento  secundario  del  disco  que  en  el  primario.  Por  esto  se  llama  a  los

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  3

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
dispositivos de almacenamiento secundario almacenamiento no volátil, en contraste con el
almacenamiento volátil de los dispositivos de almacenamiento primario.

•  El costo de almacenamiento por unidad de datos es menor en el caso de los discos que en

el del almacenamiento primario.

Las  cintas  magnéticas  se  usan  a  menudo  para  respaldar  las  bases  de  datos,  debido  a  que  su
costo  es  menor  aún  que  el  de  los  discos,  pero  a  la  vez  su  velocidad  de  acceso  es  mucho  más
lenta  y  se  encuentran  off-line,  es  decir  que  para  acceder  a  los  datos  es  necesario  cargar
previamente la cinta.

Las técnicas usadas para almacenar grandes cantidades de datos estructurados en un disco son
importantes  para  los  diseñadores  de  bases  de  datos.  Generalmente  los  SGBD  ofrecen  distintas
alternativas  para  organizar  los  datos,  y  el  proceso  de  diseño  físico  de  bases  de  datos  implica
elegir  de  entre  estas  opciones  de  acuerdo  a  cuál  se  adapte  mejor  a  los  requerimientos  de  la
aplicación.

En  general,  las  aplicaciones  sólo  requieren  una  pequeña  porción  de  la  base  de  datos  en  un
momento determinado, por lo que en ese momento habrá que localizarla en el disco y copiarla a la
memoria  principal  para  poder  procesarla,  y  luego  volver  a  escribirla  al  disco  si  es  que  se
modificaron los datos. Estos datos están organizados en el disco en ficheros de registros. Cada
registro es una colección de datos que puede interpretarse como hechos acerca de entidades, sus
atributos y sus relaciones. Los registros deben almacenarse en el disco de manera tal que cuando
se los requiera puedan ser localizados eficientemente.

Hay varias organizaciones primarias de ficheros que determinan la forma en que los registros
de un fichero se colocan físicamente en el disco y cómo se puede acceder a éstos.

•  Los ficheros de montículo (o ficheros no ordenados), colocan los registros en el disco sin

un orden específico y añaden los nuevos registros al final.

•  Los ficheros ordenados (o secuenciales) mantienen los registros ordenados de acuerdo al

valor de un cierto campo clave.

•  Los  ficheros  de  direccionamiento  calculado,  técnica  también  conocida  como  hashing,
utilizan  una  función  de  direccionamiento  calculado  (función  hash)  aplicada  a  un  campo
específico  (clave  de  direccionamiento  calculado)  para  determinar  la  colocación  de  los
registros en el disco.

Otras  organizaciones  primarias  de ficheros,  como  los  árboles  B,  utilizan  estructuras  de  árbol. La
organización  secundaria  o  estructura  de  acceso  auxiliar  permite  que  los  accesos  a  los
registros de un fichero basado en campos alternativos sean más eficientes que los que han sido
utilizados para la organización primaria.

Dispositivos de almacenamiento secundario

Acceso paralelo al disco mediante el uso de tecnologías RAID

Almacenamiento intermedio de bloques

Cuando es preciso transferir varios bloques del disco a la memoria principal y se conocen todas
las direcciones de bloque, es posible reservar varios búferes en la memoria principal para agilizar
la  transferencia.  Mientras  se  lee  o  escribe  un  búfer,  la  CPU  puede  procesar  los  datos  de  otro,
debido  a  que  se  cuenta  con  un  procesador  independiente  de  E/S  del  disco  (controlador),  que

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  4

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
puede transferir un bloque de datos entre la memoria y el disco independientemente del proceso
de la CPU y en paralelo con ésta.

Cuando  el  tiempo  necesario  para  procesar  un  bloque  de  disco  en  la  memoria  es  menor  que  el
tiempo  necesario  para  leer  el  siguiente  bloque  y  llenar  un  búfer,  la  lectura  y  el  procesamiento
pueden realizarse en paralelo. La CPU puede empezar a procesar un bloque una vez completada
su  transferencia  a  la  memoria  principal;  al  mismo  tiempo,  el  controlador  del  disco  puede  estar
leyendo y transfiriendo el siguiente bloque a un búfer diferente. Esta técnica se conoce como de
doble búfer.

Grabación de los registros de un fichero en disco

Registros y tipos de registros

Los datos se almacenan casi siempre en forma de registros, cada uno de los cuales consta de
una colección de valores o elementos de datos relacionados, donde cada valor está formado de
uno  o  más  bytes  y  corresponde  a  un  determinado  campo  del  registro.  En  general,  los  registros
describen entidades y sus atributos.

Una colección de nombres de campos y sus tipos correspondientes constituye una definición de
tipo  de  registro  o formato  de  registro.  El  tipo  de  datos  asociado  a  cada  campo  especifica  el
tipo de valores que el campo puede tomar, el cual es casi siempre alguno de los tipos de datos
estándar utilizados en programación.

Ficheros, registros de longitud fija y registros de longitud variable

Un fichero es una secuencia de registros. Si todos los registros del fichero tienen exactamente el
mismo  tamaño  se  dice  que  éste  está  compuesto  de  registros  de  longitud  fija.  Si  diferentes
registros  tienen  tamaños  distintos,  los  registros  que  componen  el  fichero  son  de  longitud
variable.

La longitud de los registros puede ser variable por:

•  Los registros del fichero son todos del mismo tipo, pero uno o más campos son de tamaño

variable.

•  Los registros del fichero son todos del mismo tipo, pero uno o más de los campos pueden

tener múltiples valores en registros individuales.

•  Los  registros  del  fichero  son  todos  del  mismo  tipo,  pero  uno  o  más  de  los  campos  son

opcionales.

•  El fichero contiene registros de diferentes tipos y por lo tanto de tamaño variable.

Grabación de registros en bloques

Los registros de un fichero se deben asignar a bloques del disco porque el bloque es la unidad de
transferencia de datos entre el disco y la memoria. Si el tamaño del bloque es mayor que el del
registro, cada bloque contendrá numerosos registros. Inusualmente algunos ficheros pueden tener
registros grandes que no caben en un bloque.

Asignación en el disco de los bloques de un fichero

Algunas técnicas estándar para asignar bloques en disco son:

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  5

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
•  Asignación  contigua.  Los  registros  del  fichero  se  asignan  a  bloques  consecutivos  del
disco, agilizando notablemente la lectura de todo el fichero si se emplea doble búfer, pero
dificultando la expansión del fichero.

•  Asignación enlazada. Cada bloque del fichero contiene un puntero al siguiente bloque de
ese fichero, facilitando así la expansión del fichero pero volviendo más lenta su lectura.
•  Segmentos de fichero. Se asignan grupos de bloques de disco consecutivos y luego se

enlazan los grupos.

•  Asignación indexada. Uno o más bloques de índice contienen punteros a los bloques de

fichero actuales.

Operaciones con ficheros

El  siguiente  modelo  de  costo  permite  estimar  el  costo  (en  términos  de  tiempo  de  ejecución)  de
diferentes operaciones de bases de datos. Se tiene:

-  hay B bloques con R registros por bloque;

-  el tiempo promedio para leer o escribir un bloque a disco es D;

-  el tiempo promedio para procesar un registro (por ejemplo, comprar el valor de un campo

con una constante de selección) es C;

-  en  la  organización  de  ficheros  de  direccionamiento  calculado  se  utiliza  una  función  hash
para  mapear  un  registro  a  un  rango  de  números,  la  cual  requiere  un  tiempo  H  para  ser
aplicada a cada registro.

Tomando  valores  típicos,  como  D  =  25  milisegundos,  C  y  H  entre  1  y  10  microsegundos,  se
espera controlar el costo de E/S de bloques de disco, ya que es mucho más significativo.

Un objetivo en bases de datos es comprender la importancia de la elección de una organización
de  ficheros  apropiada.  Para  poder  realizar  un  análisis  comparativo  se  toman  las  siguientes
operaciones simples:

•  Scan: trata todos los registros en el fichero. Los bloques en el fichero deben ser llevadas

del disco al búfer.

•  Búsqueda  con  selección  de  igualdad:  trata  todos  los  registros  que  satisfacen  una
selección  de  igualdad.  Deben  tratarse  los  bloques  de  disco  que  contienen  los  registros
calificados, y a su vez obtenerse dichos registros dentro de cada bloque.

•  Búsqueda con selección de rango: trata todos los registros que satisfacen una selección

de rango.

•

Inserción: inserta un registro dado en un fichero. Se debe identificar el bloque en el que
debe insertarse el registro, obtenerlo del disco, modificarlo para incluir el nuevo registro y
volverlo a escribir al disco.

•  Borrado:  borra  un  registro  especificado.  Se  debe  identificar  el  bloque  que  contiene  el

registro, obtenerlo del disco, modificarlo y volverlo a escribir.

Comparación según las organizaciones de ficheros:

Para  la  comparación  se  utilizan  las  organizaciones  de:  fichero  de  montículo,  ordenado  y
direccionamiento  calculado  (hash).  Teniendo  en  cuenta  el  modelo  de  costo  y  las  operaciones
presentados, se obtiene la siguiente tabla analítica:

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  6

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Tipo de fichero

Scan

Búsqueda de
igualdad

Búsqueda de
rango

Inserción

Borrado

Montículo

Ordenado

BD

BD

0.5BD

Dlog2B

BD

2D

Búsqueda + D

+
Dlog2B
coincidencias

#

Búsqueda + BD

Búsqueda + BD

Hash

1.25BD

D

1.25BD

2D

Búsqueda + D

Estructuras de índice para ficheros

Índice  de  un  fichero  es  una  estructura  auxiliar  diseñada  para  realizar  más  rápidamente  las
operaciones  que  no  son  soportadas  eficientemente  por  la  organización  básica  de  registros  en
dicho  fichero.  El  índice  puede  ser  visto  como  una  colección  de  entradas  de  datos,  con  una
manera eficiente de localizar todas las entradas de datos con clave de búsqueda k. Cada una de
tales  entradas  (k*)  contiene  información  suficiente  para  recuperar  registros  de  datos  con  valor  k
para la clave de búsqueda.

Alternativas para entradas de datos en un índice:

Una entrada de datos k* permite recuperar uno o más registros de datos con clave de valor k. Se
consideran tres alternativas principales:

1.  Una entrada de datos k* es un registro de datos actual (con clave de búsqueda k).

2.  Una  entrada  de  datos  es  un  par  (k,  rid),  donde  rid  es  el  identificador  de  registro  de  un

registro de datos con clave de búsqueda k.

3.  Una entrada de datos es un par (k, rid-list), donde rid-list es una lista de identificadores de

registro de registros de datos con clave de búsqueda k.

Si  un  índice  utiliza  la  Alternativa  (1),  no  será  necesario  almacenar  los  registros  de  datos
separadamente.

Las  Alternativas  (2)  y  (3),  las  cuales  contienen  entradas  de  datos  que  apuntan  a  registros  de
datos,  son  independientes  de  la  organización  de  fichero  que  utiliza  el  fichero  indexado.  La
Alternativa  (3)  ofrece  mejor  utilización  de  espacio  que  la  (2),  pero  las  entradas  de  datos  son  de
longitud  variable,  dependiendo  del  número  de  registros  de  datos  con  un  valor  de  clave  de
búsqueda.

Si se quiere construir un índice sobre una colección de registros de datos, a lo sumo uno de ellos
podrá usar la Alternativa (1).

Índices de un solo nivel

Índices agrupados versus no agrupados

Cuando un fichero se encuentra organizado de manera tal que el ordenamiento de los registros de
datos es el mismo o similar al del ordenamiento de las entradas de datos en algún índice, se dice
que el índice es agrupado.

Los índices que mantienen sus entradas de datos ordenadas por la clave de búsqueda usan una
colección de entradas de índice, organizadas en una estructura de árbol, para guiar la búsqueda
de las entradas de datos.

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  7

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Entradas de
índice

(Búsqueda
directa para las
dentradas de
datos)

Entradas
de datos

Fichero
índice

Fichero
de
datos

Índice agrupado usando la Alternativa (2)

Un fichero de datos puede estar agrupado en a lo sumo una clave de búsqueda. Un índice que no
está agrupado se llama índice no agrupado: se pueden tener varios índices no agrupados sobre
un archivo de datos.

Entradas de
índice

(Búsqueda
directa para las
dentradas de
datos)

Entradas
de datos

Fichero
índice

Fichero
de
datos

Índice no agrupado usando la Alternativa (2)

Índices densos versus dispersos

Un  índice  es  denso  si  contiene  al  menos  una  entrada  de  datos  por  cada  valor  de  la  clave  de
búsqueda que aparece en un registro. Un índice disperso o no denso contiene una entrada por
cada bloque de registros en el fichero de datos.

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  8

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

  Ayala

  Cáceres

  Sánchez

Ayala, 25, 300

Benítez, 33, 400

Burgos, 30, 200

Cáceres, 50, 500

Dorrego, 22, 600

Fabri, 40, 600

Sánchez, 44, 300

Tilger, 44, 500

22

25

30

33

40

44

44

50

Índice disperso sobre
nombre

DATOS

Índice denso
sobre edad

Índices primarios y secundarios

Índice primario es un índice sobre un conjunto de campos que incluyen la clave primaria. Si un
índice no es primario, se lo llama secundario.

Se dice que dos entradas de datos están duplicadas si tienen el mismo valor para el campo de la
clave de búsqueda asociada con el índice. Un índice primario está garantizado que no contendrá
duplicados,  pero  un  índice  sobre  otros  campos  puede  contener  duplicados.  Si  se  sabe  que  no
existen duplicados, el índice se llama único.

Índices multinivel

Método de Acceso Secuencial Indexado (ISAM):

Para entender el fundamento de la técnica ISAM es útil comenzar con un fichero ordenado simple.
Consideremos un fichero de registros de Alumnos ordenado por promedio. Para responder a una
selección de rango como “Encontrar todos los alumnos con un promedio superior a 7,00”, se debe
identificar  el  primero  de  tales  alumnos  mediante  una  búsqueda  binaria  del  fichero  y  luego
recorrerlo  a  partir  de  ese  punto.  Si  el  fichero  es  grande,  esta  búsqueda  puede  resultar  cara.  Se
puede mejorar este método.

Una  idea  es  crear  un  segundo  fichero  (índice)  con  un  registro  por  cada  bloque  en  el  fichero
original, de la forma (primera clave del bloque, puntero a bloque), también ordenado por el atributo
clave (promedio).

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  9

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

entrada
de índice

P0

K1

P1

K2

P2

...

Km

Pm

Formato de un bloque de índice

Se puede realizar una búsqueda binaria del fichero índice para identificar el bloque que contiene el
primer  valor  de  clave  que  satisface  la  selección  de  rango,  y  seguir  el  puntero  al  bloque  que
contiene el primer registro de datos con ese valor de clave. Luego se recorre el fichero de datos
secuencialmente para obtener otros registros calificados.

k1 k2

kN

Bloque 1

Bloque 2

Bloque 3

Bloque N

Estructura de índice de un nivel

Fichero
índice

Fichero
de datos

El  fichero  índice  propuesto  es  probablemente  mucho  más  pequeño  que  el  fichero  de  datos.
Además una búsqueda binaria será mucho más rápida en el fichero índice que en el de datos. Sin
embargo,  esta  búsqueda  sobre  el  fichero  índice  podría  ser  aún  cara,  y  el  tamaño  del  fichero  es
aún lo suficientemente grande para hacer caras las inserciones y borrados.

El tamaño potencialmente grande del fichero índice motiva la idea de ISAM: aplicar el paso previo
de la construcción de un fichero auxiliar sobre el fichero índice y así recursivamente hasta que el
fichero  auxiliar  final  quepa  en  un  bloque.  La  repetida  construcción  de  un  índice  de  un  nivel
conduce  a  una  estructura  arbórea.  La  estructura  ISAM  es  completamente  estática  y  por  lo  tanto
facilita optimizaciones de bajo nivel.

Cada nodo del árbol ISAM es un bloque de disco, y todos los datos residen en los bloques hoja.

Índices multinivel dinámicos basados en árboles B+

La estructura de búsqueda de árbol B+, ampliamente usada en la práctica, es un árbol balanceado
en  el  cual  los  nodos  internos  dirigen  la  búsqueda  y  los  nodos  hojas  contienen  las  entradas  de
datos. Debido a que la estructura de árbol crece y decrece dinámicamente no es factible ubicar los
bloques hoja secuencialmente. Con el objeto de recuperar los bloques hoja eficientemente, se los
enlaza  usando  punteros  a  bloques.  Mediante  la  organización  de  éstos  en  una  lista  doblemente
enlazada,  se  puede  recorrer  fácilmente  la  secuencia  de  bloques  hoja  (conjunto  secuencia)  en
ambas direcciones.

Los árboles B+ tienen las siguientes características principales:

•  Las operaciones (inserción, borrado) sobre el árbol la mantienen balanceado.
•  Está garantizada una ocupación mínima del 50% para cada nodo excepto el raíz mediante

la implementación de ciertos algoritmos.

•  La  búsqueda  de  un  registro  requiere  solamente  atravesar  el  árbol  desde  la  raíz  hasta  la
hoja apropiada. La longitud del camino desde la raíz hasta una hoja (cualquiera, ya que el
árbol está balanceado) será la altura del árbol.

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  10

Universidad Tecnológica Nacional                                                   Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Índices sobre claves múltiples

La clave de búsqueda de un índice puede contener varios campos; tales claves se llaman claves
múltiples, compuestas o concatenadas.

<edad, sal>

11,80

12,10

12,20

13,75

<sal, edad>

10,12

20,12

75,13

80,11

Indice

Indice

nombre

edad

sal

bob

cal

joe

sue

12

11

12

13

DATOS

10

80

20

75

Indice

Indice

Índices de clave compuesta

<edad>

11

12

12

13

<sal>

10

20

75

80

Ing. Juan Carlos Fernandez                             Año 2010                                                                Página  11

