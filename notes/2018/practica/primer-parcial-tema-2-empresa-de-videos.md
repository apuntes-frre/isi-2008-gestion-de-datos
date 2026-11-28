# Primer parcial 2018, tema 2: empresa de videos

> Transcripción de las fotografías «Modelo 1er Parcial 2018 - Tema 2 - Hoja
> 1.jpeg» y «Hoja 2.jpeg», conservadas en la carpeta 2018 de Gestión de Datos en
> OneDrive. El número de tema y el año vienen del nombre de los archivos; las
> hojas no los imprimen. En la primera foto el renglón «Nombre y apellido» queda
> fuera del encuadre. Son consignas sin resolver y las fotografías no se
> publican. [Procedencia y revisión](../../../resources/2018/fuentes.md).

<!-- Fuente: Modelo 1er Parcial 2018 - Tema 2 - Hoja 1.jpeg. -->

## Hoja 1

Fecha: / /

### GESTIÓN DE DATOS — PRIMER EXAMEN PARCIAL

1- **Modelo Entidad Relación:** (50 ptos.) Realizar el diagrama E/R
correspondiente a los supuestos enunciados más abajo explicando si se ha
considerado algún supuesto semántico adicional. Si alguna especificación del
enunciado no ha podido reflejarse en el esquema, hacerlo constar.

<ins>**ESCENARIO**</ins>: EMPRESA DE VIDEOS

El portal Web `www.peliculas.com` desea gestionar de forma eficiente toda la
información sobre las películas preferidas de sus usuarios: actores, directores,
productores, títulos de las películas (original y traducido al español), año de
producción, premios que ha recibido la película y/o artista a lo largo de su
carrera, etc.

Para ello, en primer lugar se almacenará información sobre los distintos premios
a películas/actores y en qué edición de qué Gala se han otorgado (por ejemplo:
Concha de Plata u Oro/Festival de Cine de Donosita; Palma de Oro/Festival de
cine de Cannes; León de Oro/Mostra de Venecia; Oso de Oro/Festival de Berlín;
Óscar/Academia Americana de Cine; etc.). Las Galas pueden ser de tipo: academia,
festival o concurso Dos ediciones diferentes de una misma Gala, solamente se
distinguen en el año en el que se realizó ésta, pero también se desea almacenar
exactamente el lugar de celebración de la gala (que no suele variar en las
diferentes ediciones, pero es posible que varíe por problemas técnicos) y la
fecha exacta de celebración de la misma.

Una Gala se caracteriza por el nombre (único), nacionalidad y año de comienzo.
No todas las Galas ofrecen los mismos premios. En nuestra base de datos sólo
vamos a recoger los siguientes premios: mejor actor principal, mejor actriz
principal, mejor actor secundario, mejor actriz secundaria, mejor película y
mejor dirección. Hay que tener en cuenta que algunas veces estos premios tienen
nombre propio, por ejemplo: “Concha de Oro” = Premio a Mejor película en el
festival de San Sebastián. Si se conociese el nombre el premio, sería
interesante almacenarlo. También se desea almacenar qué personas/artistas actúan
como tribunal en cada edición de la Gala y para posteriores optimizaciones de
consultas, el número exacto de personas que componen los tribunales en cada Gala
(que se trata de un número prefijado como norma/regla del mismo).

Hay que contemplar que una persona no puede ser jurado de una Gala si participa
en una película nominada en ella, con cualquier papel.

Es importante conocer para los usuarios de nuestra página Web tanto a qué
premios han estado nominados los actores, directores y películas como cuáles de
ellos han obtenido finalmente el premio en cada edición y con qué película. Por
ejemplo:

- Tom Hanks obtuvo el óscar a mejor actor en 1993 por “Philadelphia” y en 1994
  por “Forrest Gump”
- Reese Witherspoon ganó el óscar a mejor actriz en 2006 por la película “Walk
  in the Line” y otras 4 actrices más fueron nominadas en la misma edición para
  el premio pero no lo obtuvieron, como Keira Knightley por la película “Pride
  and Prejudice”)
- “Los lunes al sol” obtuvo el premio de Concha de Oro en el año 2002.

Las películas se pueden identificar con su título original y su año de
producción, aunque también se desean almacenar otras características
importantes, como los actores/actrices que han trabajado, el/los directores,
el/los productores, el/los guionistas, la/s nacionalidad/es, el idioma original,
título en español (si existe), etc. Las películas se clasifican según su tema
como: comedia, musical, terror, documental, etc.

<!-- Fuente: Modelo 1er Parcial 2018 - Tema 2 - Hoja 2.jpeg. -->

## Hoja 2

Nombre y apellido: — Fecha: / /

Además es importante tener una pequeña información de la película: lugar del
estreno, sala de exposición, máxima recaudación en el primer año de exposición y
cantidad total recaudada, en euros. Teniendo en cuenta que una película puede
estrenarse en varios sitios a la vez en la misma fecha.

En cada película al menos ha de existir un director y un actor, con excepción de
los documentales en los que sólo se recogerá un director.

Una persona que ha participado en una película con varios papeles, por ejemplo
guionista y director o actor principal y director, etc.., puede ser nominado a
varios premios por ella.

De todas las personas que participan en la creación de la película (actores,
directores, guionistas, etc.) se desea almacenar información de su nombre
artístico (único), nombre real, sexo, año de nacimiento, página Web (si
tuviera), año de inicio en el 7º arte y el número de años totales que lleva
trabajando en ello y si está activo, retirado o ha fallecido.

2- **Modelo relacional:**

a) (30 ptos) Transformar el DER anterior en un esquema relacional en el que se
han de indicar las claves primarias, las claves ajenas y valores no nulos.

b) (20 ptos) Seleccione una entidad y un vínculo del DER realizado y escriba las
sentencias SQL apropiadas para crearlas, incluyendo todas las restricciones de
integridad de claves primaria y foráneas, así como cualquier otra restricción de
verificación (checks), aserciones o disparadores (triggers) necesarios para
captar toda la semántica posible del enunciado.
