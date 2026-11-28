# Modelo de examen: administración de consorcios

> Transcripción íntegra de `modelo examen.pdf` (1 página), conservado en la
> carpeta 2018 de Gestión de Datos en OneDrive. Los metadatos dan como autor a
> Juan Fernández y como fecha de creación el 2013-04-20. La página trae solo el
> escenario: no imprime materia, año ni consignas.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

<!-- Fuente: modelo examen.pdf, página 1. -->

## ESCENARIO

Una firma de abogados dedicada a la administración de inmuebles desea tener una
base de datos para facilitar la gestión de la información de sus clientes, es
decir, de los distintos consorcios que administra. La información que debe
contener la BD concierne a los aspectos que se describen a continuación.

La firma tiene varios abogados y cada uno de ellos ejerce de administrador de
uno o más consorcios por lo que cobra a cada una de ellas unos honorarios
anuales. Cada consorcio es gestionado por un único administrador (Nombre, DNI y
Nº de Colegiado). Las funciones de un administrador, sobre las que en este caso
interesa guardar información, consisten en llevar las cuentas de los consorcios,
gestionando los recibos que pagan los inquilinos mensualmente, así como los
pagos a las distintas compañías que proporcionan algún servicio al consorcio
(limpieza, ascensores, seguridad, luz, etc.).

De las empresas que tienen contratadas los distintos consorcios se guarda su
nombre, CUIT, dirección, teléfono y una persona de contacto. Además, interesa
tener estas compañías agrupadas en distintos sectores (luz, seguridad,
ascensores, etc.).

De cada consorcio gestionado por la firma de abogados interesa almacenar un
código identificador, su nombre, calle, código postal y localidad. Cada
consorcio consta de una serie de propiedades que pueden ser de tres tipos
(vivienda particular, local comercial y oficina). Cada propiedad se caracteriza
por un número de portal, planta y letra, nombre y apellido del propietario con
su dirección completa (que puede ser ésta u otra) y un teléfono de contacto, un
porcentaje de participación en los gastos de la comunidad así como los datos de
la cuenta bancaria en la que el propietario desea se le domicilie el pago de los
recibos. Si el propietario no habita en su propiedad entonces se necesitan sus
datos (nombre, apellidos, dirección y teléfono de contacto) así como los del
inquilino que la habita (nombre, apellidos y teléfono de contacto), en caso de
que esté habitada la propiedad. Si el propietario habita en la propiedad sólo
son necesarios sus datos (nombre, apellidos, teléfono de contacto).

Si la vivienda es particular se guardará el número de habitaciones de que
dispone; si es un local comercial se almacenará el tipo de comercio que se
desarrolla en él y el horario (en caso de que esté en uso); si es una oficina se
guardará la actividad a la que se destina.

Cada consorcio tiene además un presidente y varios vocales (se desea guardar
nombre, apellidos y propiedad de la que son dueños) elegidos entre todos los
propietarios, que se encargan de tratar directamente con el administrador los
distintos problemas que pudieran surgir.

En cuanto a las cuentas, cada consorcio tiene una cuenta en un banco. De los
distintos bancos se almacena el código de banco, el nombre y una persona de
contacto, mientras que para una cuenta bancaria se guarda un código de cuenta
(que consta de un código de sucursal, dos dígitos de control y un número de
cuenta) y un saldo. Para identificar una cuenta es necesario añadir al código de
cuenta el código del banco en el que se encuentra.

Es necesario almacenar dos tipos de libros para las cuentas: ingresos y gastos
(*aunque en la realidad existen otros gastos sobre los que habría que guardar
información -comisiones bancarias, gastos extras, etc.-, en este caso sólo se
tendrán en cuenta los aquí expuestos*) de cada consorcio.

- <ins>Ingresos</ins>: Aunque es el banco el que emite los recibos de las cuotas
  del consorcio a los distintos propietarios, el administrador guarda
  información sobre dichos recibos que se ingresan en las cuentas bancarias, es
  decir, el número de recibo, fecha, importe y si se ha podido cobrar o no.
- <ins>Gastos</ins>: Se deben registrar los importes que cobran las empresas
  contratadas por cada consorcio. Las compañías cobran sus recibos (Número de
  recibo, fecha e importe) cargándolos en la cuenta de cada consorcio.
