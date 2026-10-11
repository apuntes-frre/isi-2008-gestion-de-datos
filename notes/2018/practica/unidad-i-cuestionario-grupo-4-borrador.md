# Unidad I: cuestionario del Grupo 4 — borrador

> Fuente: `Preguntas_Unidad_I.docx`, carpeta 2018 de Gestión de Datos en
> OneDrive. Contiene las respuestas que ya estaban en el original para las
> preguntas 1–4. Las preguntas restantes se conservan sin resolver.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

## Introducción a los Sistemas de Bases de Datos

Grupo 4

1\. ¿Por qué elegiría un sistema de base de datos en lugar de almacenar los datos
simplemente en archivos del sistema?

Un sistema de base de datos ofrece amplias ventajas, como ser: independencia con
respecto a los datos, acceso eficiente a los datos, integridad y seguridad,
administración de archivos, acceso concurrente y recuperación en caso de fallos
y reducción del tiempo de desarrollo de las aplicaciones.

2\. ¿Qué es independencia de datos lógica y por qué es importante?

La independencia de datos lógica es la capacidad para modificar el esquema
conceptual si causar que los programas de aplicación tengan que reescribirse.

Es importante porque no requiere una modificación en el esquema externo o la
reescritura de programas de aplicación disponibles.

3\. Explique la diferencia entre independencia de datos física y lógica.

La independencia física de datos es la capacidad para modificar el esquema
físico sin provocar que los programas de la aplicación tengan que reescribirse,
mientras que la independencia de datos lógica modifica el esquema conceptual sin
causar esta reescritura.

Las modificaciones a nivel físico ocasionalmente son necesarias para mejorar el
funcionamiento, en cambio, la independencia lógica es más difícil de
proporcionar ya que los programas de aplicación son fuertemente dependientes de
la estructura lógica de los datos a los que ellos acceden.

4\. Explique la diferencia entre esquemas externo, interno y conceptual. ¿Cómo se
relacionan estas diferentes capas de esquemas con la independencia de datos
física y lógica?

El esquema a nivel físico o interno es el nivel más bajo de la abstracción y
describe cómo se almacenarán realmente los datos. Aquí se describen en detalle
las estructuras de datos complejas de bajo nivel.

La independencia de datos física es la capacidad de modificar el esquema físico.

En el esquema externo se describe sólo la parte de la base de datos completa.
Proporciona vistas para que el usuario acceda a los datos que le interesa.

El esquema a nivel conceptual describe qué datos se almacenan en la base de
datos y qué relaciones existen entre ellos. Es el nivel que les interesa a los
administradores y programadores de la base de datos.

La independencia de datos lógica es la capacidad de modificar el esquema
conceptual.

5\. ¿Cuáles son las responsabilidades de un DBA? Si asumimos que el DBA nunca
estará interesado en ejecutar sus propias consultas, ¿necesitará aún así
entender sobre optimización de consultas? ¿Por qué?

6\. Una empresa quiere almacenar información (nombres, direcciones, etc.) sobre
sus empleados. El volumen de datos obliga a comprar un sistema de bases de
datos. Para ahorrar dinero se quiere comprar uno con la menor cantidad de
características posible y se planea ejecutarlo en un equipo PC sin conexión de
red. Por supuesto no se desea compartir la información. Indicar por cuáles de
las siguientes características de un DBMS se debería pagar. En cada caso indicar
por qué si (o por qué no) se debería pagar por esa característica.

> 1\. Seguridad.
>
> 2\. Control de concurrencia.
>
> 3\. Recuperación de fallos.
>
> 4\. Mecanismo de vistas.
>
> 5\. Lenguaje de consultas.

7\. ¿Cuáles de los siguientes ítems juegan un papel importante en la
*representación* de información en una base de datos? Explique brevemente.

> 1\. El lenguaje de definición de datos.
>
> 2\. El lenguaje de manipulación de datos.
>
> 3\. El administrador de buffer.
>
> 4\. El modelo de datos.

8\. Describa la estructura de un DBMS. Si su sistema operativo se actualiza para
soportar nuevas funciones para los archivos del sistema, ¿qué capa/s del DBMS
deberían reescribirse a fin de tomar ventajas de estas nuevas funciones?

9\. Responda las siguientes preguntas:

> 1\. ¿Qué es una transacción?
>
> 2\. ¿Por qué un DBMS intercala las acciones de diferentes transacciones, en
> lugar de ejecutar las transacciones una detrás de otra?
>
> 3\. ¿Qué debe garantizar un usuario con respecto a una transacción y la
> consistencia de la base de datos?
