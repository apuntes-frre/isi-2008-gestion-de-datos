# Unidad I: ejercicios de comprensión y fijación

> Fuente: `Ejercicios_de_comprension_y_fijacion.docx`, carpeta 2018 de Gestión
> de Datos en OneDrive. El ejercicio se conserva sin resolver.
> [Procedencia y revisión](../../../resources/2018/fuentes.md).

*1) Lea el siguiente ejemplo y marque cada uno de los problemas que se describen
e identifíquelo:*

Consideremos un banco que mantiene información acerca de todos los clientes y
cuentas de ahorro. Una manera de mantener la información en la computadora es
almacenarla en archivos del sistema operativo. Para permitir a los usuarios
manipular la información, el sistema tiene un número de programas de aplicación
que manipula los archivos, incluyendo:

\* Un programa para efectuar cargos o abonos en una cuenta.

\* Un programa para añadir una cuenta nueva.

\* Un programa para calcular el saldo de una cuenta.

\* Un programa para generar las operaciones mensuales.

etc…

Estos programas de aplicación se han escrito por uno o más programadores en
respuesta a las necesidades de la organización bancaria.

Si las necesidades se incrementan, se añaden nuevos programas de aplicación al
sistema. Por ejemplo, supongamos que las regularizaciones del gobierno permiten
a las cajas de ahorro ofrecer cuentas corrientes. Como resultado se crean nuevos
archivos permanentes que contengan información acerca de todas las cuentas
corrientes mantenidas por el banco, y puede ser necesario escribir nuevos
programas de aplicación para tratar situaciones que no existen en las cuentas de
ahorro, tales como manejar descubiertos. Así, sobre la marcha, se añaden más
archivos y programas de aplicación al sistema.

Este sistema de procesamiento de archivos típico que se acaba de describir se
mantiene mediante un sistema operativo convencional. Los registros permanentes
son almacenados en varios archivos y se escriben diferentes programas de
aplicación para extraer registros y para añadir registros a los archivos
adecuados. Antes de la llegada de los sistemas de gestión de bases de datos
(SGBDs), las organizaciones normalmente han almacenado la información usando
tales sistemas.

Mantener información de la organización en un sistema de procesamiento de
archivos tiene una seria de inconvenientes importantes.

Debido a que los archivos y programa de aplicación son creados por diferentes
programadores en un largo periodo de tiempo, los diversos archivos tienen
probablemente diferentes formatos y los programas pueden estar escritos en
diferentes lenguajes. Más aun, la misma información puede estar duplicada en
diferentes lugares (archivos). Por ejemplo, la dirección y número telefónico de
un cliente particular puede aparecer en un archivo que contenga registros de una
cuenta de ahorros y en un archivo que contenga registros de una cuenta
corriente. Esta redundancia conduce a un almacenamiento y coste de acceso más
altos. Además, las diversas copias de los mismos datos pueden no coincidir. Por
ejemplo, un cambio en la dirección del cliente puede estar reflejado en los
registros de la cuenta de ahorros pero no estarlo en el resto del sistema.

Supongamos que uno de los empleados del banco necesita averiguar los nombres de
todos los clientes que viven en el distrito postal 28733 de la cuidad. El
empleado pide al departamento de procesamiento de datos que genere dicha lista.
Debido a que esta petición no fue prevista cuando el sistema original fue
diseñado, no hay un programa de aplicación a mano para satisfacerla. Hay, sin
embargo un programa de aplicación que genera la lista de todos los clientes. El
empleado del banco tiene ahora dos opciones: bien obtener la lista de todos los
clientes y obtener la información que necesita manualmente, o bien pedir al
departamento de procesamiento de datos que haga que un programador de sistema
escriba el programa de aplicación necesario. Ambas alternativas con obviamente
insatisfactorias. Supongamos que se escribe tal programa y que, varios días más
tarde, el mismo empleado necesita arreglar esa lista para incluir solo aquellos
clientes que tienen una cuenta con un saldo de 10.000 euros o más. Como se puede
esperar, un programa para general tal lista no existe. De nuevo el empleado
tiene que elegir entre dos opciones, ninguna de las cuales es satisfactoria…

La cuestión aquí es que el entorno de procesamiento de archivos convencional no
permite que los datos necesarios sean obtenidos de una forma práctica y
eficiente. Se deben desarrollar sistemas de recuperación de datos más
interesantes para uso general.

Debido a que los datos están dispersos en varios archivos, y los archivos pueden
estar en diferentes formatos, es difícil escribir nuevos programas de aplicación
para recuperar los datos apropiados.

Los valores almacenados en la base de datos debes satisfacer ciertos tipos de
restricciones de consistencia. Por ejemplo, el saldo de una cuenta bancaria no
puede ser nunca más bajo de una cantidad predeterminada. Los desarrolladores
hacen cumplir esas restricciones en el sistema añadiendo el código apropiado en
los diversos programas de aplicación. Sin embargo, cuando se añaden nuevas
restricciones, es difícil cambiar los programas para hacer que se cumplan. El
problema es complicado cuando las restricciones implican diferentes elementos de
datos de diferentes archivos.

Un sistema de un computador como cualquier otro dispositivo mecánico o
eléctrico, está sujeto a fallo. En muchas ocasiones es crucial asegurar que, una
vez que un fallo a ocurrido y se ha detectado, los datos se restauraran al
estado de consistencia que exista antes del fallo. Consideremos un programa para
transferir 50 euros desde la cuenta A a la B. Si ocurre un fallo del sistema
durante la ejecución del programa, es posible que los 50 euros fueran eliminados
de la cuenta A, pero no abonados a la cuenta B, resultando un estado de la base
de datos inconsistente. Claramente es esencial para la consistencia de la base
de datos que ambos, el abono y el cargo tengan lugar o que ninguno tenga lugar.
Es decir, la transferencia de fondos debe ser atómica: esta debe ocurrir en
ellos por completo o no ocurrir en absoluto. Es difícil asegurar esta propiedad
en un sistema de procesamiento de archivos convencional.

Conforme se ha ido mejorando el conjunto de ejecución de los sistemas y ha sido
posible una respuesta en tiempo más rápido, muchos sistemas han ido permitiendo
a múltiples usuarios actualizar los datos simultáneamente. En tales sistemas un
entorno de interacción de actualizaciones concurrentes puede dar lugar a datos
inconsistentes. Consideren una cuenta bancaria A que contiene 500 euros. Si dos
clientes retiran fondos (por ejemplo 50 y 100 euros respectivamente) de la
cuenta A en aproximadamente el mismo tiempo, el resultado de las ejecuciones
concurrentes puede dejar la cuenta en un estado incorrecto. Supongamos que los
programas se ejecutan para cada retirada y escriben el resultado después. Si los
dos programas funcionan concurrentemente, pueden leer ambos el valor 500 euros y
escribir después 450 y 400 euros, respectivamente. Dependiendo de cual escriba
el último valor la cuanta puede contener bien 450 euros o bien 400 euros, en
lugar del valor correcto, 350 euros. Para protegerse contra esta posibilidad, el
sistema debe mantener alguna especie de supervisión. Sin embargo, ya que se
puede acceder a los datos desde muchos programas de aplicación diferentes que no
han sido previamente coordinados, la supervisión es difícil de proporcionar.

No todos los usuarios de un sistema de base de datos deberían poder acceder a
todos los datos. Por ejemplo, en un sistema bancario, el personal de nominas
necesita ver solo esa parte de la base de datos que tiene la información acerca
de varios empleados del banco. No necesitan acceder a la información acerca de
las cuentas del cliente. Como los programas de aplicación se añaden al sistema
de un forma “ad hoc”, es difícil garantizar tales restricciones de seguridad.

Estas dificultades, entre otras, han motivado al desarrollo de sistemas de base
de datos.
