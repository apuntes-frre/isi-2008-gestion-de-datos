# Álgebra relacional: guía de TP nº 4 resuelta por el Grupo 4 (2018-06-25)

> Fuente: `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO por Vic.docx`, carpeta 2018 de
> Gestión de Datos en OneDrive (4 páginas según los metadatos de Word; última
> modificación el 2018-06-25). Transcripción de las respuestas del Grupo 4 tal
> como figuran en el original: no se han corregido ni validado sus soluciones y
> las respuestas vacías se conservan vacías. El enunciado de la guía no forma
> parte de este documento. Hay una versión anterior, sin portada y con menos
> respuestas, en
> [algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-05-19.md](algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-05-19.md).
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

## Portada

Universidad Tecnológica Nacional

Facultad Regional Resistencia

![Emblema de la UTN de la portada](../../../resources/2018/algebra-relacional-guia-resuelta-grupo-4/logo-utn-portada.png)

Ingeniería en Sistemas de Información

Gestión de Datos

______________________________________________________________________

Guía de Trabajos Prácticos nº4: Algebra Relacional

**Profesora Teoría:** Ing. Orcola, Carolina

**Jefe de Trabajos Prácticos**: Ing. Eiman, Luis

**Auxiliar de Trabajos Prácticos:** Fernández, Juan Carlos

**Alumnos:**

- Ferreira, Eduardo
- Fierro Cáceres, Victoria
- Gallardo, Madelein Abril
- López Soto, Carlos
- Maidana, Lucas Martín

**Grupo:** 4

2018

Encabezado de las páginas: «Gestión de datos» y «Guía de trabajos prácticos
nº4». Pie de página: «Integrantes: Ferreira, Eduardo; Fierro, Victoria; Gallardo
, Madelein; Maidana, Lucas; López Soto, Carlos.» y el número de página.

## Respuestas

1\. Se pueden combinar los operadores del algebra relacional, ya que esta es
cerrada, es decir, al aplicar cualquier operador a una relación se obtiene, como
resultado, otra relación.

A partir de los resultados parciales, resulta importante para poder combinarlos
con el objetivo de obtener el resultado final deseado.

| Ejercicio | Min | Max |
| -- | -- | -- |
| a) * Unión Compatible | N2 | N2 + N1 |
| b) * Unión Compatible | 0 | N1 |
| c) * Unión Compatible | 0 | N1 |
| d) | N1 X N2 | N1 X N2 |
| e) | 0 | N1 |
| f) si a1 admite nulos: 0<br>si a1 no admite nulos:1 | 0 / 1 | N1 |
| g) | 0 | 0 |

2\.

3\. PROVEEDORES(idp<ins>:</ins> integer, nombrep: string, direccionp: string)\
PARTES(<ins>idpa:</ins> integer, nombrepa: string, color: string)\
CATALOGO(<ins>idp:</ins> integer, <ins>idpa:</ins> integer, precio: real)

3.1
$`\pi_{nombrep}[Proveedores \bowtie Catalogo \bowtie \sigma_{color = rojo}(Partes)]`$

3.2
$`\pi_{idp}[Proveedores \bowtie Catalogo \bowtie \sigma_{color = rojo \vee verde}(Partes)]`$

3.3
$`\pi_{idp}[Proveedores \bowtie Catalogo \bowtie \sigma_{color = rojo}(Partes) \cup \sigma_{direccionp = Av.\ 9\ de\ Julio\ 2222}(Proveedores)]`$

3.4
$`\pi_{idp}[Proveedores \bowtie Catalogo \bowtie \sigma_{color = rojo \land verde}(Partes)]`$

3.5 $`\pi_{idpa,idp}(Cat\acute{a}logo)) / \pi_{idpa}(Partes)`$

3.6
$`\pi_{idpa,idp}(Cat\acute{a}logo)) / \pi_{idpa}\left(\sigma_{color = rojo}(Partes)\right)`$

3.7
$`\pi_{idpa,idp}(Cat\acute{a}logo)) / \pi_{idpa}\left(\sigma_{color = rojo \vee verde}(Partes)\right)`$

3.8
$`\pi_{idpa,idp}(Cat\acute{a}logo) / \{\pi_{idpa}\left[\left(\sigma_{color = rojo}(Partes)\right) \cup \left(\sigma_{color = verde}(Partes)\right)\right]`$

3.9 $`P(A,Cat\acute{a}logo)`$\
$`P(B,Cat\acute{a}logo)`$\
$`\pi_{A.idp,B.idp}\left(A \bowtie_{A.idp \neq B.idp \land A.idpa = B.idpa \land A.precio \gt B.precio} B\right)`$

3.10 $`P(A,Catalogo)`$\
$`P(B,Catalogo)`$\
$`\pi_{idpa}(A \bowtie_{(A.idpa = B.idpa \land A.idp \neq B.idp} B)`$

3.11 $`\pi_{idpa}(\sigma_{nombrepa = 'JuanGarcia'}(Partes))`$

3.12
$`\pi_{idp,idpa}(\sigma_{precio \lt 200}(Catalogo)) / \pi_{idp}(Proveedores)`$

4\. a) Resultado: Nombre de los proveedores que provean partes rojas y a un costo
menor a 100

b) Resultado: mismo que el 4.1

c) Resultado: Nombre de los proveedores que proveen partes rojas y verdes con un
precio menor a 100

d) Resultado: idp de los proveedores que proveen partes rojas y verdes con un
precio menor a 100

e) Resultado: Nombre de los proveedores que proveen partes rojas y verdes con un
precio menor a 100

5\.

VUELOS(flno: integer, from: string, to: string, distance: integer, departs:
time, arrives: time)

AVIONES(aid: integer, aname: string, cruisingrange: integer)

CERTIFICADOS(eid: integer, aid: integer)

EMPLEADOS(eid: integer, ename: string, salary: integer)

5.1. $`\pi_{eid}(\sigma_{aname = 'Boeing'}(Aviones \bowtie Certificados))`$

5.2.
$`\pi_{ename}(\sigma_{aname = 'Boeing'}(Aviones \bowtie Certificados \bowtie Empleados))`$

5.3.
$`\pi_{aid}(Vuelos \bowtie_{Vuelos.distance = Aviones.cruisingrange}(Aviones)`$

5.4.
$`\pi_{flno,eid}\left(\left(Aviones \bowtie_{Vuelos.distance = Aviones.cruisingrange} Vuelos\right) \bowtie Certificaos\right) / \pi_{eid}(\sigma_{salary \gt 10000}(Empleados))`$

5.5.

A1 ← $`\pi_{eid}(Certificados \bowtie \sigma_{crusingrange \gt 3000}(Aviones))`$

A2 ← $`\pi_{eid}(Certificados \bowtie \sigma_{aname = Boening}(Aviones))`$

$`\pi_{eid}(Empleados \bowtie (A1 - A2))`$

5.6.

E1 ← Empleados

E2 ← Empleados

E3 ← (E1 $`\bowtie_{E1.Salary \lt E2.Salary} E2)`$

$`\pi_{eid}(Empleados) - \pi_{E1.eid}(E3)`$

5.7.

E1 ← Empleados

E2 ← Empleados

E3 ← (E1 $`\bowtie_{E1.Salary \lt E2.Salary} E2)`$

Ea ← E3

Eb ← E3

E4 ← (Ea $`\bowtie_{Ea.Salary \lt Eb.Salary} Eb)`$

$`\pi_{eid}(E3) - \pi_{Ea.eid}(E4)`$

5.8. Este ejercicio no puede ser resuelto a través del algebra relacional.

5.9.

C1 ← Certificados

C2 ← Certificados

C3 ← Certificados

C4 ← (C1 $`\bowtie_{C1.aid = C2.aid} C2)`$

C5 ← (C4 $`\bowtie_{C4.aid = C3.aid} C3)`$

$`\pi_{eid}(Empleados \bowtie C5)`$

5.10. Este ejercicio no puede ser resuelto a través del algebra relacional.

5.11. Este ejercicio no puede ser resuelto a través del algebra relacional.
