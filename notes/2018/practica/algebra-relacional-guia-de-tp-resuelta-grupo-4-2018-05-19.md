# Álgebra relacional: guía de TP nº 4 resuelta por el Grupo 4 (2018-05-19)

> Fuente: `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO .docx`, carpeta 2018 de
> Gestión de Datos en OneDrive (2 páginas según los metadatos de Word; última
> modificación el 2018-05-19). Es una versión anterior de la resolución del
> Grupo 4, sin portada y sin la integridad de la versión posterior
> [algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-06-25.md](algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-06-25.md).
> Transcripción tal como figura en el original: no se han corregido ni validado
> sus soluciones, y las respuestas vacías o incompletas se conservan así. El
> enunciado de la guía no forma parte de este documento.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

## Respuestas

1\. Qeipfdwod

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
$`\pi_{idpa,idp}(Cat\acute{a}logo) / \pi_{idpa}\left[\left(\sigma_{color = rojo}(Partes)\right) \cup \left(\sigma_{color = verde}(Partes)\right)\right]`$

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
$`(\sigma_{salary \gt 10000}(Empleados \bowtie_{eid} Certificados)) \bowtie`$
