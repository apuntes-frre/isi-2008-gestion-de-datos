# Recuperatorio del primer parcial: gestión de aeropuertos

> Transcripción de la fotografía `20180703_093827.jpg`, guardada en «Modelos de
> Parcial 2018», carpeta 2018 de Gestión de Datos en OneDrive. La hoja no
> imprime la fecha; el nombre del archivo indica 2018-07-03. Son consignas sin
> resolver y la fotografía no se publica.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

<!-- Fuente: 20180703_093827.jpg. -->

Nombre y apellido: — Fecha: / /

## GESTIÓN DE DATOS — RECUPERATORIO 1° EXAMEN PARCIAL

1. **Modelo Entidad Relación:** (60 ptos.) Realizar el diagrama E/R
   correspondiente a los supuestos enunciados más abajo explicando si se ha
   considerado algún supuesto semántico adicional. Si alguna especificación del
   enunciado no ha podido reflejarse en el esquema, hacerlo constar.

SISTEMA DE GESTIÓN PARA AEROPUERTOS

Deseamos modelar un sistema de gestión para aeropuertos teniendo en cuenta lo
siguiente:

- El sistema debe almacenar información del personal del aeropuerto en general.
  Existen tres tipos de personal: pilotos, tripulación y administrativos.
- Los pilotos son contratados, y se registran CUIT/CUIL, apellido y nombres y el
  tipo de avión que puede pilotear.
- De los administrativos se registra CUIT/CUIL, apellido y nombres, fecha de
  nacimiento y el sector u oficina en la cual trabaja.
- De la tripulación se registran CUIT/CUIL, apellido y nombres, fecha de
  nacimiento y si son para vuelos de cabotaje o internacionales.
- Se ofrecen una serie de trayectos, de los que se registran: origen, destino y
  distancia.
- Por cada trayecto se programan una serie de vuelos semanales. De cada vuelo se
  registra el código, fecha, hora de salida, hora de llegada, cantidad de
  pasajeros, avión asignado y costo.
- Un pasajero compra los pasajes especificando sus datos personales, el
  administrativo que lo atendió, el vuelo seleccionado y el asiento.
- Cada piloto tiene asignado un avión fijo y cada trayecto tiene aviones
  específicos asignados.
- Según el avión, se designa la cantidad de tripulación teniendo en cuenta la
  capacidad y el tipo de avión del vuelo.

**Modelo relacional:**

2\. (25 ptos) Transformar el DER anterior en un esquema relacional en el que se
han de indicar las claves primarias, las claves foráneas y valores no nulos.

3\. (15 ptos) Seleccione una entidad y un vínculo del DER realizado y escriba las
sentencias SQL apropiadas para crearlas, incluyendo todas las restricciones de
integridad de claves primaria y foráneas, manejo de integridad referencial,
etc., necesarios para captar toda la semántica posible del enunciado.
