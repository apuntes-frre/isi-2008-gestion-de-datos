# Primer parcial 2018, tema 1: empresas de mudanza

> Transcripción de las fotografías «Modelo 1er Parcial 2018 - Tema 1 - Hoja
> 1.jpeg» y «Hoja 2.jpeg», conservadas en la carpeta 2018 de Gestión de Datos en
> OneDrive. El número de tema viene del nombre de los archivos. Son consignas
> sin resolver. Las fotografías no se publican: en la primera el nombre está
> tapado, y en la segunda asoman apuntes manuscritos de otra hoja. El final de
> una palabra de la primera hoja queda fuera de la foto.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

<!-- Fuente: Modelo 1er Parcial 2018 - Tema 1 - Hoja 1.jpeg. -->

## Hoja 1

Nombre y apellido: [tapado en la fotografía] — Fecha: 23 / 4 / 2018 (fecha
escrita a mano)

### GESTIÓN DE DATOS — PRIMER EXAMEN PARCIAL

1- **Modelo Entidad Relación:** (50 ptos.) Realizar el diagrama E/R
correspondiente a los supuestos enunciados más abajo explicando si se ha
considerado algún supuesto semántico adicional. Si alguna especificación del
enunciado no ha podido reflejarse en el esquema, hacerlo constar.

<ins>**ESCENARIO**</ins>: EMPRESAS DE MUDANZA

En la página Web `http://www.mudanza.com` se publicitan distintas empresas de
mudanza que ofrecen sus servicios y productos. En la misma página Web puedes
rellenar solicitudes de servicios a las distintas empresas que, posteriormente,
pueden ser aceptadas o rechazadas tanto por el cliente como por la empresa de
mudanzas. Esta página Web necesita almacenar toda esta información en una base
de datos y por eso nos ha pedido ayuda.

Después de varias entrevistas con los gerentes de las empresas de mudanza,
pudimos recoger la siguiente información:

De las empresas de mudanza nos interesa guardar información sobre el nombre de
la empresa (único), su dirección completa, teléfonos de contacto y una lista de
poblaciones (nombre de población y provincia) a las que ofrece sus servicios o
productos.

Las empresas de mudanza pueden ofertar distintos <ins>servicios</ins>, como
transporte, embalaje, desmontar/montar muebles, grúas, etc. No todas las
empresas ofertan los mismos servicios ni en las mismas <ins>poblaciones</ins>.
Es decir, cada empresa puede ofrecer distintos servicios en distintas
poblaciones, por lo que un cliente tendrá que mirar bien con qué empresa
contacta.

Todos los servicios se identifican con un nombre de servicio (común para todo el
sector de mudanzas). Además, de todos ellos se desea almacenar el precio/hora
del servicio ofrecido por cada empresa de mudanzas en cada población (puede
tener diferentes precios de servicios dependiendo de la población).

Los distintos <ins>servicios de</ins> transporte que las empresas pueden ofertar
está regulado por ley en base a los kg, definiéndose unos intervalos por peso
para cada transporte de forma estándar.

Respecto al precio de los servicios de transporte, además de contar con el
precio/hora del servicio, existe un plus de aumento de precio si la carga supera
una cantidad de kg que fija cada empresa independientemente de la población
donde se realice el servicio. Por ejemplo, 10% más si la carga supera los 500kg,
15% más si la carga supera los 750kg, etc.

En cuanto a las <ins>grúas</ins>, interesa almacenar el tamaño de las mismas
(tamaño de la base, para comprobar en qué espacios se puede utilizar; y alto de
la grúa, para ver a qué piso puede llegar).

También existe un plus de aumento de precio según el alto de la grúa
independientemente de la población donde se realiza el servicio.

Cuando un cliente quiere hacer una mudanza, éste ha rellenar una
<ins>solicitud</ins> (identificada por un código único en nuestra Web) indicando
a qué empresa de mudanzas le pide qué servicios y las direcciones de inicio del
servicio y destino si el servicio lo requiere. Estas direcciones deberán, por
supuesto, estar dentro de las poblaciones donde la empresa presta sus servicios.
Además de la fecha de solicitud, se desea almacenar la fecha de resolución de la
solicitud, indicando si la solicitud ha sido aceptada o no y el precio total,
así como los precios de cada servicio solicitado.

Los <ins>clientes</ins> están identificados por un código único y se desea
conocer su NIF, dirección, nombre completo y teléfonos de contacto.

Una vez aceptada la solicitud, también se deseará almacenar información sobre la
fecha real en la que realizaron los servicios solicitados, el tiempo que se ha
tardado en cada servicio y qu[ilegible: cortado por el borde de la fotografía]
empleados de la empresa de mudanza han trabajado en los servicios de dicha
solicitud.

<!-- Fuente: Modelo 1er Parcial 2018 - Tema 1 - Hoja 2.jpeg. -->

## Hoja 2

Nombre y apellido: — Fecha: / /

En cuanto a los empleados, la empresa almacena información sobre su NIF,
dirección, nombre completo, teléfono de contacto, teléfono de empresa, tipo de
empleado (conductor, grúa, jefe de mudanza, etc.) y el sueldo. Aunque existen
muchos tipos de empleado, cada uno con su especialidad, en las empresas de
mudanza todos pueden realizar cualquier trabajo en algún momento dado, por lo
que no será necesario comprobar que únicamente los conductores son los que
conducen los vehículos en las mudanzas. Además, un mismo empleado puede serlo de
varias empresas de mudanza en distintos momentos, por lo que será necesario
guardar esta información.

Para facilitar la gestión económica de esta base de datos, suponemos que todos
los pagos de los clientes se efectúan a priori.

2- **Modelo relacional:**

a) (30 ptos) Transformar el DER anterior en un esquema relacional en el que se
han de indicar las claves primarias, las claves ajenas y valores no nulos.

b) (20 ptos) Seleccione una entidad y un vínculo del DER realizado y escriba las
sentencias SQL apropiadas para crearlas, incluyendo todas las restricciones de
integridad de claves primaria y foráneas, así como cualquier otra restricción de
verificación (checks), aserciones o disparadores (triggers) necesarios para
captar toda la semántica posible del enunciado.
