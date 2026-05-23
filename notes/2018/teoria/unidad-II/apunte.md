UNIVERSIDAD TECNOLÓGICA NACIONAL
FACULTAD REGIONAL RESISTENCIA

INGENIERÍA EN SISTEMAS
DE INFORMACIÓN

GESTIÓN DE DATOS

APUNTES TEÓRICOS

Unidad 3: Modelado de datos

Profesor Teoría:  Ing.  Carolina Orcola
Jefe de T. P.: Ing. Luis Eiman
Auxiliar de T.P.: Juan Carlos Fernandez

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Índice

Unidad III: Modelado de Datos ........................................................................................................ 3

Proceso de diseño de la Base de Datos ...................................................................................... 3

Diseño de base de datos y diagramas ER ............................................................................... 4

Entidades, atributos y conjuntos de entidades ............................................................................ 5

Las relaciones y los conjuntos de relaciones............................................................................... 6

Otras características del modelo ER ........................................................................................... 8

Restricciones de clave en relaciones ...................................................................................... 8

Restricciones de clave en relaciones ternarias .................................................................... 9

Restricciones de participación ............................................................................................... 10

Entidades débiles .................................................................................................................. 11

Jerarquías de clases ............................................................................................................. 12

Agregación ............................................................................................................................ 13

Diseño conceptual del modelo ER ............................................................................................ 14

Entidades y atributos ............................................................................................................. 14

Entidades y relaciones .......................................................................................................... 15

Relaciones binarias y ternarias ............................................................................................. 16

Agregación y relaciones ternarias ......................................................................................... 18

Herramientas de apoyo para creación de Diagramas ER .......................................................... 20

Bibliografía ................................................................................................................................ 22

Ing. Carolina Orcola                                                Año 2011                                                                       Página  2

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Unidad III: Modelado de Datos

El modelado conceptual es una fase importante del diseño de una aplicación fructífera de base de
datos. Vimos en unidades anteriores que una de las características fundamentales de los SGBD
es que proporciona cierto nivel de abstracción de los datos, al ocultar detalles de almacenamiento
que  la  mayoría  de  los  usuarios  no  necesita  conocer.  Un  modelo  de  datos  (colección  de
conceptos que sirven  para describir  la estructura  de  una base  de  datos) proporciona los medios
necesarios para conseguir dicha abstracción. Cuando hablamos de estructura de la base de datos
nos referimos a los tipos de datos, los vínculos y las restricciones que deben cumplirse para esos
datos.

Se han propuesto muchos modelos de datos y se pueden clasificar dependiendo de los tipos de
conceptos que ofrecen para describir la estructura de la base de datos. Los modelos de datos de
alto nivel o conceptuales disponen de conceptos muy cercanos al modo como la mayoría de los
usuarios  percibe  los  datos,  mientras  que  los  modelos  de  bajo  nivel  o  físicos  proporcionan
conceptos que describen los detalles sobre cómo se almacenan los datos en el ordenador.

El modelo de datos Entidad-Relación (ER) permite describir los datos implicados en una empresa
real  en  términos  de  objetos  y  de  sus  relaciones,  y  se  emplea  mucho  para  desarrollar  el  diseño
preliminar  de  la  base  de  datos.  Aporta  conceptos  útiles  que  permiten  pasar  de  una  descripción
informal de los que los usuarios desean de su base de datos a otra más detallada y precisa que se
pueda implementar en un SGBD.

Proceso de diseño de la Base de Datos

La  figura  muestra  una  descripción
simplificada  del  proceso  de  diseño
de la base de datos.

El  primer  paso  que  aparece  es  la
obtención  y  análisis  de  requisitos.
Durante este paso los diseñadores
entrevistan  a  los  futuros  usuarios
de la base de datos para entender
y  documentar  sus  requisitos  de
datos.  El  resultado  de  este  paso
será  un  conjunto  de  requisitos  del
usuario,
forma
redactado  de
concisa.  Estos  requisitos  deben
forma  más
especificarse  de
detallada y completa posible.

la

los

conocidos

En  paralelo  con  la  especificación
requisitos  de  datos,
de
conviene  especificar  los  requisitos
funcionales
la
aplicación.  Éstos  consisten  en  las
transacciones  definidas  por  el
usuario  que  se  aplicarán  a  las
la
bases  de  datos,  e
obtención
la
actualización.

incluyen

datos

de

de

y

Una  vez  recogidos  y  analizados
todos  los  requisitos,  el  siguiente
paso  es  crear  un  esquema
conceptual  para  la  base  de  datos
mediante  un  modelo  conceptual
de  datos  de  alto  nivel.  Este  paso
se denomina diseño conceptual. El
conceptual  es  una
esquema

Ing. Carolina Orcola                                                Año 2011                                                                       Página  3

 Minimundo OBTENCIÓN Y ANÁLISIS DE REQUISITOS ANÁLISIS FUNCIONAL DISEÑO CONCEPTUAL DISEÑO LÓGICO (TRANSFORMACIÓN DEL MODELO DE DATOS) DISEÑO DE PROGRAMAS DE APLICACIÓN DISEÑO  FÍSICO IMPLEMENTACIÓN DE TRANSACCIONES Requisitos de la Base de Datos Requisitos funcionales Esquema conceptual (en un modelo de datos de alto nivel) Especificación de transacciones de alto nivel Independiente del SGBD Específico para cada  SGBD Esquema (conceptual) lógico (en el modelo de datos del SGBD específico) Esquema interno Programas de aplicación
Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
descripción  concisa    de  los  requisitos  de  información  de  los  usuarios,  y  contiene  descripciones
detalladas  de  los  tipos  de  entidad,  vínculos  y  restricciones  representados  según  el  modelo
conceptual  de  datos  usado  (en  esta  unidad  veremos  el  ER).  Puestos  que  estos  conceptos  no
incluyen  detalles  de  implementación,  suelen  ser  fáciles  de  entender  y  pueden  servir  para
comunicarse con usuarios no técnicos.

El  esquema  conceptual  de  alto  nivel  también  pude  servir  como  referencia  para  asegurarse  de
satisfacer  todos  los  requerimientos  de  los  usuarios  y  de  que  no  haya  conflictos  entre  dichos
requisitos.  Este  enfoque  permite  a  los  diseñadores  de  la  base  de  datos  concentrarse  en
especificar  las  propiedades  de  los  datos,  sin  preocuparse  por  detalles  del  almacenamiento.  En
consecuencia, tienen menos problemas para elaborar un diseño conceptual de la base de datos.

Una  vez  diseñado  el  esquema  conceptual  o  durante  dicho  proceso,  es  posible  utilizar  las
operaciones  básicas  del  modelo  de  datos  para  especificar  operaciones  de  usuario  de  alto  nivel
identificadas  durante  el  análisis  funcional.  Esto  también  sirve  para  confirmar  que  el  esquema
conceptual satisfaga todos los requisitos funcionales identificados. Se puede modificar el esquema
conceptual si no resulta factible especificar algunos requisitos funcionales en el esquema inicial.

A  partir  de  allí  se  debe  usar  un  SGBD  para  implementar  la  base  de  datos.  Esto  se  logra
transformando el esquema conceptual del modelo usado al modelo de datos de implementación.
Este  paso  se  llama  diseño  lógico  o  transformación  del  modelo  de  datos,  y  su  resultado  es  un
esquema de la base de datos en el modelo de datos que se usará para la implementación de la
base de datos.

El  paso  final  es  la  fase  de  diseño  físico,  durante  la  cual  se  especifican  las  estructuras  de
almacenamiento  internas,  los  caminos  de  acceso  y  la  organización  de  ficheros  de  la  base  de
datos. En paralelo con estas actividades, se diseñan e implementan programas de aplicación en
forma  de  transacciones  de  la  base  de  datos  que  correspondan  a  las  especificaciones  de
transacciones de alto nivel.
Diseño de base de datos y diagramas ER1

El  proceso  de  diseño  de  base  de  datos  que  analizamos  antes  puede  dividirse  en  seis  etapas  o
pasos, de los cuales el Modelo ER es muy relevante para los tres primeros pasos.

1.  Análisis de Requisitos. El primer paso del diseño de aplicaciones de bases de datos es
comprender los datos que se deben guardar en la base de datos, las aplicaciones que se
deben construir sobre ellos y las operaciones que son más frecuentes e imponen requisitos
de  rendimiento.  En  otras  palabras,  hay  que  averiguar  lo  que  los  usuarios  esperan  de  la
base de datos. Se trata normalmente de un proceso informal que supone discusiones con
grupos de usuarios, un estudio del entorno operativo vigente y del modo en que se espera
que  éste  cambie,  el  análisis  de  toda  la  documentación  disponible  sobre  las  aplicaciones
existentes que se espera que la base de datos sustituya o complemente (sean manuales o
informatizadas),  etc..  Se  han  propuesto  varias  metodologías  para  la  organización  y
presentación  de  la  información  recogida  en  esta  etapa,  y  se  han  desarrollado  algunas
herramientas automatizadas para soportar el proceso.

2.  Diseño  conceptual  de  base  de  datos.  La  información  reunida  en  el  análisis  de
requerimientos se emplea para desarrollar una descripción de alto nivel  de los datos que
se  van  a  guardar  en  la  base  de  datos,  junto  con  las  restricciones  que  se  sabe  que  se
impondrán sobre esos datos. Este paso se suele llevar a cabo empleando el modelo ER,
que es uno de los modelos de datos de alto nivel o semánticos empleados en el diseño de
base de datos. El objetivo es crear una descripción sencilla de los datos que se acerquen
mucho  a  los  que  los  usuarios  y  los  desarrolladores  piensan  de  los  datos.  Esto  facilita  la
discusión entre todas las personas implicadas en el proceso de diseño, aunque no tengan
formación  técnica.  Al  mismo  tiempo,  el  diseño  inicial  debe  ser  lo  bastante  preciso  como

1  Este  apartado  puede  resultar  redundante,  pero  sirve  para  aclarar  conceptos.  La  descripción  de  los
Procesos  de  Diseño  de  Bases  de  datos  estaba  sacado  del  libro  de  Elmasri  y  Navate,  mientras  que  esta
explicación está sacada de Ramakrishnan/Johannes, ya que creo que ambas tratan conceptos con especial
claridad.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  4

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
para  permitir  una  traducción  directa  a  un  modelo  de  datos  soportado  por  algún  SGBD
comercial (para nosotros el modelo relacional).

3.  Diseño lógico de la base de datos. Hay que escoger un SGBD que implemente nuestro
diseño de la base de datos y transformar el diseño conceptual de la base de datos en un
esquema  de  base  de  datos  del  modelo  de  datos  del  SGBD  elegido.  Nosotros  solo
consideraremos  SGBD  relacionales,  por  lo  que  esa  transformación  será  de  ER  a
Relacional.

El  diagrama  ER  no  es  más  que  una  descripción  aproximada  de  los  datos  creados  mediante  la
evaluación subjetiva de la información reunida durante el análisis de requerimientos o requisitos.
Un análisis más detenido puede refinar el esquema lógico obtenido al final del Paso 3, y una vez
que  se  dispone  de  un  buen  esquema  lógico  hay  que  tomar  en  consideración  los  criterios  de
rendimiento y diseñar el esquema físico. Finalmente hay que abordar los aspectos de seguridad y
garantizar que los usuarios puedan tener acceso a los datos que necesitan, pero no a los que se
les  desea  ocultar.  Las  tres  etapas  restantes  de  diseño  de  la  base  de  datos  se  describen
brevemente a continuación.

4.  Refinamiento  de  los  esquemas:  análisis  del  conjunto  de  relaciones  del  esquema
relacional para identificar posibles problemas y refinarlo. A diferencia del paso de análisis
de  requisitos  y  del  diseño  conceptual,  que  son  esencialmente  subjetivos,  el  refinamiento
del esquema se puede guiar por la teoría de la normalización de relaciones, que se verán
en unidades posteriores.

5.  Diseño físico de la base de datos:  En este paso se toman en consideración las cargas
de trabajo típicas esperadas que deberá soportar la base de datos y se refinará aún más el
diseño de la misma para garantizar que cumpla con los criterios de rendimiento deseados.
Puede que este paso no implique más que la creación de índices para algunas tablas y el
agrupamiento  de  otras,  o  puede  que  suponga  un  rediseño  sustancial  en  partes  del
esquema de base de datos obtenidos en pasos anteriores.

6.  Diseño de aplicaciones y de la seguridad: Cualquier proyecto de sw que implique a una
base de datos debe tomar en consideración aspectos de su aplicación que van más allá de
la  propia  base  de  datos.  Las  metodologías  de  diseño  como  UML  intenta  abordar  todo  el
ciclo  de  diseño  y  desarrollo  de  sw.  En  resumen,  hay  que  identificar  las  entidades  y  los
procesos  relacionados  con  la  aplicación.  Hay  que  describir  el  papel  de  cada  entidad  en
cada proceso que se refleje en una tarea de la aplicación, como parte del flujo de trabajo
completo de esta tarea. Para cada papel hay que identificar las partes de la base de datos
que  debe  tener  accesible  y  las  que  no  deben  tener  accesible,  y  adoptar  las  medidas
necesarias para que esas reglas de acceso se cumplan.

En la fase de implementación se debe codificar cada tarea en un lenguaje de  programación (por
ejemplo, Java) y emplear el SGBD para acceder a los datos.

Entidades, atributos y conjuntos de entidades

Una  entidad  es  un  objeto  del  mundo  real  que  puede  distinguirse  de  otros  objetos.  Una  entidad
puede ser un objeto con existencia física (una persona, un automóvil, una casa, un empleado) o
un  objeto  con  existencia  conceptual  (una  empresa,  un  puesto  de  trabajo,  un  curso  universitario,
una cuanta de cliente).

Cada  entidad  tiene  propiedades  específicas  llamadas  atributos  que  la  describen.  Por  ejemplo,
una  entidad  empleado  puede  describirse  por  su  nombre,  edad,  dirección,  salario  y  puesto  de
trabajo. Una entidad particular tendrá un valor para cada uno de esos atributos.

En  el  modelo  ER  se  manejan  distintos  tipos  de  atributos,  como  ser:  simples  o  compuestos,
monovaluados o multivaluados, y almacenados o derivados.

Atributos compuestos o simples: Los atributos compuestos se pueden dividir en componentes más
pequeños  (por  ej.:  el  atributo  Dirección  de  la  entidad  Empleado  se  puede  subdividir  en  Calle,
Número, Departamento, Piso.  A su vez, los atributos simples no son divisibles.

Atributos  monovaluados  o  multivaluados:  Los  atributos  monovaluados  son  aquellos  que  pueden
tener  un  único  valor  por  entidad,  el  atributo  Edad  es  monovaluado.  En  cambio  un  atributo  que

Ing. Carolina Orcola                                                Año 2011                                                                       Página  5

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
puede tener un conjunto de valores para la misma entidad se dice multivaluado, por ejemplo Título
de la entidad Persona, dado que la misma persona puede tener varios títulos.

Atributos  almacenados  o  derivados:  En  algunos  casos  se  relacionan  dos  o  más  atributos  a  la
misma entidad, siendo que uno es almacenado y los demás son derivados, por ejemplo, el atributo
Fecha de Nacimiento es almacenado, pero el atributo Edad es derivado de Fecha de Nacimiento
(se calcula según la fecha actual cada vez que se consulta la entidad).

Resulta  útil  identificar  conjuntos  de  entidades  similares  (conjunto  de  entidades).  Por  ejemplo  la
entidad Empleados del Departamento Ventas y la entidad Empleados del departamento Compras
son  entidades  similares,  y  forman  parte  del  mismo  conjunto  de  entidades.  Estas  entidades
comparten  los  mismos  atributos,  pueden  formar  conjuntos  disjuntos  o  no  (es  decir  que  puede
haber un empleado que forme parte de ambas entidades).

Cada    atributo  que  compone  una  entidad  está  asociado  a  un  dominio  de  valores  posibles,  por
ejemplo el dominio asociado al atributo  nombre de Empleados podría ser el conjunto de cadena
de  caracteres  de  longitud  20  (veinte).  Otro  ejemplo  podría  ser,  si  la  empresa  califica  a  sus
empleados según una escala del uno al diez, y guarda las calificaciones en un campo denominado
calificaciones, el dominio asociado a ese campo será los enteros del uno al diez.

Además, para cada conjunto de entidades se escoge una clave. Una clave es un conjunto mínimo
de  atributos  cuyos  valores  identifican  de  manera  unívoca  a  cada  entidad  del  conjunto.  Puede
haber más de una clave candidata; en ese caso, se escogerá una de ellas como clave principal.

Cada conjunto de  entidades  se representa mediante un  rectángulo,  y  cada atributo de  la misma
mediante un óvalo. Los atributos de la clave principal están subrayados.

dni

nombre

plaza

Empleado

Conjunto de entidades Empleados

Las relaciones y los conjuntos de relaciones

Una relación (vínculo) es una asociación entre dos o más entidades. Por ejemplo, puede que se
tenga  una  relación  en  que  Avelino  trabaja  en  el  departamento  ventas.  Al  igual  que  con  las
entidades,  puede  que  se  desee  reunir  un  conjunto  de  relaciones  similares    en  un  conjunto  de
relaciones. Se puede considerar a los conjuntos de relaciones como conjuntos de n-tuplas:

Cada  n-tupla  denota  una  relación  que  implica  a  n  entidades,  e1,  …  ,  en,  donde  la  entidad  ei  se
halla en el conjunto de entidades Ei.

{(e1, … , en) | e1   E1, … , en   En}

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Trabaja_en

Departamento

Conjunto de relaciones Trabaja_en

Ing. Carolina Orcola                                                Año 2011                                                                       Página  6

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
En el conjunto de relaciones Trabaja_en cada relación indica un departamento en el que trabaja
ese empleado puede verse. Obsérvese que puede que varios conjuntos de relaciones impliquen  a
los  mismos  conjuntos  de  entidades.  Por  ejemplo,  también  se  podría  tener  un  conjunto  de
relaciones Dirige que implique a Empleados y a Departamentos.

Las  relaciones  también  pueden  tener  atributos  descriptivos.  Los  atributos  descriptivos  se
emplean para registrar la información sobre la relación, más que sobre las entidades participantes;
por ejemplo, puede que se desee registrar que Avelino trabaja en el departamento ventas desde
enero de 1998.

Cada  relación  debe  identificarse  de  manera  unívoca  por  sus  entidades  participantes,  sin
necesidad  de  referencia  alguna  a  los  atributos  descriptivos.  En  el  conjunto  de  relaciones
Trabaja_en, por ejemplo, cada relación Trabaja_en debe quedar identificada de manera unívoca
por  la  combinación  de  dni  de  empleado  y  idd  de  departamento.  Por  lo  tanto,  para  una  pareja
empleado-departamento dada, no se puede tener más de un valor desde asociado.

Cada  ejemplar  de  un  conjunto  de  relaciones  es  un  conjunto  de  relaciones  en  sí  mismo.  De
manera  gráfica,  se  puede  pensar  en  un  ejemplar  como  una  “instantánea”  del  conjunto  de
relaciones en un momento temporal dado. En el siguiente ejemplo se puede ver un ejemplar del
conjunto de relaciones Trabaja_en. Cada entidad Empleados se denota por su dni, y cada entidad
Departamento  por  su  idd,  para  simplificar  el  ejemplo.  El  valor  desde  se  muestra  junto  a  cada
relación.

28.567.666

18.564.008

21.979.564

19.564.908

1/1/91

3/3/93

2/2/92

3/1/92

3/1/92

51

56

60

DEPARTAMENTOS
Participación total

EMPLEADOS
Participación total

TRABAJA_EN
Varias a Varias

Un ejemplar del conjunto de relaciones Trabaja_en

Como  ejemplo  adicional  de  diagrama  ER,  supóngase  que  cada  departamento  tiene  oficinas  en
varias  ubicaciones  y  que  se  desea  registrar  las  ubicaciones  en  las  que  trabaja  cada  empleado.
Esta  relación  es  ternaria,  ya  que  hay  que  registrar  la  asociación  entre  cada  empleado,  el
departamento y la ubicación.

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Trabaja_en2

Departamento

dirección

Ubicaciones

capacidad

Conjunto de relaciones ternarias

Ing. Carolina Orcola                                                Año 2011                                                                       Página  7

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
No  hace  falta que  los  conjuntos  de  entidades  que  participan  en  un  conjunto  de  relaciones  sean
distintos;  puede  que  a  veces  una  relación  implique  a  dos  entidades  del  mismo  conjunto  de
entidades.  Por  ejemplo,  considérese  el  conjunto  de  relaciones  Informa_a.  Como  los  empleados
rinden  cuentas  a  otros  empleados,  las  relaciones  de  Informa_a  son  de  la  forma  (empl1,  empl2),
donde tanto empl1 como empl2 son entidades de Empleados. Sin embargo interpretan papeles o
roles  diferentes:  empl1  rinde  cuentas  al  empleado  encargado  empl2,  lo  que  se  refleja  en  los
indicadores de papeles o roles supervisor y subordinado de la figura.

dni

nombre

plaza

Empleado

supervisor

subordinado

Informa_a

Conjunto de relaciones Informa_a

Si  un  conjunto de  entidades  desempeña más  de  un  papel,  el  indicador  de  papeles concatenado
con un nombre de atributo de un conjunto de entidades da un nombre único para cada atributo del
conjunto  de  relaciones.  Por  ejemplo,  el  conjunto  de  relaciones  Informa_a  tiene  atributos
correspondientes al dni del supervisor y al dni del subordinado, y el nombre de estos atributos es
dni_supervisor y dni_subordinado.

Otras características del modelo ER

A  continuación  se  examinan  algunas  de  las  estructuras  del  modelo  ER  que  permiten  describir
algunas propiedades sutiles de los datos. La expresividad del modelo ER es una de las razones
de su amplia utilización.

Restricciones de clave en relaciones

Considerando  la  relación  Trabaja_en  de  la  página  6,  cada  empleado  puede  trabajar  en  varios
departamentos,  y  cada  departamento  puede  tener  varios  empleados.  Como  podemos  ver  en  la
figura  del  ejemplar  de  Trabaja-en  de  la  página  7,  el  empleado  18.564.008  ha  trabajado  en  el
Departamento  51  desde  el  3/3/93  y  en  el  Departamento  56  desde  el  2/2/92.  Así  mismo,  el
Departamento 51 tiene dos empleados.

Considérese  ahora  otro  conjunto  de  relaciones  denominado  Dirige  entre  los  conjuntos  de
entidades  Empleados  y  Departamentos,  tal  que  cada  departamento  tenga  como  máximo  un
empleado, aunque se permite que un empleado dirija más de un departamento. La restricción de
que  cada  departamento  tenga  como  máximo  un  encargado  es  un  ejemplo  de  restricción  de
clave, e implica que cada entidad de departamento aparezca como máximo en una relación Dirige
en  cada  ejemplar  admisible  de  Dirige.  Esta  restricción  se  indica  en  el  diagrama  ER  de  Dirige
mediante la flecha que  va  de  Departamentos  a Dirige.  De manera  intuitiva,  la flecha indica que,
dada una entidad Departamentos, se puede determinar de manera unívoca la relación Dirige en la
que aparece.

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Dirige

Departamento

Restricción de clave en Dirige (1..N)

Ing. Carolina Orcola                                                Año 2011                                                                       Página  8

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

A continuación se muestra un ejemplar del conjunto de relaciones Dirige. Aunque se trate también
de  un  posible  ejemplar  del  conjunto  de  Trabaja_en,  el  ejemplar  de  Trabaja_en  violaría  la
restricción de clave de Dirige.

28.567.666

18.564.008

21.979.564

19.564.908

1/1/91

3/3/93

2/2/92

3/1/92

3/1/92

51

56

60

DEPARTAMENTOS
Participación total

EMPLEADOS
Participación total

TRABAJA_EN
Varias a Varias

Ejemplar de conjunto de relaciones Dirige

Se  dice  a  veces  que  el  conjunto  de  relaciones  como  Dirige  son  de  una  a  varias  (1…N),  para
indicar  que  cada  empleado  se  puede  asociar  con  varios  departamentos  (en  función  de
encargado), mientras que cada departamento se puede asociar, como máximo, con un empleado
como encargado. Por el contrario, se dice que el conjunto de relaciones Trabaja_en, en el que se
permite  que  cada  empleado  trabaje  en  varios  departamentos  y  que  cada  departamento  tenga
varios empleados, es de varias a varias (N...N).

Si  se  añade  al  conjunto  de  relaciones  Dirige  la  restricción  de  que  cada  empleado  puede  dirigir
como máximo un departamento, lo que se indicaría añadiendo una fecha de Empleado a Dirige,
se tendría un conjunto de relaciones de una a una (1…1).

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Dirige

Departamento

Restricción de clave en Dirige (1..1)

Restricciones de clave en relaciones ternarias

Se puede ampliar este concepto a los conjuntos de relaciones que abarcan tres o más conjuntos
de  entidades:  si  el  conjunto  de  entidades  E  tiene  una  restricción  de  clave  en  el  conjunto  de
relaciones  R,  cada  entidad  de  un  ejemplar  concreto  de  E  aparecerá,  como  máximo,  en  una
relación  de  (el  ejemplar  correspondiente  de)  R.  Para  indicar  una  restricción  de  clave  sobre  el
conjunto de entidades E del conjunto de relaciones R, se traza una flecha de E a R.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  9

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Como  ejemplo  de  restricción  de  clave  en  relaciones  ternarias,  podemos  suponer  que  cada
empleado trabaja, como máximo, en un departamento y en una única ubicación. Debemos tener
en  cuenta  que  cada  departamento  puede  asociarse  con  varios  empleados  y  ubicaciones,  y  que
cada  ubicación  puede  asociarse  con  varios  departamentos  y  empleados;  sin  embargo,  cada
empleado está asociado con un solo departamento y una única ubicación.

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Trabaja_en3

Departamento

dirección

Ubicaciones

capacidad

Conjunto de relaciones ternarias con restricción de clave

DEPARTAMENTOS

28.567.666

18.564.008

21.979.564

19.564.908

3/3/93

2/2/92

3/1/92

3/1/92

EMPLEADOS
Restricción de clave

UBICACIONES

TRABAJA_EN3

Ejemplar de Trabaja_en3

51

56

60

Roma

París

Madrid

Restricciones de participación

La  restricción  de  clave  sobre  Dirige  indica  que  cada  departamento  tiene,  como  máximo,  un
encargado.  Una  pregunta  que  resulta  lógica  formularse  es  si  todos  los  departamentos  tienen
encargado. Supongamos que se exige que cada departamento tenga un encargado. Este requisito
es  un  ejemplo  de  restricción  de  participación;  se  dice  que  la  participación  del  conjunto  de
entidades Departamento en el conjunto de relaciones Dirige es total. Una participación que no es
total  se  dice  que  es  parcial.  A  modo  de  ejemplo,  la  participación  del  conjunto  de  entidades
Empleados  en  Dirige  es  parcial,  ya  que  no  todos  los  empleados  consiguen  dirigir  un
departamento.

Volviendo  al  conjunto  de  relaciones  Trabaja_en,  resulta  natural  esperar  que  cada  empleado
trabaje,  como  mínimo,  en  un  departamento  y  que  cada  departamento  tenga  como  mínimo  un
empleado. Esto significa que tanto la participación de Empleados como la de Departamentos en
Trabaja_en es total.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  10

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

dni

nombre

plaza

idd

nomb

presup

desde

Empleado

Dirige

Departamento

Trabaja_en

desde

Dirige y Trabaja_en

En el diagrama ER precedente, se muestra tanto el conjunto de relaciones Dirige como el conjunto
de relaciones Trabaja_en y a todas las restricciones dadas. Si la participación de un conjunto de
entidades en un conjunto de relaciones es total, ambas se conectan mediante una línea gruesa;
de manera independiente, la presencia de una flecha indica una restricción de clave.

Entidades débiles

Hasta  ahora  se  ha  supuesto  que  entre  los  atributos  asociados  a  un  conjunto  de  entidades  se
incluye  una  clave.  Esta  suposición  no  siempre  se  cumple.  Por  ejemplo,  supóngase  que  los
empleados  pueden  suscribir  pólizas  de  seguros  que  cubran  a  las  personas  que  dependen  de
ellos. Se desea registrar información sobre esas pólizas, incluyendo a las personas cubiertas en
cada  póliza;  pero  esa  información  es,  en  realidad,  lo  único  que  interesa  de  las  personas  que
depende  de  cada  empleado.  Si  un  empleado  deja de  serlo,  las  pólizas  que  hubiera suscripto se
cancelan,  y  se  desea  eliminar  de  la  base  de  datos  toda  la  información  relevante  sobre  esas
pólizas y sobre las personas que dependen de ese antiguo empleado.

Se  podría  decidir  identificar  en  este  caso  a  cada  persona  que  depende  de  un  empleado
únicamente por su nombre, ya que es razonable esperar que todas las personas que dependen de
un  empleado  tengan  nombres  diferentes.  Por  lo  tanto,  los  atributos  del  conjunto  de  entidades
Beneficiarios podrían ser nombrep y edad. El atributo nombrep no identifica de manera unívoca a
cada persona que depende de un empleado. Recuérdese que la clave para Empleados es dni; por
lo tanto, se podría tener dos empleados llamados Sánchez con un hijo llamado José.

Beneficiarios  es  un  ejemplo  de  un  conjunto  de  entidades  débiles.  Cada  entidad  débil  sólo  se
puede identificar de manera unívoca tomando en consideración alguno de sus atributos junto con
la clave principal de otra entidad, que se conoce como propietaria identificadora.

Se debe cumplir las restricciones siguientes:

  El conjunto de entidades propietario y el conjunto de entidades débiles deben participar en
un  conjunto de relaciones de  uno a  varias (cada  entidad propietaria  se asocia con  una o
varias entidades débiles, pero cada entidad débil solo tiene una propietaria). Este conjunto
de  relaciones  se  denomina  conjunto  de  relaciones  identificadoras  del  conjunto  de
entidades débiles.

  El conjunto de entidades débiles debe tener participación total en el conjunto de relaciones

identificadoras.

Por ejemplo, cada entidad Beneficiario sólo se puede identificar de manera unívoca si se toma la
clave de la entidad Empleados propietaria y nombrep de la entidad Beneficiarios. El conjunto de
atributos  de  un  conjunto  de  entidades  débiles  que  identifica  de  manera  unívoca  a  una  entidad

Ing. Carolina Orcola                                                Año 2011                                                                       Página  11

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
débil  para  una  entidad  propietaria  dada  se  denomina  clave  parcial  del  conjunto  de  entidades
débiles. En nuestro ejemplo nombrep es una clave parcial de Beneficiarios.

dni

nombre

plaza

Empleado

costo

Póliza

nombrep

edad

Beneficiarios

Conjunto de entidades débiles

La participación total de Beneficiarios en Póliza se indica enlazándolos mediante una línea gruesa.
La flecha que va de Beneficiarios a Póliza indica que cada entidad de Beneficiarios aparece, como
máximo, en una relación de Póliza. Para subrayar el  hecho de que Beneficiarios es una entidad
débil y Póliza es una relación identificadora se dibujan las dos en líneas oscuras. Para indicar que
nombrep es una clave parcial de Beneficiarios, se subraya con línea punteada. Esto significa que
puede haber perfectamente dos personas que dependan de empleados y tengan el mismo valor
de nombrep.

Jerarquías de clases

A  veces  resulta  natural  clasificar  las  entidades  en  un  conjunto  de  entidades  en  subclases.  Por
ejemplo, puede que se desee hablar del conjunto de entidades Empleados_temp y del conjunto de
entidades  Empleados_fijos  para  distinguir  el  modo  en  que  se  calcula  su  sueldo.  Puede  que  se
hayan definido los atributos horas_trabajadas y sueldo_hora definidos para Empleados_temp y el
etributo idcontrato para Empleados_fijos.

Se  desea  que  todas  las  entidades  de  cada  uno  de  esos  conjuntos  sean  también  entidades  de
Empleados y, como tales, deberán tener definidos todos los atributos de Empleados. Por lo tanto,
todos  los  atributos  definidos  para  una  entidad  Empleados_temp  dada  son  los  atributos  de
Empleados  más  los  de  Empleados_temp.  Se  dice  que  los  atributos  del  conjunto  de  entidades
Empleados  se  heredan  por  el  conjunto  de  entidades  Empleados_temp  y  que  una  entidad  de
Empleados_temp ES una entidad de Empleados. Además, y a diferencia de la jerarquía de clases
de  los  lenguajes  de  programación  orientados  a  objetos,  hay  una  restricción  para  las  consultas
sobre los ejemplares de estos conjuntos de entidades: las consultas que pidan todas las entidades
las  entidades  Empleados_temp  y
Empleados
Empleados_fijos.

tomar  en  consideración

también  deben

dni

nombre

plaza

Empleado

ES

sueldo_hora

horas_trab

Empleado_temp

Jerarquía de clases

idcontrato

Empleado_fijo

El conjunto de entidades Empleados también se puede clasificar según un criterio diferente. Por
ejemplo  se  puede  identificar  un  subconjunto  de  empleados  como  Empleados_veteranos.  Se
puede  modificar  el  diagrama  anterior  para  que  refleje  esta  modificación  añadiendo  un  segundo

Ing. Carolina Orcola                                                Año 2011                                                                       Página  12

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
nodo ES como hijo de Empleados y haciendo a Empleados-veteranos hijo de ese nodo. Y así, se
puede  seguir  clasificando  cada  uno  de  esos  conjuntos  de  entidades  y  crear  jerarquías  ES
multinivel.

Las jerarquías de clases se pueden considerar desde dos puntos de vista:

  Empleados  está  especializado  en  subclases.  La  especialización  es  el  proceso  de
identificación  de  subconjuntos  de  un  conjunto  de  entidades  dado  (la  superclase)  que
comparten  alguna  característica  distintiva.  Generalmente  se  define  en  primer  lugar  la
superclase, a continuación se definen las subclases y luego se añaden los atributos y los
conjuntos de relaciones específicos de cada subclase.

  Empleados_temp y Empleados_fijos se generalizan mediante Empleados. Como ejemplo
adicional, se pueden generalizar los conjuntos de entidades Motos y Coches en el conjunto
de  entidades  Vehículos_motorizados.  La  generalización  consiste  en  identificar  alguna
característica común de un conjunto de conjuntos de entidades y crear un nuevo conjunto
de  entidades  que  contenga  entidades  que  posean  esas  características  comunes.
Generalmente  se  definen  en  primer  lugar  las  subclases,  a  continuación  se  define  la
superclase y luego se definen los conjuntos de relaciones que implican a las superclases.

Se  pueden  especificar  dos  tipos  de  restricciones  con  respecto  a  las  jerarquías  ES:  las
restricciones de solapamiento y de cobertura. Las restricciones de solapamiento determinan si
se  permite  que  dos  clases  contengan  la  misma  entidad.  Por  ejemplo,  ¿puede  Avelino  ser  una
entidad  Empleados_temp  y  una  entidad  Empleados_fijos  a  la  vez?  De  manera  intuitiva,  no.
¿Puede  ser  una  entidad  Empleados_fijos  a  su  vez  una  entidad  de  Empleados_veteranos?  De
manera
“Empleados_fijos  SOLASPA  A
Empleados_veteranos. En ausencia de una afirmación de este tipo, se da por supuesto de manera
predeterminada que se restringe a los conjuntos de entidades a no solaparse.

intuitiva,  si.  Esto  se  denota  escribiendo

Las restricciones de cobertura determinan si las entidades de las subclases incluyen de manera
colectiva  a  todas  las  entidades  de  la  superclase.  Por  ejemplo,  ¿tienen  que  pertenecer  todas  las
entidades Empleados a alguna de las subclases? De manera intuitiva, no. ¿Tienen que ser todas
las entidades Vehículos_motorizados una entidad de Motos o de una entidad Coches? De manera
intuitiva,  si;  una  propiedad  característica  de  las  jerarquías  de  generalización  es  que  todos  los
ejemplares  de  una  superclase  son,  a  su  vez,  ejemplares  de  una  subclase.  Esto  se  denota
escribiendo “Motos Y Coches CUBREN Vehículos_motorizados”. En ausencia de una afirmación
de este tipo se supone de manera predeterminada que no hay ninguna restricción de cobertura; se
pueden tener vehículos de motor que no sean ni motos ni coches.

Hay dos motivos básicos para identificar subclases (por especialización o por generalización):

1-  Puede  que  se  desee  añadir  atributos  descriptivos  que  solo  lengan  sentido  para  las
entidades  de  una  subclase  dada.  Por  ejemplo,  sueldo_hora  no  tiene  sentido  para  la
entidad  Empleados_fijos,  cuya  paga  se  determina  mediante  un  contrato  individual  o  un
salario básico.

2-  Puede  que  se  desee  identificar  el  conjunto  de  entidades  que  participan  en  una  relación
dada.  Por  ejemplo,  puede  que  se  desee  definir  la  relación  Dirige  de  modo  que  los
conjuntos  de  entidades  participantes  sean  Empleados_veteranos  y  Departamentos,  para
garantizar  que  solo  los  empleados  veteranos  puedan  ser  encargados  o  jefes  de
departamento.  Como  ejemplo  adicional,  puede  que  Motos  y  Coches  tengan  atributos
descriptivos diferentes (por ejemplo, tonelaje y número de puertas) pero, como entidades
de Vehículos_motorizados, deben estar matriculados. La información sobre la matrícula se
puede capturar mediante una relación  Matriculado_por entre Vehículos_motorizados y un
conjunto de entidades denominado Propietarios.

Agregación

Como se ha definido hasta ahora, un conjunto de relaciones es una asociación entre conjuntos de
entidades.  A  veces  hay  que  modelar  las  relaciones  entre  un  conjunto  de  entidades  y  de
relaciones. Supóngase que se tiene un conjunto de entidades denominados Proyectos y que cada
entidad de  Proyectos  está financiada  por  uno a varios  departamentos.  El  conjunto  de relaciones
Financia  captura  esta  información.  El  departamento  que  financia  un  proyecto  puede  asignar
empleados para que controlen el trabajo. De manera intuitiva, Controla debería ser un conjunto de

Ing. Carolina Orcola                                                Año 2011                                                                       Página  13

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
relaciones  que  asocie  relaciones  de  Financia  (en  vez  de  Proyectos  o  Departamento)  con
entidades  de  Empleados.  Sin  embargo,  las  relaciones  que  se  han  definido  asocian  dos  o  más
entidades, no relaciones.

Para  definir  un  conjunto  de  relaciones  como  Controla  se  introduce  una  nueva  característica  del
modelo  ER,  denominada  agregación.  La  agregación  permite  indicar  que  un  conjunto  de
relaciones (identificado mediante un cuadro discontinuo) participa en otro conjunto de relaciones.
Esto  se  ve  en  la  figura,  con  un  cuadro  discontinuo  alrededor  de  Financia  (y  sus  conjuntos  de
entidades  participantes)  para  denotar  la  agregación.  Esto  permite  tratar  de  manera  efectiva
Financia  como  un  conjunto  de  entidades  a  los  efectos  de  definir  el  conjunto  de  relaciones
Controla.

dni

nombre

plaza

Empleado

Controla

hasta

idp

iniciadoel

presupue
s

desde

idd

nomb

presup

Proyectos

Financia

Departamento

Agregación

¿Cuándo  se  debe  emplear  la  agregación?  Se  emplea  cuando  hace  falta  expresar  una  relación
entre  relaciones.  ¿Pero  no  se  pueden  expresar  relaciones  que  impliquen  a  otras  relaciones  sin
emplear la agregación? En el ejemplo, ¿Por qué no hacer de Financia una relación ternaria? La
respuesta es que realmente hay dos relaciones diferentes, Financia y  Controla, cada una de las
cuales  tendrá  sus  propios  atributos.  Por  ejemplo,  la  relación  controla  tiene  el  atributo  hasta  que
registra  la  fecha  hasta  la  que  un  empleado  ha  sido  nombrado  supervisor  del  financiamiento.
Compárese  éste  atributo  con  el  atributo  desde  de  Financia,  que  es  la  fecha  en  que  el
financiamiento  entró  en  vigor.  El  empleo  de  la  agregación  en  lugar  de  una  relación  ternaria
también  puede  deberse  a  determinadas  restricciones  de  integridad,  como  se  explica  más
adelante.

Diseño conceptual del modelo ER

El desarrollo de diagramas ER supone escoger entre varias opciones, como las siguientes:

¿Un concepto dado se debe modelar como entidad o como atributo?

¿Un determinado concepto se debe modelar como entidad o como relación?

¿Cuáles  son  los  conjuntos  de  relaciones  y  sus  correspondientes  conjuntos  de  entidades
participantes? ¿Se deben emplear relaciones binarias o ternarias?

¿Se debe emplear la agregación?

Ahora pasamos a discutir los problemas relacionados con estas decisiones.

Entidades y atributos

Cuando se identifican los atributos de un conjunto de entidades no resulta a veces evidente si una
determinada  propiedad  se  debe  modelar  como  atributo  o  como  conjunto  de  entidades  (y
relacionarse  con  el  primer  conjunto  de  entidades  mediante  un  conjunto  de  relaciones).  Por
ejemplo,  considérese  añadir  información  sobre el  domicilio  al  conjunto de  entidades  Empleados.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  14

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Una  posibilidad es emplear  el  atributo  domicilio.  Esta opción  resulta adecuada  si  sólo  hace falta
registrar un domicilio por empleado y basta con pensar en el domicilio como si fuera una cadena
de  caracteres.  Una  alternativa  sería  crear  un  conjunto  de  entidades  denominado  Domicilios  y
registrar  las  asociaciones  entre  empleados  y  domicilios  mediante  una  relación  (por  ejemplo,
Tiene_domicilio). Esta alternativa más compleja resulta necesaria en dos situaciones:

  Hay que registrar más de una dirección por empleado.

  Se  desea  capturar  la  estructura  de  los  domicilios  en  el  diagrama  ER.  Por  ejemplo,  se
puede descomponer el domicilio en ciudad, provincia, país y código postal, además de una
cadena  de  caracteres  sobre  la  información  sobre  la  calle.  Al  representar  el  domicilio  en
forma de entidad con esos atributos, se pueden soportar consultas como “Buscar todos los
empleados con domicilio en Madrid”.

Como ejemplo adicional de la conveniencia de modelar un concepto como conjunto de entidades
en vez de cómo atributo, vemos la siguiente relación.

dni

nombre

plaza

idd

nomb

presup

desde

hasta

Empleado

Trabaja_en4

Departamento

Conjunto de relaciones Trabaja_en4

Sólo se diferencia del conjunto de relaciones Trabaja_en visto al comienzo, que tiene los atributos
desde  y  hasta,  en  lugar  de  desde.  Intuitivamente,  registra  el  intervalo  durante  el  que  cada
empleado  trabaja  para  un  departamento  dado.  Supóngase  ahora  que  cada  empleado  puede
trabajar en un departamento dado en más de un período.

Esta posibilidad queda descartada por la semántica del diagrama ER, ya que cada relación queda
identificada  de  manera  unívoca  por  sus  entidades  participantes.  El  problema  es  que  se  desean
registrar varios valores de los atributos descriptivos de cada ejemplar de la relación Trabaja_en4
(esta  situación  es  análoga  a  desear  registrar  varios  domicilios  para  cada  empleado).  Se  puede
abordar  este  problema  mediante  la  introducción  de  un  conjunto  de  entidades  denominado
Permanencia,  por  ejemplo,  con  los  atributos  desde  y  hasta,  como  se  ve  en  la  figura  a
continuación.

dni

nombre

plaza

idd

nomb

presup

Empleado

Trabaja_en4

Departamento

desde

Duración

hasta

Conjunto de relaciones modificado Trabajo_en4

En  algunas  versiones  del  modelo  ER  se  permite  que  los  atributos  adopten  conjuntos  como
valores. Dada esta característica, se podría hacer de Permanencia un atributo de Trabaja_en4, en
vez de un conjunto de entidades; asociado con cada relación Trabaja_en4 tendríamos un conjunto
de  intervalos.  Este  enfoque  es,  quizás,  más  intuitivo  que  el  modelado  de  Permanencia  como
conjunto de entidades. Pese a todo, cuando esos atributos de tipo conjunto se trasladan al modelo
relacional,  que  no  los  soporta,  el  esquema  relacional  resultante  es  muy  parecido  a  lo  que  se
obtiene considerando Permanencia como conjunto de entidades.

Entidades y relaciones

Considérese  el  conjunto  de  relaciones  denominado  Dirige  de  la  página  8.  Supóngase  que  se
concede a cada encargado de departamento el presupuesto discrecional (presupuestod), como el

Ing. Carolina Orcola                                                Año 2011                                                                       Página  15

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
que vemos a continuación, en la que también se ha renombrado el conjunto de relaciones como
Dirige2.

dni

nombre

plaza

idd

nomb

presup

desde

presupuestod

Empleado

Dirige2

Departamento

Dado un departamento, se conoce su encargado, su fecha de nombramiento y el presupuesto de
ese departamento. Este enfoque resulta natural si se da por supuesto que cada encargado recibe
un presupuesto discrecional diferente para cada departamento que dirige.

¿Pero  qué  ocurre  si  el  presupuesto  discrecional  es  una  sume  que  abarca  a  todos  los
departamentos dirigidos por ese empleado? En ese caso, cada relación Dirige2 que implique a un
empleado  dado  tendrá  el  mismo  valor  del  campo  presupuestod,  lo  que  lleva  almacenamiento
redundante de la misma información. Otro problema de este diseño es que induce a error: sugiere
que el presupuesto está asociado a la relación cuando, en realidad, está asociado al encargado.

Estos problemas se pueden abordar mediante la introducción de un nuevo conjunto de entidades
denominado Encargados (que puede ubicarse por debajo de Empleados en la jerarquía ES, para
mostrar que todos los encargados son también empleados). Los atributos  desde y presupuestod
describen ahora  a entidades  encargado,  como se pretendía.  A  modo de variación,  aunque  cada
encargado  tiene  un  presupuesto,  cada  uno  de  ellos  puede  tener  una  fecha  de  nombramiento
(como  encargado)  diferente  para  cada  departamento.  En  ese  caso,  presupuestod  es  un  atributo
de Encargados, pero desde es un atributo del conjunto de relaciones entre los encargados y los
departamentos.

dni

nombre

plaza

idd

nomb

presup

Empleado

Dirige3

Departamento

idencarg

Encargados

desde

presupuestod

La  naturaleza  imprecisa  del  modelado  ER  puede,  por  tanto,  dificultar  el  reconocimiento  de  las
entidades  subyacentes,  y  puede  que  se  asocien  atributos  con  relaciones  en  lugar  de  con  las
entidades correspondientes. En general, esos errores llevan al almacenamiento redundante de la
misma  información  y  pueden  provocar  muchos  problemas.  La  redundancia  y  sus  problemas
asociados se solucionan con la normalización.

Relaciones binarias y ternarias

dni

nombre

plaza

nombrep

edad

Empleado

Cubre

Dependen

idpoliza

Pólizas

costo

Ing. Carolina Orcola                                                Año 2011                                                                       Página  16

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS
Este diagrama modela una  situación  en  la  que  cada empleado  puede tener  varias  pólizas,  cada
póliza  puede  ser  propiedad  de  varios  empleados  y  cada  beneficiario  puede  estar  cubierto  por
varias pólizas.

Supóngase que se tienen los requisitos adicionales siguientes:

  Dos o más empleados no pueden poseer conjuntamente una póliza.

  Cada póliza debe ser propiedad de algún empleado

  Dependientes  es  un  conjunto  de  entidades  débiles,  y  cada  entidad  dependiente  queda
identificada  de  manera  unívoca  empleando  nombrep  junto  con  idpóliza  de  una  entidad
póliza (que, de manera intuitiva, cubre a ese beneficiario)

El primer requisito sugiere que se ha impuesto una restricción de clave a Pólizas con respecto a
Cubre, pero esa restricción tiene el efecto secundario no deseado de que cada póliza sólo pueda
cubrir  a  un  beneficiario.  El  segundo  requisito  sugiere  que  se  ha  impuesto  una  restricción  de
participación  total  sobre  Pólizas.  Esta  solución  resulta  aceptable  si  cada  póliza  cubre,  por  lo
menos, a un beneficiario. El tercer requisito nos obliga a introducir una relación identificadora que
sea binaria (aunque hay versiones diferentes de los diagramas ER que no tienen este requisito).

Aún  ignorando  este  tercer  requisito,  la  mejor  manera  de  modelar  esta  situación  es  emplear  dos
relaciones binarias, como las que podemos ver a continuación.

dni

nombre

plaza

nombrep

edad

Empleado

Dependen

Cubre

Beneficiario

idpoliza

Pólizas

costo

Este ejemplo tiene finalmente dos relaciones que implican a Pólizas, e intentar emplear una sola
relación ternaria, como se intentaba antes, resulta inadecuado. Hay situaciones, no obstante, en
las que una relación asocia de manera inherente a más de dos entidades. Se ha visto ejemplos de
ello en las páginas 7 y 15.

Como  ejemplo  típico  de  relación  ternaria,  considérese  los  conjuntos  de  entidades  Repuestos,
Proveedores y  Departamentos,  y  el  conjunto de  relaciones Contratos  (con  el  atributo descriptivo
cant)  que  los  implica  a  todos  ellos.  Un  contrato  dado  especifica  que  un  determinado  proveedor
suministrará (una determinada cantidad de) un repuesto concreto a un cierto departamento. Esta
relación no puede capturarse de manera adecuada  mediante un conjunto de relaciones binarias
(sin el empleo de la agregación). Con las relaciones binarias se puede denotar que un proveedor
“puede suministrar” determinados repuestos, que un departamento “necesita” ciertos repuestos o
que  un  departamento  “trata  con”  un  proveedor  dado.  Ninguna  combinación  de  estas  relaciones
expresa de manera adecuada el significado de un contrato, al menos por dos razones:

  El hecho de que el proveedor P pueda suministrar el repuesto R, de que el departamento D
necesite  el  repuesto  R  y  de  que  D  compre  a  P  no  implica  necesariamente  que  el
departamento D compre realmente el repuesto R al proveedor P.

  No se puede representar adecuadamente el atributo cant de los contratos.

idrep

nombre

otrodato

cant

idd

otrosdatos

Repuestos

Contratos

Departamento

idprov

Proveedores

otrosdatos

Ing. Carolina Orcola                                                Año 2011                                                                       Página  17

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Agregación y relaciones ternarias

Como  se  señaló  antes,  la  decisión  de  emplear  la  agregación  o  una  relación  ternaria  viene
determinada  principalmente  por  la  existencia  de  una  relación  que  vincule  un  conjunto  de
relaciones  con  un  conjunto  de  entidades  (o  un  segundo  conjunto  de  relaciones).  Puede  que  la
decisión  también  se  guíe  por  determinadas  restricciones  de  integridad  que  se  deseen  expresar.
Por ejemplo, considérese el diagrama ER mostrado en la figura de la página 14. De acuerdo con
ese diagrama, cada proyecto puede ser financiado por varios departamentos, cada departamento
puede financiar puede financiar uno o varios proyectos y cada financiamiento está controlado por
uno  o  varios  empleados.  Si  no  hace  falta  registrar  el  atributo  hasta  de  Controla,  puede  resultar
razonable  emplear  una  relación  ternaria  como,  por  ejemplo,  Financia2,  como  podemos  ver  a
continuación.

dni

nombre

plaza

Empleado

idp

iniciadoel

presupue
s

idd

nomb

presup

Proyectos

Financia2

Departamento

Considérese la restricción de que cada financiamiento (de un proyecto por un departamento) esté
controlado, como máximo, por un empleado. No se puede expresar esa restricción en términos del
conjunto  de  relaciones  Financia2.  Por  otro  lado,  esa  restricción  se  puede  expresar  fácilmente
trazando  una  flecha  desde  la  relación  agregada  Financia  a  la  Relación  Controla  del  diagrama
original. Por lo tanto, la presencia de una restricción así es un motivo más para el empleo de la
agregación en lugar de un conjunto de relaciones ternarias.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  18

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Resumen de símbolos usados

Símbolo

Significado

nombre

nombre

ENTIDAD

ENTIDAD DÉBIL

VÍNCULO o RELACIÓN

VÍNCULO o RELACIÓN IDENTIFICADOR

ATRIBUTO

ATRIBUTO CLAVE PRINCIPAL

ATRIBUTO CLAVE PARCIAL DE ENTIDAD DÉBIL

ATRIBUTO MULTIVALUADO

ATRIBUTO COMPUESTO

ATRIBUTO DERIVADO

E1

E1

E1

R

R

R

ES

E2

E2

E2

RESTRICCION DE PARTICIPACIÓN
PARTICIPACIÓN TOTAL DE E2 EN R

RESTRICCIÓN DE CLAVE (1..N)

RESTRICCIÓN DE CLAVE (1..1)

Jerarquía de clases: especialización o
generalización, según se lo vea

Ing. Carolina Orcola                                                Año 2011                                                                       Página  19

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Herramientas de apoyo para creación de Diagramas ER

GNU Ferret

www.gnu.org/software/ferret

Ferret

GNU
(anteriormente
conocido  como  GerWin,  antes
de  un  cambio  de  nombre  para
legales  con
evitar  problemas
Computer  Associates)  es  un
clon  del  programa  (privativo)
ErWin(TM),  que  sirve  para
construir  modelos  de  datos
mediante  diagramas  Entidad-
Relación,  y  generar  el  SQL
correspondiente al modelo.

DBDesigner4

www.fabforce.net/dbdesigner4/

DBDesigner  4  is  a  visual  database  design  system  that
integrates  database  design,  modeling,  creation  and
maintenance  into  a  single,  seamless  environment.  It
combines professional features and a clear and simple
user  interface  to  offer  the  most  efficient  way  to  handle
your databases.

LEFT CASE

http://zarza.usal.es/

Entorno  CASE  para  el  desarrollo  de  diagramas  de  Ingeniería  del  Software  tanto  en  proyectos
orientados a objetos como estructurados. Modelado de componentes que soportan la ampliación
de diagramas. Generación de documentación técnica de análisis y diseño de forma automática.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  20

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Studio CASE

http://zarza.usal.es/~fgarcia/docencia/isoftware/case/StudioCASEv1.htm

La herramienta StudioCase v1.01 se puede considerar como una herramienta CASE frontal que,
bajo  una  plataforma  Windows  9x,  NT  ó  2000,  asiste  a  un  desarrollador  para  la  creación  de
Datos.
y
Diagramas

Diagramas

Relación

Entidad

(DER)

Flujo

de

de

ER CASE

http://zarza.usal.es/~fgarcia/docencia/isoftware/case/ercasev1.htm

La herramienta ER-CASE v1.0 se puede considerar como una herramienta CASE frontal que, bajo
una plataforma Windows 9x, NT ó 2000, asiste a un desarrollador para la creación de Diagramas
Entidad Relación (DER).

Ing. Carolina Orcola                                                Año 2011                                                                       Página  21

Universidad Tecnológica Nacional                                                  Ingeniería en Sistemas de Información
Facultad Regional Resistencia                                                                                  GESTIÓN DE DATOS

Bibliografía

(1)  “Sistema  de  Administración  de  Bases  de  Datos”;  Raghu  Ramakrishnan/Johannes

Gehrke; Mc Graw Hill, 3º Edición, edición en español – 2007

(2) “Fundamentos de Sistemas de Bases de Datos”; Elmasri y Navathe; Addison Wesley; 3º

Edición; Madrid; 2002.

(3) “Introducción a las bases de datos relacionales”; Mendelzon-Ale; Prentice may; 1º edición;

Argentina; 2000.

(4)  “Concepto y diseño de  bases de datos”; Miguel Mario Piattini; Addison-Wesley.

(5)  “Fundamentos de base de datos”; Korth F. Henry; McGraw Hill; 3º Edición; 1998.

(6)  “Introducción a los sistemas de base de datos”; C. J. Date; Prentice-Hall; 7º Edición; 2001.

(7)  “Sistemas de Bases de Datos – Conceptos fundamentales”; Elmasri y Navathe; Addison

Wesley; 2º Edición; Madrid; 1994.

Ing. Carolina Orcola                                                Año 2011                                                                       Página  22

