# Álgebra relacional: guía de ejercicios

> Fuente: `EjerciciosUnidad4.pdf`, 2 páginas, carpeta 2018 de Gestión de Datos
> en OneDrive. El original no lleva número de guía ni autores; los metadatos
> dicen «El Modelo Entidad-Relación», autor aa, creado el 2011-05-15 con
> OpenOffice.org 3.2. Transcripción de los enunciados, sin resolver.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

Material relacionado:

- [Apunte teórico de Álgebra y Cálculo Relacional](../teoria/algebra-y-calculo-relacional-apunte.md).
- [Presentación de Álgebra Relacional](../teoria/algebra-relacional-presentacion.md).
- Resoluciones de estudiantes del Grupo 4, tituladas «Guía de Trabajos Prácticos
  nº4», cuya numeración coincide con la de estos ejercicios:
  [versión del 2018-06-25](algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-06-25.md)
  y
  [versión del 2018-05-19](algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-05-19.md).

<!-- Fuente: EjerciciosUnidad4.pdf, página 1. -->

## Algebra Relacional

1\. Explique la afirmación de que los operadores del álgebra relacional pueden
“componerse”. ¿Por qué es importante la capacidad de componer operadores?

2\. Dadas dos relaciones R1 y R2, donde R1 contiene N1 tuplas, R2 contiene N2
tuplas, y N2 > N1 > 0, encuentre los tamaños mínimo y máximo posibles (en
tuplas) para la relación resultante al aplicar cada una de las siguientes
expresiones de álgebra relacional. En cada caso, establezca los supuestos
necesarios sobre los esquemas de R1 y R2 para que la expresión tenga sentido:

- a. R1 U R2
- b. R1 ∩ R2
- c. R1 – R2
- d. R1 X R2
- e. $`\displaystyle \sigma_{a = 5}(R1)`$
- f. $`\displaystyle \pi_{a}(R1)`$
- g. R1 / R2

3\. Considere el siguiente esquema:

> Proveedores<em>(</em><ins><em>idp:</em> integer</ins><em>, nombrep:</em>
> string<em>, direccionp:</em> string<em>)</em>\
> Partes<em>(</em><ins><em>idpa:</em>integer</ins><em>, nombrepa:</em>
> string<em>, color:</em> string<em>)</em>\
> Catalogo<em>(</em><ins><em>idp:</em> integer<em>, idpa:</em>
> integer</ins><em>, precio:</em> real<em>)</em>

Los campos claves están subrayados y el dominio de cada campo se especifica
después del nombre. La relación Catalogo lista los precios a los que cada
proveedor vende cada parte. Escriba las siguientes consultas en álgebra
relacional:

1. Encontrar los nombres de los proveedores que proveen alguna parte roja.
1. Encontrar los idps de los proveedores que proveen alguna parte roja o verde.
1. Encontrar los idps de los proveedores que proveen alguna parte roja o están
   en Av. 9 de Julio 2222.
1. Encontrar los idps de los proveedores que proveen alguna parte roja y alguna
   parte verde.
1. Encontrar los idps de los proveedores que proveen todas las partes.
1. Encontrar los idps de los proveedores que proveen todas las partes rojas.
1. Encontrar los idps de los proveedores que proveen todas las partes rojas o
   verdes.
1. Encontrar los idps de los proveedores que proveen todas las partes rojas o
   todas las partes verdes.
1. Encontrar pares de idps tales que el proveedor con el primer idp vende más
   caro alguna parte que el proveedor con el segundo idp.
1. Encontrar los idpas de las partes que son proveídas por por al menos dos
   proveedores diferentes.
1. Encontrar los idpas de las partes que son proveídas por proveedores llamados
   Juan García.
1. Encontrar los idpas de las partes proveídas por todos los proveedores a menos
   de \$200 (si algún proveedor no provee la parte o la cobra más de \$200, ésta
   no se selecciona).

<!-- Fuente: EjerciciosUnidad4.pdf, página 2. -->

4\. Considere el esquema Proveedores-Partes-Catalogo del punto anterior.
Establezca cuál es el resultado de las siguientes consultas:

- a.
  $`\displaystyle \pi_{\text{nombrep}}\,(\pi_{\text{idpa}}\,(\sigma_{\text{color = 'rojo'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores})`$
- b.
  $`\displaystyle \pi_{\text{nombrep}}\,(\pi_{\text{idpa}}\,((\sigma_{\text{color = 'rojo'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores}))`$
- c.
  $`\displaystyle (\pi_{\text{nombrep}}\,((\sigma_{\text{color = 'rojo'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores})) \cap (\pi_{\text{nombrep}}\,((\sigma_{\text{color = 'verde'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores}))`$
- d.
  $`\displaystyle (\pi_{\text{idp}}\,((\sigma_{\text{color = 'rojo'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores})) \cap (\pi_{\text{idp}}\,((\sigma_{\text{color = 'verde'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores}))`$
- e.
  $`\displaystyle \pi_{\text{nombrep}}\,((\pi_{\text{idp, nombrep}}\,((\sigma_{\text{color = 'rojo'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores})) \cap (\pi_{\text{idp, nombrep}}\,((\sigma_{\text{color = 'verde'}}\,\text{Partes}) \mathbin{|\text{x}|} (\sigma_{\text{costo} \lt 100}\,\text{Catalogo}) \mathbin{|\text{x}|} \text{Proveedores})))`$

5\. Dado el siguiente esquema relacional:

> Vuelos(_flno:_ integer, _from:_ string, _to:_ string, _distance:_ integer,
> _departs:_ time, _arrives:_ time)\
> Aviones(_aid:_ integer, _aname:_ string, _cruisingrange:_ integer)\
> Certificados(_eid:_ integer, _aid:_ integer)\
> Empleados(_eid:_ integer, _ename:_ string, _salary:_ integer)

Tener en cuenta que la relación Empleados describe tanto pilotos como otras
clases de empleados; cada piloto está calificado para algún avión (de otra forma
no podría calificar como piloto), y sólo los pilotos están calificados para
volar.

Escribir las siguientes consultas en álgebra relacional. Tener en cuenta que no
todas pueden ser contestadas. En tales casos explicar por qué.

1. Encuentre los *eid*s de pilotos certificados para algún avión Boeing.
1. Encuentre los _nombres_ de pilotos certificados para algún avión Boeing.
1. Encuentre los *aid*s de todos los aviones que pueden ser usados para vuelos
   sin paradas desde Bonn hasta Madras.
1. Identifique los vuelos que pueden ser piloteados por cada piloto cuyo salario
   sea mayor a \$10.000.
1. Encuentre los nombres de pilotos que pueden operar aviones con un rango mayor
   a 3.000 km pero que NO esten certificados para los aviones Boeing.
1. Encuentre los *eid*s de empleados que ganan el mayor salario.
1. Encuentre los *eid*s de empleados que ganen el segundo mayor salario.
1. Encuentre los *eid*s de empleados que están certificados para la mayor
   cantidad de aviones.
1. Encuentre los *eid*s de los empleados que están certificados para exactamente
   3 (tres) aviones.
1. Encuentre la cantidad total de dinero pagado en concepto de salario.
1. ¿Existe alguna secuencia de vuelos de Buenos Aires a Berlín? Cada vuelo en la
   secuencia debe partir de la ciudad que es destino del vuelo anterior; el
   primer vuelo debe partir de Buenos Aires, el último debe llegar a Berlín y no
   hay restricción en la cantidad de vuelos intermedios. Su consulta debe
   determinar cuándo existe alguna secuencia de vuelos desde Buenos Aires a
   Berlín para alguna instancia de la relación Vuelos.
