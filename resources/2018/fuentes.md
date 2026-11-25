# Fuentes y revisión documental — Gestión de Datos, 2018

## Alcance del piloto

Revisión realizada el 2026-10-11. Fuente canónica local:

```text
~/Library/CloudStorage/OneDrive-FacultadRegionalResistencia/Facultad/Materias ISI/Gestión de Datos/
```

Se inventariaron 86 archivos de contenido (88 incluyendo dos `.DS_Store`) antes
de seleccionar la Unidad I. Este piloto recupera los seis documentos de esa
unidad enumerados abajo; no certifica las unidades II–VI ni el resto de la
materia. Los originales se materializaron en copias temporales y se comprobó su
lectura completa y SHA-256. No se modificó ni se incorporó ningún original a
Git.

El apunte teórico ya existente era una versión abreviada: faltaban párrafos de
lenguaje de consultas, independencia de datos, transacciones, almacenamiento y
arquitectura. Se reemplaza por el texto íntegro, conservando el idioma y las
erratas. Los dos diagramas ya presentes se verificaron y reutilizaron; se agregó
el diagrama de los tres niveles de abstracción del original.

## Originales transcritos

### Unidad_I.pdf

- Ruta dentro de OneDrive: `2018/Apunte Teorico Gestion de Datos/Unidad_I.pdf`.
- Paginación: 11 páginas.
- Autoría y año: Ing. Carolina Orcola; Año 2013 en el documento.
- Tamaño materializado: 403026 bytes.
- SHA-256:

```text
faf12377ca5bc8204f3efc6bc44110e5db73785d4e07bc1862689955e0040622
```

- Transcripción:
  [notes/2018/teoria/unidad-I/README.md](../../notes/2018/teoria/unidad-I/README.md).

### Unidad I v2.pdf

- Ruta dentro de OneDrive: `2018/Unidad I v2.pdf`.
- Paginación: 50 diapositivas.
- Autoría y año: Carolina en metadatos; PDF creado en 2018.
- Tamaño materializado: 2295198 bytes.
- SHA-256:

```text
21933e3414ca61748729be1e458d8f4452aabe1856a03c8d77ca2b3ee23cc01d
```

- Transcripción:
  [notes/2018/teoria/unidad-I/presentacion.md](../../notes/2018/teoria/unidad-I/presentacion.md).

### Preguntas_Unidad_I.pdf

- Ruta dentro de OneDrive: `2018/Preguntas_Unidad_I.pdf`.
- Paginación: 1 página.
- Autoría y año: Autor no indicado en el contenido.
- Tamaño materializado: 60675 bytes.
- SHA-256:

```text
f876fba584077fa55042844e7277445f69fe9b2f85c2f7db4797c83e1b5056c8
```

- Transcripción:
  [notes/2018/practica/unidad-i-cuestionario.md](../../notes/2018/practica/unidad-i-cuestionario.md).

### Preguntas_Unidad_I.docx

- Ruta dentro de OneDrive: `2018/Preguntas_Unidad_I.docx`.
- Paginación: 2 páginas de vista previa.
- Autoría y año: Grupo 4; borrador con respuestas 1–4.
- Tamaño materializado: 15637 bytes.
- SHA-256:

```text
c272ea6d8ccfd8038d2ae09efee4d522d03ea9058f83d03438d1926c7dd5401f
```

- Transcripción:
  [notes/2018/practica/unidad-i-cuestionario-grupo-4-borrador.md](../../notes/2018/practica/unidad-i-cuestionario-grupo-4-borrador.md).

### Cuestionario 1.docx

- Ruta dentro de OneDrive: `2018/Cuestionario 1.docx`.
- Paginación: 5 páginas de vista previa.
- Autoría y año: Grupo 4; integrantes al final de la transcripción.
- Tamaño materializado: 130497 bytes.
- SHA-256:

```text
f80c35e6f082440c03957f4b3e8957d009ebc72a123aab34acdfbd214a6cc95b
```

- Transcripción:
  [notes/2018/practica/unidad-i-cuestionario-grupo-4.md](../../notes/2018/practica/unidad-i-cuestionario-grupo-4.md).

### Ejercicios_de_comprension_y_fijacion.docx

- Ruta dentro de OneDrive: `2018/Ejercicios_de_comprension_y_fijacion.docx`.
- Paginación: 2 páginas de vista previa.
- Autoría y año: Carolina Orcola en metadatos.
- Tamaño materializado: 17778 bytes.
- SHA-256:

```text
7eac6384fe20b301bb17198086f6aa027d89a4d0a5a52b48358f14105e13a26c
```

- Transcripción:
  [notes/2018/practica/unidad-i-comprension-y-fijacion.md](../../notes/2018/practica/unidad-i-comprension-y-fijacion.md).

## Duplicados, versiones y exclusiones

- `2018/Unidad_I.pdf` es un duplicado exacto del apunte de la subcarpeta
  `Apunte Teorico Gestion de Datos`: 403026 bytes y SHA-256
  `faf12377ca5bc8204f3efc6bc44110e5db73785d4e07bc1862689955e0040622`. Se
  transcribe una sola vez.
- `Unidad I v2.pdf` es una presentación de 50 diapositivas de 2018, no una
  segunda copia del apunte de 11 páginas de 2013. Agrega clasificación de SGBD,
  unidades de almacenamiento, ACID/BASE, ejemplos SQL e infografías, por lo que
  se conserva como documento separado.
- `Preguntas_Unidad_I.pdf` es la guía sin resolver; su DOCX incluye un borrador
  del Grupo 4 con respuestas a las preguntas 1–4. `Cuestionario 1.docx` incluye
  respuestas posteriores, una figura y los integrantes. Se conservan las tres
  versiones separadas, sin completar ni corregir sus soluciones.
- `2018/TP Unidad 1.pdf` se excluye de Gestión de Datos: su portada dice
  “COMPLEJIDAD Y TECNICAS DE DISEÑO DE ALGORITMOS — Practico 1 COMPLEJIDAD
  ALGORITMICA — 2018”; contiene 6 ejercicios de complejidad y cuatro algoritmos
  en 3 páginas. Tamaño: 500691 bytes. SHA-256:

```text
3dad6f22608320d2ea6ae019c7d85c70fda7bbacc69118ccea4c6b8b7e645a03
```

No se movió el archivo a otra materia: su ubicación errónea queda registrada
para una corrección posterior de la fuente canónica.

## Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2, modo sin OCR, medios referenciados, encabezados y
  pies incluidos; contraste con Poppler 26.10.0 (`pdftotext -layout` y
  `pdftoppm`). Se revisaron visualmente las **11 páginas del apunte**, la
  **página de la guía** y las **50 diapositivas**: 62 páginas originales.
- DOCX: Pandoc 3.12.1 a GFM con extracción de medios; contraste de texto contra
  el XML del DOCX y contra una vista previa PDF generada con un perfil temporal
  aislado de LibreOfficeDev 26.8.0.0.alpha0. Se revisaron las 2 + 5 + 2 páginas
  de esas vistas previas. Esa paginación depende del motor y las fuentes
  disponibles; no se atribuye al archivo original.
- Se mantuvieron el texto de la portada, los encabezados y pies del apunte. En
  la presentación, el encabezado institucional repetido se conserva una vez al
  inicio y las 50 secciones identifican las diapositivas originales; los
  contadores gráficos 25–28 corresponden a esas mismas secciones.
- La extracción automática alteró el orden de columnas de las diapositivas 10 y
  16, separó palabras del SQL y perdió las figuras de las diapositivas 6, 12 y
  33\. Se repararon con evidencia de todas las páginas renderizadas. Para los
  diagramas se extrajeron las imágenes originales; el compuesto con rótulos de
  la diapositiva 33 se renderizó desde el PDF a 180 dpi.
- Las potencias de las tablas se transcribieron a LaTeX, conservando exponentes
  y valores del original. Los importes de las infografías se escapan como moneda
  en Markdown, sin tratarlos como fórmulas.

### Controles de fidelidad y formato

- El cuerpo del apunte se contrastó palabra por palabra contra
  `pdftotext -layout` en las páginas 3–11. No faltan palabras: las únicas
  diferencias son siete caracteres `o` que el extractor usa para viñetas
  anidadas y que Markdown representa como listas. La portada, el índice y los
  encabezados, pies y diagramas se contrastaron visualmente.
- La guía PDF conserva las 329 palabras de su capa textual. Los tres DOCX
  conservan, respectivamente, las 627, 1779 y 1230 palabras del XML original, en
  el mismo orden; la comparación excluye la numeración generada por Word y las
  notas editoriales de procedencia. La numeración y las imágenes se verificaron
  por separado contra las vistas previas.
- Se contrastó la capa textual de las 50 diapositivas con cada sección. Las
  etiquetas de los diagramas 33 y 38 se conservan en sus imágenes; la tabla 17
  separa `0 o 1`, que `pdftotext` había unido como `0o1`. El resto del texto,
  incluidos los ejemplos SQL, está en Markdown. Las tablas e infografías se
  verificaron visualmente, incluidos los exponentes que el extractor aplana.
- Los siete archivos Markdown pasaron `mdformat` con las extensiones `gfm` y
  `myst`, `markdownlint-cli2` con la configuración compartida de transcripción y
  `check_transcription.py`. Se comprobó que el formato conserva las expresiones
  LaTeX; KaTeX renderizó las 19 expresiones matemáticas. Se verificaron enlaces
  y medios relativos y la ausencia de caracteres de extracción defectuosos.

### Conteo de contenido

| Fuente | Ejercicios o preguntas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Apunte `Unidad_I.pdf` | 0 ejercicios | 0 tablas de contenido; índice de 16 entradas adaptado a tabla | 3 diagramas; 2 emblemas institucionales; 7 referencias bibliográficas; 0 anexos |
| Presentación `Unidad I v2.pdf` | 4 consignas abiertas (diapositivas 2 y 10), sin resolver | 4 tablas didácticas (17, 18, 25 y 27); tablas menores dentro de las figuras 2 y 6 preservadas en imagen | 18 paneles gráficos, incluida la tabla-imagen de la diapositiva 18; 1 encabezado repetido; 0 anexos |
| `Preguntas_Unidad_I.pdf` | 9 preguntas y 12 subítems | 0 | 0 figuras; 0 anexos |
| `Preguntas_Unidad_I.docx` | 9 preguntas y 12 subítems; respuestas originales 1–4 | 0 | 0 figuras; 0 anexos |
| `Cuestionario 1.docx` | 9 preguntas y 12 subítems con respuestas originales | 0 | 1 diagrama; lista de 5 integrantes; 0 anexos |
| `Ejercicios_de_comprension_y_fijacion.docx` | 1 ejercicio bancario, sin resolver | 0 | 0 figuras; 0 anexos |

Los paneles de la presentación corresponden a las diapositivas 2, 3, 5, 6, 7, 8,
9, 10, 12, 18, 20, 21, 22, 23, 26, 28, 33 y 38. Las figuras 20–22 se conservan
como imágenes y también se transcriben sus cifras legibles en tablas.

## Erratas conservadas y pendientes

- El apunte dice Año 2013 y utiliza el título residual “EL TAD COLA” en los
  metadatos del PDF. Su ubicación en 2018 no cambia el año impreso.
- Se mantiene “Prentice may” en la tercera referencia bibliográfica del apunte y
  otras erratas gramaticales del original.
- La tabla de la diapositiva 17 conserva el encabezado “Número de Bytes” y sus
  valores originales para bit y byte. La diapositiva 18 conserva el exponente
  `$2^{30}$` de la fila Kilobyte. Estas transcripciones no corrigen la fuente.
- Se conservan las comillas tipográficas y el signo `–` del SQL de la
  diapositiva 45. Los ejemplos requieren una revisión separada para ejecutarse.
- Se mantienen “si causar” del borrador, “Casa transacción” de la versión
  respondida y su numeración reiniciada en subítems. No se verificó la
  corrección conceptual de las respuestas de los estudiantes.
- **Pendiente externo:** la diapositiva 5 enlaza a
  `Historia de las Bases de Datos.mp4`. No existe ese video en la carpeta
  inventariada. Se conserva la referencia como texto; no se inventa un enlace
  funcional ni su contenido.

Las seis transcripciones cubren el contenido legible de sus archivos completos.
El video ausente impide declarar recuperados todos los recursos externos de la
Unidad I. El resto de la materia requiere su propio inventario y revisión.

## Lote 2026-11-20: Modelado de Datos (Entidad-Relación)

Revisión realizada el 2026-11-20 en la rama
`claude/transcribir-gestion-de-datos-unidad-ii`. Fuente canónica local: la misma
carpeta de OneDrive de la sección anterior. Alcance: el apunte de Modelado de
Datos, su guía de trabajos prácticos y las resoluciones en Lucidchart. Los
originales se materializaron con el preflight en un directorio temporal nuevo,
con SHA-256 y lectura completa verificados. No se modificó ni se incorporó
ningún original a Git.

### Numeración de la fuente

El archivo `Unidad_II.pdf` imprime «Unidad 3: Modelado de datos» en la portada y
«Unidad III: Modelado de Datos» en el índice; el programa 2018 del curso
(`PROGRAMA 2018.pdf`) lo numera como «Unidad II – Modelado de Datos», igual que
la guía de TP («Unidad 2: Modelo Entidad Relación»). El README recuperado
`notes/2018/teoria/unidad-III/README.md` ya tenía el título «Unidad III:
Modelado de Datos» y corresponde a este mismo apunte; se reemplaza por el texto
íntegro. Como el validador exige nombres publicados en minúsculas y en
kebab-case (`unidad-III/README.md` no lo cumple), la nota se publica como
`notes/2018/teoria/modelado-de-datos-apunte.md` y se elimina la carpeta
`unidad-III`. El README `unidad-II` (Almacenamiento de registros) viene de otro
original (`Unidad VI.pdf`, cuya portada dice «Unidad 2: Almacenamiento de
Registros y organización de ficheros primarios») y no se toca en este lote. La
renumeración de las demás carpetas de unidades queda como decisión pendiente.

### Originales transcritos

#### Unidad_II.pdf

- Ruta dentro de OneDrive: `2018/Unidad_II.pdf`.
- Paginación: 22 páginas.
- Autoría y año: Ing. Carolina Orcola; Año 2011 en el documento. Metadatos:
  creado con Microsoft Word 2007 el 2011-03-06; su título residual es «EL TAD
  COLA».
- Tamaño materializado: 821851 bytes.
- SHA-256:

```text
abd87df3dfebf8541a842c6d3a2fedb3c51bb20baa92e68ab076b9c477c5b7e1
```

- Transcripción:
  [notes/2018/teoria/modelado-de-datos-apunte.md](../../notes/2018/teoria/modelado-de-datos-apunte.md).

#### Guia de TP 2018 - Unidad 2.pdf

- Ruta dentro de OneDrive: `2018/Guia de TP 2018 - Unidad 2.pdf`.
- Paginación: 4 páginas (portada y 3 páginas de enunciados, 2 de ellas con
  figura).
- Autoría y año: Ing. Carolina Orcola, Ing. Luis Eiman y Juan Carlos Fernández;
  Año 2018. Metadatos: LibreOffice 5.1; título residual «EL TAD COLA».
- Tamaño materializado: 271782 bytes.
- SHA-256:

```text
f5a178a483bbcf418520419a7b020bb58dd53baf39ced5dbd0989ddc4be1ae5e
```

- Transcripción:
  [notes/2018/practica/modelo-entidad-relacion-guia-de-tp.md](../../notes/2018/practica/modelo-entidad-relacion-guia-de-tp.md).

#### Guia TP Hecha(borrador).pdf

- Ruta dentro de OneDrive: `2018/Guia TP Hecha(borrador).pdf`.
- Paginación: 6 páginas A3 apaisadas, una exportación vectorial de Lucidchart.
- Autoría y año: creador en los metadatos Carlos Eduardo Ferreyra, con Lucid
  Software Inc. como productor; creado el 2018-04-10. Es una resolución de
  estudiante, no material docente.
- Tamaño materializado: 114700 bytes.
- SHA-256:

```text
99787b002c017045d47072a6d598cb449b2211df542a63f02e19a8251433806f
```

- Pertenencia: la cola solo asignaba a la Unidad II la carpeta
  `TP II LUCIDCHART/`; este PDF no figuraba en ningún lote. Se incluye aquí
  porque sus ejercicios 1–11 son los de la guía de TP «Unidad 2: Modelo Entidad
  Relación» y comparte herramienta y fecha con el PNG de esa carpeta.
- Transcripción:
  [notes/2018/practica/modelo-entidad-relacion-guia-de-tp-borrador.md](../../notes/2018/practica/modelo-entidad-relacion-guia-de-tp-borrador.md).

#### TP II LUCIDCHART/Ejercicio 4 y 4-b).png

- Ruta dentro de OneDrive: `2018/TP II LUCIDCHART/Ejercicio 4 y 4-b).png`.
- Paginación: una imagen PNG de 2550 × 3900 píxeles, sin capa de texto.
- Autoría y año: no constan; Lucidchart por su aspecto.
- Tamaño materializado: 363344 bytes.
- SHA-256:

```text
b0acf0abd9a41703fa70aa42c9d0444c6965ae5b5055fa39365073a7c35de950
```

- Transcripción:
  [notes/2018/practica/modelo-entidad-relacion-ejercicio-4-diagramas.md](../../notes/2018/practica/modelo-entidad-relacion-ejercicio-4-diagramas.md).
  La imagen original se conserva sin cambios en
  `resources/2018/er-tp-ejercicio-4-diagramas.png`.

### Duplicados y relacionados no incluidos

- `2018/Apunte Teorico Gestion de Datos/Unidad_II.pdf` es un duplicado exacto de
  `2018/Unidad_II.pdf`: 821851 bytes y el mismo SHA-256 de arriba. Se transcribe
  una sola vez.
- `Unidad_III_ppt.pdf` (68 diapositivas) es una presentación de «Unidad III:
  Modelo de Entidad Relación» que pertenece a este mismo tema, pero la cola la
  asigna al lote siguiente; no se transcribió aquí.
- `Unidad VI.pdf` y `PPT Unidad VI.pdf` (Almacenamiento de registros) no figuran
  en ningún ítem de la cola; no se transcribieron.

### Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2 sin OCR, con medios referenciados, encabezados y pies;
  contraste con Poppler 26.11.0 (`pdftotext -layout`, `pdftotext -raw`,
  `pdftoppm`, `pdfimages`). Se revisaron visualmente las **22 páginas del
  apunte**, las **4 de la guía**, las **6 del borrador** y la **imagen PNG**: 32
  páginas originales más la imagen.
- El texto de la capa PDF se contrastó con la nota página por página, palabra
  por palabra. En las páginas 4, 5, 13 y 22 del apunte no hay diferencias salvo
  las viñetas ✓. En el resto, las únicas diferencias son las etiquetas de las
  figuras (dentro de las imágenes), la matemática reescrita en LaTeX y las
  descripciones de la tabla de símbolos. En la guía, las palabras de la capa de
  texto de sus 4 páginas coinciden con la nota; las únicas diferencias son las
  viñetas «•» del PDF, convertidas en listas.
- Reparaciones demostradas con las páginas renderizadas: la extracción asignó
  caracteres de fuentes privadas a las 10 marcas ✓ de las viñetas (U+F0FC) y a
  los 2 signos ∈ de la notación de conjuntos de la página 6 (U+F0CE); se
  restauraron. Dos fragmentos de texto quedaron dentro de las figuras extraídas:
  la última viñeta de la página 17 y el párrafo de Studio CASE de la página 21;
  se repusieron. La extracción también unió «Entidad-» y «Relación» al cortar la
  línea en la página 20; se restauró el guion.
- Los subrayados de títulos y de las cabeceras de lista de la página 5 no se
  conservan; los enlaces de las páginas 20 y 21 se transcriben como enlaces o
  texto. Los títulos de herramientas (GNU Ferret, DBDesigner4, LEFT CASE, Studio
  CASE, ER CASE) son líneas de texto en el original y se mantienen como
  párrafos.
- Figuras: los 23 diagramas vectoriales se recortaron de las páginas con
  PyMuPDF4LLM a 150 dpi, más la tabla de símbolos; el diagrama de Contratos se
  recortó de nuevo con `pdftoppm` para excluir una línea de texto contigua. Las
  cinco capturas de herramientas de las páginas 20 y 21 son los JPEG incrustados
  extraídos sin recomprimir con `pdfimages`. Las cinco figuras de página
  completa anteriores (`u3-agregacion`, `u3-instancia-trabaja-en`,
  `u3-instancia-trabaja-en3`, `u3-proceso-diseno-bd` y `u3-resumen-simbolos`) se
  reemplazan, con el mismo nombre, por recortes de cada diagrama. Los emblemas
  de la UTN reutilizan `u1-utn-portada.png` y `u1-utn-encabezado.png`; el
  emblema de la portada del apunte es idéntico byte a byte.
- Las 6 páginas del borrador se renderizaron a 110 dpi como PNG completos. Su
  capa de texto vectorial confirmó la ortografía de cada nota amarilla, que se
  transcribe sin cambios; las etiquetas de los diagramas quedan en las imágenes.
  Las etiquetas de la imagen PNG, que no tiene capa de texto, se leyeron sobre
  la imagen y se contrastaron con una vista ampliada.

### Controles de fidelidad y formato

- Los cuatro archivos Markdown pasaron `mdformat` con las extensiones `gfm` y
  `myst`, y `markdownlint-cli2` con la configuración compartida de
  transcripción. KaTeX 0.19.0 renderizó las 10 expresiones matemáticas del
  apunte (1 bloque `math` y 9 en línea). Se verificaron los enlaces y medios
  relativos.

### Conteo de contenido

| Fuente | Ejercicios o preguntas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Apunte `Unidad_II.pdf` | 0 ejercicios | 1 índice de 19 entradas adaptado a tabla y 1 tabla de símbolos de 14 filas, conservada como imagen y con su significado transcrito | 23 diagramas vectoriales, 1 imagen de la tabla de símbolos, 5 capturas de herramientas y 2 emblemas; 7 referencias bibliográficas; 0 anexos |
| Guía `Guia de TP 2018 - Unidad 2.pdf` | 11 ejercicios y 11 subítems con letra, sin resolver | 0 | 2 figuras (ejercicios 9 y 10); 0 anexos |
| Borrador `Guia TP Hecha(borrador).pdf` | 14 notas amarillas: 8 con texto y 6 vacías o sin texto | 0 | 12 diagramas E-R en 6 páginas; 0 anexos |
| `Ejercicio 4 y 4-b).png` | 0 | 0 | 2 diagramas E-R; 0 anexos |

## Erratas conservadas y pendientes del lote de Modelado de Datos

- La portada del apunte dice «Unidad 3», su índice «Unidad III» y el programa
  2018 «Unidad II». Los metadatos del apunte y de la guía conservan el título
  residual «EL TAD COLA».
- Se conservan, entre otras, «cuanta de cliente», «Puestos que estos conceptos»
  y «pude servir» (apunte, páginas 4–5), «Navate» (nota de la página 4),
  «etributo» (página 12), «SOLASPA» y «lengan» (página 13), «sume» (página 16),
  «puede financiar puede financiar» (página 18) y «Prentice may» (bibliografía).
  El apunte usa `Trabaja_en`, «Trabaja-en» y, en una leyenda de figura,
  «Trabajo_en4»; también «idpóliza» en el texto y `idpoliza` en las figuras.
  Falta el paréntesis de cierre en el ejemplo de atributos compuestos de la
  página 5.
- La figura «Ejemplar de conjunto de relaciones Dirige» (página 9) es idéntica a
  la del ejemplar de Trabaja_en de la página 7: sus rótulos dicen TRABAJA_EN y
  «Varias a Varias», aunque la leyenda dice Dirige. Se conserva tal cual; su
  corrección sería un cambio de contenido.
- Borrador y PNG: se conservan «fotmato», «direcció», «nombr_cliente»,
  «dirrección_cliente» y «aidentificación». No se verificó la corrección
  conceptual de los diagramas, que son una resolución de estudiante, y las notas
  vacías no se completan.
- Ninguna parte quedó ilegible. Queda por decidir la renumeración de las
  carpetas de unidades; se registró como decisión pendiente en la cola de
  transcripción del espacio de trabajo.

## Lote 2026-11-21: Almacenamiento de registros

Revisión realizada el 2026-11-21 en la rama
`claude/transcribir-gestion-de-datos-almacenamiento-de-registros`. Fuente
canónica local: la misma carpeta de OneDrive de las secciones anteriores.
Alcance: el apunte y la presentación de «Unidad 2: Almacenamiento de Registros y
organización de ficheros primarios». Los originales se materializaron con el
preflight en un directorio temporal nuevo, con SHA-256 y lectura completa
verificados. No se modificó ni se incorporó ningún original a Git.

### Numeración de la fuente

La portada del apunte y la primera diapositiva dicen «Unidad 2». El programa
2018 del curso (`PROGRAMA 2018.pdf`) y los nombres de archivo dicen «Unidad VI –
Almacenamiento de Registros y organización de ficheros Primarios», y el README
recuperado se llamaba `unidad-II`. Se conserva cada rótulo como está impreso. El
README `unidad-II/README.md` era una versión previa no verificada y se reemplaza
por el texto íntegro; como el validador exige nombres publicados en minúsculas y
en kebab-case, la nota se publica como
`notes/2018/teoria/almacenamiento-de-registros-apunte.md` y se elimina la
carpeta `unidad-II`. La renumeración de las carpetas de unidades sigue como
decisión pendiente en la cola de transcripción.

### Originales transcritos

#### Unidad VI.pdf

- Ruta dentro de OneDrive: `2018/Unidad VI.pdf`.
- Paginación: 11 páginas A4 (portada, índice y 9 de contenido).
- Autoría y año: Ing. Carolina Orcola en los metadatos; los pies de página dicen
  «Ing. Juan Carlos Fernandez — Año 2010». Metadatos: creado el 2010-03-09 con
  freepdfconvert.com; su título residual es «Introducción a TAD».
- Tamaño materializado: 372712 bytes.
- SHA-256:

```text
a339024b9393f61d7761035c24cbc9a77a07ac73d281d7cb699cdf6b7bfe5c93
```

- Transcripción:
  [notes/2018/teoria/almacenamiento-de-registros-apunte.md](../../notes/2018/teoria/almacenamiento-de-registros-apunte.md).

#### PPT Unidad VI.pdf

- Ruta dentro de OneDrive: `2018/PPT Unidad VI.pdf`.
- Paginación: 36 diapositivas de 720 × 540 pt.
- Autoría y año: Carolina en los metadatos; creado el 2011-06-27 y modificado el
  2012-03-05 con OpenOffice.org Impress 3.2. Su título residual es «Unidad I:
  Introducción».
- Tamaño materializado: 369583 bytes.
- SHA-256:

```text
8f8d2aa592b0aa8250762638956773dd60046bc6f752436a45da403f41ea2b2e
```

- Transcripción:
  [notes/2018/teoria/almacenamiento-de-registros-presentacion.md](../../notes/2018/teoria/almacenamiento-de-registros-presentacion.md).

### Duplicados y relacionados no incluidos

- `2018/Apunte Teorico Gestion de Datos/Unidad_VI.pdf` es un duplicado exacto de
  `2018/Unidad VI.pdf`: 372712 bytes y el mismo SHA-256 de arriba. Se transcribe
  una sola vez.
- La presentación y el apunte tratan los mismos temas, pero no son copias: el
  apunte desarrolla en texto continuo lo que la presentación resume (valores
  típicos de D, C y H, las alternativas 2 y 3 de entradas de datos, la búsqueda
  binaria sobre el fichero índice) y la presentación agrega cinco figuras de un
  libro (7.1 a 7.5), el diagrama del fichero hasheado (diapositiva 20) y los
  diagramas de la estructura y la ubicación de bloques de ISAM y del árbol B+.
  Se conservan como documentos separados.

### Contenido del README anterior que no figura en los originales

El README `unidad-II` reemplazado resumía el apunte y agregaba material ausente
de `Unidad VI.pdf` y de su presentación. No se conservó nada de eso en la nueva
transcripción:

- Párrafos propios sobre discos magnéticos («acceso aleatorio», «bloques o
  páginas») y sobre RAID. El apunte solo incluye los títulos «Dispositivos de
  almacenamiento secundario» y «Acceso paralelo al disco mediante el uso de
  tecnologías RAID», sin texto; así queda indicado en la nota.
- Una sección «Bibliografía» de tres entradas. El apunte no tiene bibliografía.
- Aclaraciones ajenas al texto («el costo es proporcional a la altura del
  árbol», «a diferencia de ISAM…», el desarrollo de
  `Búsqueda con selección de rango` como `campo ∈ [a, b]` y la lista de índices
  sobre `<edad, sal>`, `<sal, edad>`, `<edad>` y `<sal>`).
- Las cinco imágenes `u2-*` anteriores eran páginas completas; se reemplazaron
  por recortes de cada figura.

### Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2 sin OCR, con medios referenciados, encabezados y pies;
  contraste con Poppler 26.11.0 (`pdftotext`, `pdftoppm`, `pdfimages`). Se
  revisaron visualmente las **11 páginas del apunte** y las **36 diapositivas**:
  47 páginas originales.
- El texto de la capa PDF se contrastó con cada nota mediante una comparación
  palabra por palabra de todo el documento. Las únicas diferencias son los
  títulos y notas editoriales de la transcripción, las etiquetas de las figuras
  (que están dentro de las imágenes), la numeración de la lista de alternativas
  (1–3 en el original, normalizada por Markdown) y la matemática reescrita en
  LaTeX. No faltan palabras en el apunte ni en la presentación.
- La extracción automática del apunte no perdió texto. En las diapositivas dejó
  viñetas duplicadas («•» además de la viñeta del original), títulos de
  diapositiva convertidos en viñetas y las etiquetas de los diagramas como
  «picture text»; se repararon con evidencia de las páginas renderizadas.
- Figuras del apunte: los 6 diagramas vectoriales se recortaron de las páginas
  con `pdftoppm` a 150 dpi, uno por archivo. El emblema de la portada y el del
  encabezado están formados por tiras de 1 píxel de alto incrustadas en línea
  (el PDF se generó con freepdfconvert.com), de modo que no existe una imagen
  original que extraer: se recortaron de la página renderizada y reemplazan a
  `u1-utn-portada.png` y `u1-utn-encabezado.png` en esta nota.
- Figuras de la presentación: las 5 figuras de las diapositivas 4, 11, 12, 14 y
  15 son JPEG incrustados y se extrajeron sin recomprimir con `pdfimages -j`
  (`diapositiva-04.jpg`, `-11`, `-12`, `-14`, `-15`; están en inglés y llevan su
  numeración «Figure 7.1» a «Figure 7.5»). Los 10 diagramas vectoriales de las
  diapositivas 20, 23, 24, 26, 29, 30, 31, 33, 35 y 36 se recortaron con
  `pdftoppm` a 150 dpi, y el encabezado institucional se recortó de la primera
  diapositiva.

### Controles de fidelidad y formato

- Las dos notas pasaron `mdformat` con las extensiones `gfm` y `myst`,
  `markdownlint-cli2` con la configuración compartida de transcripción y
  `check.py --base origin/main`. KaTeX 0.19.0 renderizó las 4 expresiones
  matemáticas (2 en el apunte y 2 en la presentación, todas de la tabla de
  costos). Se verificaron los enlaces y medios relativos.

### Conteo de contenido

| Fuente | Ejercicios o preguntas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Apunte `Unidad VI.pdf` | 0 ejercicios | 1 índice de 17 entradas adaptado a tabla y 1 tabla de costos de 3 filas × 6 columnas | 6 diagramas vectoriales, 1 emblema de portada y 1 emblema repetido en el encabezado de las páginas 2–11; 0 referencias bibliográficas; 0 anexos |
| Presentación `PPT Unidad VI.pdf` | 0 ejercicios | 1 tabla de costos (diapositiva 18) | 15 diapositivas con figura (5 JPEG de libro y 10 diagramas vectoriales) y 1 encabezado institucional repetido; 0 anexos |

## Erratas conservadas y pendientes del lote de Almacenamiento de registros

- Apunte, página 3: el apunte dice que el almacenamiento secundario ofrece
  «acceso más lento a los datos que los dispositivos de almacenamiento
  secundario» (la diapositiva 3 repite la frase). Se conserva sin corregir.
- Se conservan «gigabaytes» y «mas barato» (apunte página 3 y diapositiva 6),
  «comprar el valor de un campo» (apunte página 6; la diapositiva 16 dice
  «comparar») y «deben ser llevadas del disco al búfer» (apunte página 6 y
  diapositiva 17).
- Figuras: «dentradas de datos» (apunte página 8 y diapositivas 23 y 24),
  «Sáchez» en el índice disperso de la diapositiva 26 (el apunte dice «Sánchez»
  en la misma figura), «Conjujnto secuencia» (diapositiva 35), «desboradamiento»
  (diapositiva 33; la diapositiva 31 dice «desbordamiento») y «Indice» sin tilde
  en las figuras de claves compuestas.
- Los títulos «Dispositivos de almacenamiento secundario» y «Acceso paralelo al
  disco mediante el uso de tecnologías RAID» no tienen texto en el apunte
  (página 4); la presentación tampoco los desarrolla. Se señala sin
  completarlos.
- La tabla de costos del apunte empieza en la página 7, pero su introducción
  está al final de la página 6; se conserva en la página donde figura la tabla.
- En la diapositiva 9, el título de tres líneas se superpone con la primera
  viñeta; en la diapositiva 4 el título está separado de su figura. Se conservan
  los rótulos tal cual.
- Pendiente externo: las figuras de las diapositivas 4, 11, 12, 14 y 15 llevan
  la numeración «Figure 7.1» a «Figure 7.5» de un libro sin cita en la
  diapositiva; se registró como decisión pendiente en la cola de transcripción
  del espacio de trabajo, junto con el origen de la bibliografía del README
  anterior.

## Lote 2026-11-22: Modelo Relacional

Revisión realizada el 2026-11-22 en la rama
`claude/transcribir-gestion-de-datos-modelo-relacional`. Fuente canónica local:
la misma carpeta de OneDrive de las secciones anteriores. Alcance: el apunte,
las dos presentaciones y la guía de trabajos prácticos de «Unidad 3: El Modelo
Relacional» (107 páginas). Los originales se materializaron con el preflight en
un directorio temporal nuevo, con SHA-256 y lectura completa verificados (los
tres DOCX y `Unidad_III_ppt.pdf`, también materializados para el inventario, no
se transcriben en este lote). No se modificó ni se incorporó ningún original a
Git.

### Numeración de la fuente

La portada del apunte y de la guía dicen «Unidad 3»; el índice del apunte y el
título de su primera sección dicen «Unidad IV: El Modelo Relacional», la primera
diapositiva dice «UNIDAD 3: EL MODELO RELACIONAL» y el programa numera el tema
según su propia secuencia. Se conserva cada rótulo como está impreso. El README
`unidad-IV/README.md` del repo era una versión previa no verificada del apunte y
se reemplaza por el texto íntegro; como el validador exige nombres publicados en
minúsculas y en kebab-case, la nota se publica como
`notes/2018/teoria/modelo-relacional-apunte.md` y se elimina la carpeta
`unidad-IV`. La renumeración de las carpetas restantes sigue como decisión
pendiente en la cola de transcripción.

### Originales transcritos

#### Unidad_III_Apunte.pdf

- Ruta dentro de OneDrive: `2018/Unidad_III_Apunte.pdf`.
- Paginación: 32 páginas.
- Autoría y año: Ing. Carolina Orcola; Año 2012 en el pie de página. Metadatos:
  Microsoft Word 2007, creado el 2013-04-13; su título residual es «EL TAD
  COLA».
- Tamaño materializado: 763543 bytes.
- SHA-256:

```text
57da8a4bb607b48c0c2a553ff51d8d324caf9bfe0a50a7fc91282cd66976a20e
```

- Transcripción:
  [notes/2018/teoria/modelo-relacional-apunte.md](../../notes/2018/teoria/modelo-relacional-apunte.md).

#### Presentación Unidad III.pdf

- Ruta dentro de OneDrive: `2018/Presentación Unidad III.pdf`.
- Paginación: 43 diapositivas de 720 × 540 pt.
- Autoría y año: autor «andres» en los metadatos; PowerPoint 2007, creado el
  2016-04-12; título residual «MODELO DE ENTIDAD RELACION». La portada dice
  «UNIDAD 3: EL MODELO RELACIONAL».
- Tamaño materializado: 728887 bytes.
- SHA-256:

```text
5479ce0018e2714cd299653a2185fe74b752c7ff8a306b44a110d2929a8b7ed0
```

- Transcripción:
  [notes/2018/teoria/modelo-relacional-presentacion.md](../../notes/2018/teoria/modelo-relacional-presentacion.md).

#### Presentación Unidad III - Normalización.pdf

- Ruta dentro de OneDrive: `2018/Presentación Unidad III - Normalización.pdf`.
- Paginación: 29 diapositivas de 720 × 540 pt, sin portada.
- Autoría y año: autor «andres»; PowerPoint 2007, creado el 2016-04-12; el mismo
  título residual «MODELO DE ENTIDAD RELACION».
- Tamaño materializado: 440748 bytes.
- SHA-256:

```text
a4e0b1a6012e92877526bb83b89baf673d064c5db569f27fe84d6f520fdd8bfa
```

- Transcripción:
  [notes/2018/teoria/normalizacion-presentacion.md](../../notes/2018/teoria/normalizacion-presentacion.md).

#### Guia de TP 2018 - Unidad 3.pdf

- Ruta dentro de OneDrive: `2018/Guia de TP 2018 - Unidad 3.pdf`.
- Paginación: 3 páginas (portada y 2 páginas de enunciados, una con figura).
- Autoría y año: Ing. Carolina Orcola, Ing. Luis Eiman y Juan Carlos Fernández;
  Año 2018. Metadatos: LibreOffice 5.1, creado el 2018-04-09; título residual
  «EL TAD COLA».
- Tamaño materializado: 163207 bytes.
- SHA-256:

```text
535e16b15e6667797ecfb0e015a44b804067fc0a93ec0e9fe6d4bf8b24c5a8c9
```

- Transcripción:
  [notes/2018/practica/modelo-relacional-guia-de-tp.md](../../notes/2018/practica/modelo-relacional-guia-de-tp.md).

### Duplicados y relacionados no incluidos

- `2018/Apunte Teorico Gestion de Datos/Unidad_III_Apunte.pdf` es un duplicado
  exacto de `2018/Unidad_III_Apunte.pdf` (763543 bytes y el mismo SHA-256 de
  arriba). Se transcribe una sola vez.
- `Unidad_III_ppt.pdf` (68 diapositivas, SHA-256
  `373abbb3f0234f01570811028177286cc6ceb33c67d08f8107aaf696ba2514e8`) es de
  «Unidad III: Modelo de Entidad Relación» y va con el apunte de Modelado de
  Datos; queda para un lote propio.
- `Unidad 3 - ENTREGA G4.docx` (SHA-256
  `e620b42f3ecc60a244e993b8bc0c74e919994fffb0c1326d9c23686d62e34ecb`),
  `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO .docx` (`8e2b8a72…`) y
  `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO por Vic.docx` (`121d6504…`) son
  resoluciones de estudiantes del grupo 4; quedan para un lote propio mientras
  se confirma su atribución.

### Contenido del README anterior que no figura en los originales

El README `unidad-IV` reemplazado resumía el apunte y agregaba material ausente
de `Unidad_III_Apunte.pdf` y de las presentaciones. No se conservó nada de eso
en la nueva transcripción:

- Ejemplos propios con otro esquema (`Alumnos(nombre, edad, nota)`,
  `Matriculados(nombre, cid, …)`, `Departamentos(…, dni_jefe, …)`,
  `Empleados_jerarquia`, `Empleados_temp` con `dni CHAR(11)`) en lugar de los
  esquemas del apunte (`ide`, `idalum`, `idd`, `dni CHAR(10)`).
- Explicaciones y listas sin correspondencia en el apunte: la opción
  `NO ACTION / RESTRICT`, la declaración de clave primaria en línea, la
  inserción de dos tuplas con referencia mutua, la consulta de ejemplo con
  `LIKE '%iguel'`, la consulta con `INNER_JOIN` y la descripción de LDD y LMD.
- Dos tablas comparativas de SGBD (descripción y tipo) en lugar de los párrafos
  del apunte, y una «Bibliografía» reescrita.
- Las ocho imágenes `u4-*` anteriores eran páginas completas; se reemplazaron
  por recortes de cada figura y se eliminaron.

### Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2 sin OCR, con medios referenciados, encabezados y pies;
  contraste con Poppler (`pdftotext -raw` y `-layout`, `pdftoppm`) y con la
  representación gráfica de cada página y diapositiva. Se revisaron **las 32
  páginas del apunte**, **las 43 y las 29 diapositivas** y **las 3 páginas de la
  guía**: 107 páginas originales.
- El texto de la capa PDF se contrastó con cada nota mediante una comparación
  palabra por palabra de cada página y diapositiva. Las únicas diferencias son
  los títulos y notas editoriales de la transcripción, las etiquetas de las
  figuras (que están dentro de las imágenes), las sentencias SQL movidas de una
  página a la siguiente cuando el original las corta, la numeración de las
  listas y la matemática reescrita en LaTeX. No faltan palabras en ninguna nota.
- Reparaciones demostradas con las páginas renderizadas: la extracción asignó un
  carácter de fuente privada al signo ∈ de la fórmula de la página 4 del apunte
  (U+F0CE) y a las viñetas ✓ de las páginas 11 y 14 (U+F0FC); se restauraron
  como signo y como elementos de lista. PyMuPDF4LLM unió «Transact-SQL» y
  «MS-DOS» al cortar la línea (páginas 23 del apunte) y «sencilla-» con
  «información» (página 31); se restauraron los guiones. En las diapositivas 16,
  17 y 18 el texto y las figuras se superponen en el original y la extracción
  mezcló columnas; se rehízo el orden con `pdftotext -raw`.
- Las sentencias SQL del apunte y de las diapositivas se conservaron en bloques
  de código con una cláusula o columna por línea, como en las páginas
  renderizadas; solo cambian los espacios de alineación.
- Figuras del apunte: los 9 diagramas y los 19 logotipos de las páginas 25 a 29
  son imágenes o diagramas incrustados y se extrajeron con PyMuPDF4LLM sin
  recomprimir; la tabla anotada de la página 4 y la entidad Empleados con su
  ejemplar de la página 13 se recortaron de la página a 150 dpi. Los emblemas de
  la UTN del apunte son idénticos byte a byte a `u1-utn-portada.png` y
  `u1-utn-encabezado.png`; el de la guía es la misma imagen recodificada y
  reutiliza esos mismos archivos.
- Figuras de las presentaciones: las tablas y el diagrama raster de las
  diapositivas 10, 16, 18 y 30 (presentación del Modelo Relacional) y de las 5,
  19–21, 23–24 y 26–28 (Normalización) se extrajeron sin recomprimir; los
  diagramas ER vectoriales y las diapositivas 4, 25, 28 y 43 se recortaron de la
  diapositiva a 150 dpi, por lo que conservan restos de la plantilla de círculos
  en algunos bordes. Las diapositivas 19 a 21 de Normalización son imágenes
  completas sin capa de texto: su texto y sus tablas se transcribieron de la
  imagen y se contrastaron con OCR de Tesseract en español (solo comprobación,
  no fuente), y las tablas de las diapositivas 23, 24 y 26–28 se transcribieron
  de la imagen con la misma comprobación.

### Controles de fidelidad y formato

- Las cuatro notas pasaron `mdformat` con las extensiones `gfm` y `myst`,
  `markdownlint-cli2` con la configuración compartida de transcripción y
  `check.py --base origin/main`. El apunte contiene 6 expresiones matemáticas (5
  en línea y 1 bloque `math`), todas de la página 4; las demás notas no tienen
  matemática. Se verificaron los enlaces y medios relativos.

### Conteo de contenido

| Fuente | Ejercicios o preguntas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Apunte `Unidad_III_Apunte.pdf` | 0 ejercicios | 1 índice de 25 entradas adaptado a tabla, la tabla Relación/Tabla/Archivo, el ejemplar A1 (6 filas), el ejemplar A2 (6 filas), el ejemplar de Empleados (3 filas), 2 resultados de consulta (2 filas) y la cronología de SQL (7 filas) | 9 diagramas y figuras, 2 recortes con etiquetas, 19 logotipos, 1 emblema de portada y 1 repetido en el encabezado de las páginas 2–32; 30 bloques SQL; 7 referencias bibliográficas |
| Presentación `Presentación Unidad III.pdf` | 0 ejercicios | 5 (diapositivas 4, 5, 6, 9 y 16) | 18 figuras en 17 diapositivas; 33 bloques SQL |
| Presentación `Presentación Unidad III - Normalización.pdf` | 0 ejercicios | 21 tablas de datos (1FN a 5FN) | 12 figuras en 11 diapositivas |
| Guía `Guia de TP 2018 - Unidad 3.pdf` | 10 ejercicios (con 7 subapartados), sin resolver | 1 (instancia de Alumnos, 6 filas) | 1 figura raster; 0 anexos |

## Erratas conservadas y pendientes del lote de Modelo Relacional

- Apunte: «FoxBse» (página 3), «jumenez@inf» y «grcia@musica» en el ejemplar A1
  (página 4; la figura de la página 8 dice «jimenez@inf» en la misma fila),
  «usuarios es el campo 3» (página 4; el atributo es `usuario`), «Para elimina»
  (página 6), «Trbaja_en2» (página 14), «Dept_Emp» por Dept_Enc (página 17),
  «tota es simétrico» (página 17), «Empledos» (página 19), «Aumnos» en una
  sentencia `CREATE TABLE` (página 12) y «JSPN», «Protobug», «OAP» y «CML» en la
  sección de motores de bases de datos.
- Apunte: el ejemplar A1 numera «52688» a la segunda fila Sánchez, pero el texto
  y A2 usan «53688» (páginas 4, 5, 6); A2 cambia «53832» por «53131» (página 6);
  el resultado de la consulta de la página 12 muestra notas 7,2 y 8,0 donde A1
  tiene 3,6 y 4,0; el texto de la página 10 dice «Matriculados. ide» donde
  corresponde `idalum`.
- Apunte, página 25: el párrafo de MongoDB contiene un comentario del autor
  entre paréntesis («creo que esto se refiere a que no es una base de datos
  relacional convencional, aunque no estoy del todo seguro»). Se conserva sin
  corregir.
- Apunte, páginas 23 y 24: varios párrafos de los motores comerciales traen
  espacios omitidos tras el punto (por ejemplo «Corporation.Se considera»); se
  conservan.
- Presentación del Modelo Relacional: «Desarrolado» y «Languaje» (diapositiva
  8), «mas de 18 años» con `A.edad = 18` (diapositiva 9), «Estudiantes» por
  Alumnos (diapositiva 12), «inconsistenta» (15), «restricció» (17), «calve
  foráneo» (20), «completada la transacción» (24), «coincie» (29), «Dirije»
  (32). Las diapositivas 4 y 6 rotulan la columna «usuari».
- Presentación del Modelo Relacional: en las diapositivas 16, 17 y 18 el texto y
  las figuras se superponen en el original; la diapositiva 19 escribe `ida`
  donde corresponde `idalum`. Se conservan.
- Normalización: «insactifactorios» (diapositiva 6), «reación» (8), «LegAl» (13)
  y «LegAlumnos» (16 y 17).
- Guía de TP: el ejercicio 8 usa «pct time» con espacio; el apartado 2 del
  ejercicio 8 empieza en la página 3. Se conservan.
- Pendiente externo: los 19 logotipos de motores de bases de datos de las
  páginas 25 a 29 del apunte son imágenes de terceros sin cita; se registró como
  decisión pendiente en la cola de transcripción del espacio de trabajo. La
  atribución de las tres resoluciones de estudiantes sigue pendiente.

## Lote 2026-11-23: Modelado de Datos (presentación)

Revisión realizada el 2026-11-23 en la rama
`claude/transcribir-gestion-de-datos-modelado-presentacion`. Fuente canónica
local: la misma carpeta de OneDrive de las secciones anteriores. Alcance: la
presentación de «Unidad III: Modelo de Entidad Relación» (68 diapositivas), que
va con el apunte de Modelado de Datos. El original se materializó con el
preflight en un directorio temporal nuevo, con SHA-256 y lectura completa
verificados. No se modificó ni se incorporó ningún original a Git.

### Numeración de la fuente

La portada dice «Unidad III: MODELO DE ENTIDAD RELACION», mientras que los
metadatos del PDF dicen «Unidad I: Introducción»; el programa 2018 numera el
tema como Unidad II y el apunte de la misma carpeta imprime «Unidad 3» y «Unidad
III». Se conserva cada rótulo. La nota se publica como
`notes/2018/teoria/modelado-de-datos-presentacion.md` y el apunte
`modelado-de-datos-apunte.md` suma un enlace a ella en su lista de material
complementario.

### Originales transcritos

#### Unidad_III_ppt.pdf

- Ruta dentro de OneDrive: `2018/Unidad_III_ppt.pdf`.
- Paginación: 68 diapositivas de 720 × 540 pt.
- Autoría y año: autora «Carolina» en los metadatos; Microsoft PowerPoint 2007,
  creado el 2012-03-11; título residual «Unidad I: Introducción». La última
  diapositiva da el sitio de la cátedra (`sites.google.com/site/utnfrregd/`) y
  un correo electrónico de contacto.
- Tamaño materializado: 896700 bytes.
- SHA-256:

```text
373abbb3f0234f01570811028177286cc6ceb33c67d08f8107aaf696ba2514e8
```

- Transcripción:
  [notes/2018/teoria/modelado-de-datos-presentacion.md](../../notes/2018/teoria/modelado-de-datos-presentacion.md).
  Las 47 figuras están en `resources/2018/modelado-de-datos-presentacion/`.

### Duplicados y relacionados no incluidos

- No hay copia de `Unidad_III_ppt.pdf` en
  `2018/Apunte Teorico Gestion de Datos/` (se comprobó el SHA-256 de sus seis
  PDF).
- El apunte `Unidad_II.pdf` (Año 2011), la guía de TP y las resoluciones de
  Lucidchart se transcribieron en el lote del 2026-11-20 y no cambian.
- Las tres resoluciones DOCX del grupo 4 (`Unidad 3 - ENTREGA G4.docx` y las dos
  `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO …docx`) siguen pendientes en su propio
  lote.

### Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2 sin OCR, con separadores de página y medios
  referenciados; contraste con Poppler 26.11.0 (`pdftotext -raw` y `-layout`,
  `pdftoppm`, `pdfimages`) y con PyMuPDF 1.28.2 para las posiciones de texto y
  dibujos. Se revisaron visualmente las **68 diapositivas** (hojas de contacto
  de cuatro diapositivas a 100 dpi) y cada una de las **47 figuras** recortadas.
- El texto se contrastó palabra por palabra por diapositiva contra la capa de
  texto del PDF. Las 22 diapositivas de solo texto coinciden sin diferencias,
  salvo la numeración de la diapositiva 55, el guion de «*n*-arias» de la 16 y
  el correo de la 68. En las 46 diapositivas con figura, el texto fuera de la
  figura coincide; las únicas palabras de la capa de texto que no están en el
  cuerpo son los rótulos de los diagramas (entidades, atributos, relaciones y
  valores de los ejemplares), que se leen en las imágenes y se resumen en su
  texto alternativo. Las anotaciones y pies de figura de las diapositivas 23,
  24, 26 y 63–66 se repiten debajo de ellas.
- Reparaciones demostradas con las páginas renderizadas: la extracción asignó
  caracteres de fuentes privadas (U+F0FC) a las viñetas ✓ de 12 diapositivas (29
  elementos); se restauraron como ✓ en lista. En las diapositivas 2 y 68 el
  orden de lectura de la capa de texto no es el visual («Qué es?» y «Qué
  conceptos?»; correo y sitio); se siguió la disposición de la diapositiva. La
  extracción omitió los diagramas de las diapositivas 7, 11, 33 y 44, partió en
  varios recortes los de las diapositivas 17 y 58 y entregó las diapositivas 15,
  18, 23, 26, 39, 56, 62 y 65 completas, con el encabezado; por eso todas las
  figuras se rehicieron con recortes uniformes.
- Figuras: 46 recortes de las diapositivas, renderizados a 150 dpi con PyMuPDF a
  partir de las coordenadas del propio PDF, y el JPEG incrustado de la
  diapositiva 21, extraído sin recomprimir con `pdfimages`. Cada recorte excluye
  el encabezado de la plantilla y el título, y conserva el fondo azul; en las
  diapositivas 32, 36, 37, 56 y 65 se quitó, en una copia temporal del PDF, el
  texto vecino (título o párrafo contiguo) antes de renderizar, sin tocar el
  original. La diapositiva 32 tiene además flechas azules decorativas junto a
  «Especialización» y «Generalización», descritas en la nota.
- La diapositiva 68 enlaza un correo electrónico (`mailto:`) de contacto de la
  docente. Esa dirección personal no se publicó en la nota; consta como decisión
  pendiente en la cola de transcripción.

### Controles de fidelidad y formato

- Las dos notas modificadas pasaron `mdformat` con las extensiones `gfm` y
  `myst`, `markdownlint-cli2` con la configuración compartida de transcripción y
  `check.py --base origin/main`. La presentación no contiene matemática (0
  expresiones). Se verificaron los enlaces y medios relativos: 47 imágenes.

### Conteo de contenido

| Fuente | Ejercicios o preguntas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Presentación `Unidad_III_ppt.pdf` | 2 consignas abiertas (diapositivas 12 y 54), sin resolver; 7 pasos de resolución del ejemplo en las diapositivas 55–66, transcritos como están | 0 | 47 figuras en 46 diapositivas (46 diagramas y la imagen de correspondencias de la 21); 22 diapositivas de solo texto; 0 anexos |

## Erratas conservadas y pendientes del lote de la presentación de Modelado de Datos

- Diapositiva 1: «RELACION» sin tilde. Diapositiva 8: «una cuanta de cliente».
  Diapositiva 10: «Todas la entidades». Diapositiva 12: «Definir que dominio» y
  «cual será». Diapositiva 16: «la relacionan a utilizar». Diapositiva 20:
  «asociaciones- ciudadanos». Diapositiva 30: «ID_LNEA» y «LINEAS_FACTURAS».
  Diapositiva 41: «lo atributos no puede ser multivaluados» y «atomicos».
  Diapositivas 42 y 51: «mas». Diapositiva 47: «por lo meno». Diapositiva 53:
  «Relaciones binarios vs. Ternarios». Diapositiva 55: «Pasos posible de usar».
- Figuras: la de la diapositiva 29 rotula «Empleado» a la entidad propietaria
  del ejemplo Préstamo–Pago y escribe «prestamo» sin tilde; las de las
  diapositivas 36 y 37 parten «nombr»/«e» y «presu»/«p», y cortan «presupues»;
  la de la diapositiva 45 une «desde» a Encargados, mientras que el texto lo
  atribuye al conjunto de relaciones entre encargados y departamentos; las de
  las diapositivas 46 y 47 llaman «Dependen» y «Dependiente» a la misma entidad.
  Se conservan sin corregir.
- Las diapositivas 47 y 48 repiten el mismo diagrama; la 36 y la 37, también.
- Pendiente externo: la imagen de correspondencias de la diapositiva 21 (raster
  de 900 × 447 píxeles) y el diagrama del proceso de diseño de las diapositivas
  5 y 7 (el de la 5 reproduce el ya publicado `u3-proceso-diseno-bd.png` del
  apunte) no traen cita de origen; se registró en la cola de transcripción. La
  dirección de correo de la diapositiva 68 también queda pendiente.

## Lote 2026-11-24: resoluciones de estudiantes (Grupo 4)

Revisión realizada el 2026-11-24 en la rama
`claude/transcribir-gestion-de-datos-resoluciones-estudiantes`. Fuente canónica
local: la misma carpeta de OneDrive de las secciones anteriores. Alcance: las
tres resoluciones de estudiantes en DOCX que la cola de transcripción dejó
pendientes: la entrega de la guía de la Unidad 3 y las dos versiones de la guía
nº 4 de álgebra relacional. Los originales se materializaron con el preflight en
un directorio temporal nuevo, con SHA-256 y lectura completa verificados. No se
modificó ni se incorporó ningún original a Git.

### Numeración de la fuente

Los tres archivos son material de estudiantes, no material docente. La entrega
(`Unidad 3 - ENTREGA G4.docx`) responde la guía
[Modelo Relacional](../../notes/2018/practica/modelo-relacional-guia-de-tp.md)
(«Unidad 3: Modelo Relacional»): sus ejercicios 1 a 8 son los de esa guía y los
ejercicios 9 y 10 transforman en esquemas relacionales y en SQL los escenarios
de la guía de Entidad-Relación. Las dos resoluciones de álgebra relacional
llevan en su portada «Guía de Trabajos Prácticos nº4: Algebra Relacional»; el
enunciado de esa guía no forma parte de estos documentos y no se transcribió en
este lote. Se conserva cada rótulo del original.

### Originales transcritos

#### Unidad 3 - ENTREGA G4.docx

- Ruta dentro de OneDrive: `2018/Unidad 3 - ENTREGA G4.docx`.
- Paginación: 16 páginas según los metadatos de Word; no hay vista paginada
  verificada (ver el método).
- Autoría y año: no constan autores ni integrantes en el cuerpo; el nombre del
  archivo indica «G4». Metadatos: Microsoft Office Word 16, creado el 2018-04-23
  22:13 UTC y modificado a las 22:14 UTC por Carlos Eduardo Ferreyra.
- Tamaño materializado: 494245 bytes.
- SHA-256:

```text
e620b42f3ecc60a244e993b8bc0c74e919994fffb0c1326d9c23686d62e34ecb
```

- Transcripción:
  [notes/2018/practica/modelo-relacional-guia-de-tp-entrega-grupo-4.md](../../notes/2018/practica/modelo-relacional-guia-de-tp-entrega-grupo-4.md).
  Los tres medios incrustados están en
  `resources/2018/modelo-relacional-entrega-grupo-4/` (bytes idénticos a los de
  `word/media/` del DOCX):

| Medio en el DOCX | Archivo publicado | SHA-256 |
| -- | -- | -- |
| `word/media/image1.png` (1635 × 2500) | `respuesta-9-4-diagramas-er.png` | `b956bead26334e3eb4f4ffe975544709fadce343488df929092413fe2adf32b7` |
| `word/media/image2.jpg` (780 × 1040) | `respuesta-9-6-diagrama-er-manuscrito.jpg` | `56ab77dad67f37492684e3a061121fb6803a764bdd6c5c7d5dfdf8fe6c3156a6` |
| `word/media/image3.png` (667 × 433) | `respuesta-9-8-diagrama-er-vehiculos.png` | `d3eb984ec7f098bdb4f136efe7fae03a6bc30ec8d4e14fb6531204eb07cd8c1f` |

#### GUIA N° 4- ALGEBRA RELACIONAL RESUELTO .docx

- Ruta dentro de OneDrive: `2018/GUIA N° 4- ALGEBRA RELACIONAL RESUELTO .docx`
  (el nombre termina en un espacio antes de la extensión).
- Paginación: 2 páginas según los metadatos de Word; sin portada.
- Autoría y año: creador y último modificador en los metadatos Carlos Eduardo
  Ferreyra; creado el 2018-05-12 y modificado el 2018-05-19 (revisión 145).
- Tamaño materializado: 18252 bytes.
- SHA-256:

```text
8e2b8a7251455ec71abab0b59ca833e33ac2f366db01d565c69d892a30da69a4
```

- Transcripción:
  [notes/2018/practica/algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-05-19.md](../../notes/2018/practica/algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-05-19.md).

#### GUIA N° 4- ALGEBRA RELACIONAL RESUELTO por Vic.docx

- Ruta dentro de OneDrive:
  `2018/GUIA N° 4- ALGEBRA RELACIONAL RESUELTO por Vic.docx`.
- Paginación: 4 páginas según los metadatos de Word; portada, encabezado y pie
  de página.
- Autoría y año: Grupo 4, Año 2018, con cinco alumnos en la portada y en el pie
  de página; metadatos con creador y último modificador Carlos Eduardo Ferreyra,
  creado el 2018-05-12 y modificado el 2018-06-25 (revisión 142).
- Tamaño materializado: 45866 bytes.
- SHA-256:

```text
121d6504d896da6e80b7055dc301bc5f3e099ed619d086412352982b2fcdf79b
```

- Transcripción:
  [notes/2018/practica/algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-06-25.md](../../notes/2018/practica/algebra-relacional-guia-de-tp-resuelta-grupo-4-2018-06-25.md).
  El único medio incrustado es el emblema de la UTN de la portada
  (`word/media/image1.png`, 300 × 300, SHA-256
  `b3668fc491d89b86ccd91db764733cbef35f294da957e811ac02f815f714a446`), publicado
  como
  `resources/2018/algebra-relacional-guia-resuelta-grupo-4/logo-utn-portada.png`.
  Su texto alternativo en el DOCX es una dirección de `logotypes101.com`.

### Duplicados y relacionados no incluidos

- Se calculó el SHA-256 de los 86 archivos de contenido de la carpeta 2018: los
  tres DOCX no tienen copia exacta en ninguna otra ubicación (los únicos pares
  repetidos son los PDF de `Apunte Teorico Gestion de Datos/` ya registrados).
- Las dos versiones de la guía de álgebra relacional comparten creación
  (2018-05-12 19:42 UTC) y la misma estructura. La de 2018-05-19 no tiene
  portada, deja vacío el ejercicio 1 salvo el texto «Qeipfdwod» y la tabla, y
  termina en una fórmula incompleta del ejercicio 5.4; la de 2018-06-25 agrega
  la portada, el texto del ejercicio 1 y las respuestas 5.4 a 5.11. Las dos se
  publican por separado, nombradas por la fecha de última modificación que
  consta en los metadatos y en OneDrive.
- La figura de `respuesta-9-4-diagramas-er.png` es el mismo dibujo de Lucidchart
  que `er-tp-ejercicio-4-diagramas.png` (lote del 2026-11-20), en menor
  resolución (1635 × 2500 contra 2550 × 3900) y con otros bytes; se conserva la
  copia incrustada en esta entrega.
- El enunciado de la guía nº 4 de álgebra relacional no se identificó en este
  lote. Los PDF de la Unidad IV (`Unidad_IV.pdf`, `EjerciciosUnidad4.pdf`, aún
  no transcritos) son la fuente a revisar en su lote; no se comprobó que lo
  contengan.

### Método y cobertura de la revisión

- DOCX: Pandoc 3.14 (ruta de `AGENTS.md`: DOCX a GFM con medios extraídos) para
  obtener una primera conversión, y un volcado propio del XML del DOCX
  (`word/document.xml`, `numbering.xml`, encabezado y pie), escrito con la
  biblioteca estándar de Python y ejecutado con `python -I`, para comparar:
  texto de cada párrafo, numeración de lista tal como la muestra Word, tablas,
  runs subrayados o en negrita, imágenes y símbolos. Los DOCX no tienen cambios
  rastreados, comentarios, notas ni cuadros de texto.
- Limitación: LibreOffice no está instalado en este equipo
  (`mise exec -- soffice` falla y no hay aplicación en `/Applications`), por lo
  que **no se pudo renderizar el DOCX a páginas ni compararlas visualmente**; el
  número de páginas es el de los metadatos de Word. La verificación sustituta
  fue el volcado estructural del XML y la lectura de cada medio incrustado.
- Comparación palabra por palabra de cada nota contra el texto del DOCX: las
  tres notas coinciden. En la entrega, las únicas diferencias son de marcado
  (escapes de `_` y subrayados que parten una palabra como `i`+`dd_cursado`). En
  las dos de álgebra, el texto fuera de las fórmulas coincide, salvo el
  encabezado y el pie editoriales y los espacios en torno a la flecha.
- Fórmulas: el XML de las ecuaciones (OMML) se imprimió con su estructura
  (subíndices, delimitadores, saltos) y se comparó con el LaTeX publicado: la
  secuencia de identificadores y números y la de operadores (`π`, `σ`, `⋈`, `∪`,
  `∨`, `∧`, `≠`, `=`, `<`, `>`, `-`, `/`, `'`) coinciden en ambas notas. Se
  escribieron con los operadores del original y sin corregir (paréntesis
  desbalanceados, `Catálogo)` con doble cierre y una llave literal en 3.8 de la
  versión de 2018-06-25). `á` se escribió `\acute{a}`. Los apóstrofos de
  `'JuanGarcia'` y `'Boeing'` son superíndices del editor de ecuaciones tras «=»
  y la última letra, y se transcribieron como `'`. El símbolo de asignación de
  5.5 a 5.9 es un carácter de Wingdings (`F0DF`, flecha a la izquierda) y se
  transcribió como `←`.
- Los esquemas, sentencias SQL y respuestas conservan los nombres, tipos y
  restricciones tal como se escribieron. En los bloques SQL se normalizó solo la
  alineación (tabuladores y espacios repetidos entre columna y tipo, y la
  sangría); no se tocaron tokens, comas ni errores.
- Los subrayados de claves primarias siguen los runs subrayados del original,
  incluidos los irregulares (`(legajo`, `i`+`dd_cursado`). Se escriben con
  `<ins>`: el renderizador de GitHub elimina `<u>` (se comprobó con su API) y
  deja la clave sin subrayar, mientras que `<ins>` se conserva. Las notas
  anteriores del repo que usan `<u>` no se modificaron.
- Las listas numeradas del DOCX mezclan numeración automática y escrita a mano.
  Se conservó la numeración visible: p. ej., en la guía de álgebra las
  respuestas 3.4 a 3.12 son una lista de segundo nivel que Word numera «3.4» a
  «3.12», y en la entrega los ejercicios 9 y 10 contienen sublistas que
  reinician en «1.».
- Medios: las cuatro imágenes se leyeron una por una. El dibujo manuscrito del
  ejercicio 9.6 está girado 90° en el DOCX y se publicó sin rotar, con su texto
  alternativo; en su esquina lleva un número encerrado en un círculo (7) que no
  coincide con el rótulo «6.» del documento donde está insertado.

### Controles de fidelidad y formato

- Las tres notas pasaron `mdformat` con las extensiones `gfm` y `myst`,
  `markdownlint-cli2` con la configuración compartida de transcripción y
  `check.py --base origin/main`; se verificaron los enlaces y medios relativos.

### Conteo de contenido

| Fuente | Ejercicios o respuestas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| `Unidad 3 - ENTREGA G4.docx` | Respuestas a los ejercicios 1 a 10; esquemas relacionales de los escenarios 1 a 9 y 10 (banco) en la respuesta 9; 35 sentencias `CREATE TABLE` en 6 bloques SQL (las del ejercicio 8 incluidas); 7 respuestas vacías (9.c, 10.2, 10.3, 10.5 a 10.8) | 0 | 3 imágenes; 0 anexos |
| `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO .docx` | Respuestas 1 a 5.4 (la 2 vacía; la 5.4 incompleta); 20 expresiones | 1 (7 filas de datos) | 0 imágenes |
| `GUIA N° 4- ALGEBRA RELACIONAL RESUELTO por Vic.docx` | Respuestas 1 a 5.11 (la 2 vacía; 5.8, 5.10 y 5.11 declaradas no resolubles en álgebra relacional); 31 expresiones | 1 (7 filas de datos) | 1 emblema de la UTN |

## Erratas conservadas y pendientes del lote de resoluciones de estudiantes

- Entrega: en el ejercicio 1 solo se definen cardinalidad y grado (la guía pide
  cinco términos). En 8.2, `WORKS` repite `pct` y `did`, `DEPT` referencia
  `EMP(id)` y aparece «CASSCADE». En 9.2 los tres esquemas (`Paciente`,
  `Médicos`, `Exámenes`) están vacíos. En 9.4.1, la clave foránea apunta a
  `idd_legajo`; en 9.4.2, «rela», `idd_curso` por `idd_cursado` y «Estudiante»
  por «Estudiantes». En 9.7, «stirng». En 9.8 la restricción `VNN` nombra
  `modelo`, que no es atributo de `VEHÍCULOS`. En 9.9.b, «ISNB», «CARRO\_
  COMPRAS» e «Id\_ carros» con un espacio, y una referencia a `CARROS_COMPRAS`
  mientras la tabla se llama `CARRO_COMPRAS`. En el ejercicio 10: «REFERENCE»,
  «DELATE», «FOREING», «examnes», «NOT ACTION» y un `id_empleados` que no
  existe; «enetero» en el texto de 10).
- Entrega, 9.6: el dibujo manuscrito dice «7» en su esquina y corresponde a las
  entidades de la respuesta 9.7, pero el DOCX lo inserta tras el rótulo «6.». Se
  conservó su posición.
- Álgebra, versión 2018-05-19: el ejercicio 1 trae solo el texto «Qeipfdwod» y
  la tabla; la respuesta 5.4 termina en `⋈` sin segundo operando.
- Álgebra, ambas: «Catálogo)» con paréntesis de más en 3.5 a 3.7; paréntesis de
  apertura sin cierre en 3.10 y 5.3; «mismo que el 4.1» en 4.b (no existe 4.1);
  «Certificaos», «crusingrange» y «Boening» en las respuestas 5.4 y 5.5. Las
  respuestas 3.9 y 3.10 escriben `P(A,Catálogo)` con la letra P; se conservó.
- Pendiente externo (registrado en la cola de transcripción): publicación y
  atribución de las tres resoluciones de estudiantes (la versión «por Vic» lista
  a los cinco integrantes del Grupo 4, igual que el cuestionario de la Unidad
  I); si la versión de 2018-06-25 reemplaza a la de 2018-05-19; el origen del
  emblema de la UTN y del dibujo manuscrito.

## Lote 2026-11-25: Álgebra y Cálculo Relacional (Unidad IV)

Revisión realizada el 2026-11-25 en la rama
`claude/transcribir-gestion-de-datos-unidad-iv`. Fuente canónica local: la misma
carpeta de OneDrive de las secciones anteriores. Alcance: el apunte, la
presentación y la guía de ejercicios de álgebra relacional (53 páginas). Los
originales se materializaron con el preflight en un directorio temporal nuevo,
con SHA-256 y lectura completa verificados. No se modificó ni se incorporó
ningún original a Git.

### Numeración de la fuente

La portada del apunte dice «Unidad 4: Álgebra y Cálculo Relacional», pero su
índice y el título de la primera sección dicen «Unidad V»; la presentación dice
«UNIDAD 4» y `PROGRAMA 2018.pdf` (SHA-256 `a7ebb61d…`) lo numera «Unidad IV –
Algebra Relacional». Se conserva cada rótulo como está impreso. El README
`unidad-V/README.md` del repo era una versión previa no verificada del apunte y
se reemplaza por el texto íntegro; como el validador exige nombres publicados en
minúsculas y en kebab-case, la nota se publica como
`notes/2018/teoria/algebra-y-calculo-relacional-apunte.md` y se elimina la
carpeta `unidad-V`. El programa incluye además en esta unidad «Operaciones del
Álgebra Relacionales Extendida» (proyección generalizada y funciones de
agregación) y «Modificación de la Base de Datos» (borrado, inserción y
actualización): ninguno de los tres originales de este lote desarrolla esos
temas.

### Originales transcritos

#### Unidad_IV.pdf

- Ruta dentro de OneDrive: `2018/Unidad_IV.pdf`.
- Paginación: 19 páginas A4.
- Autoría y año: Ing. Carolina Orcola; Año 2013 en el pie de página. Metadatos:
  Microsoft Office Word 2007, creado el 2014-05-11; su título residual es «EL
  TAD COLA». La bibliografía dice que la mayoría de los contenidos del apunte,
  «con ejemplos y gráficos incluidos», son extraídos del libro de Ramakrishnan y
  Gehrke.
- Tamaño materializado: 635299 bytes.
- SHA-256:

```text
7d5b2eb7b810150edabdd56fd14fe02357aedbe49c3d72ebe5d47335b4f25898
```

- Transcripción:
  [notes/2018/teoria/algebra-y-calculo-relacional-apunte.md](../../notes/2018/teoria/algebra-y-calculo-relacional-apunte.md).

#### Capitulo4.pdf

- Ruta dentro de OneDrive: `2018/Capitulo4.pdf`.
- Paginación: 32 diapositivas de 720 × 540 pt. Pese a su nombre, no es un
  capítulo de libro: es la presentación de la unidad.
- Autoría y año: autor «andres» en los metadatos; Microsoft PowerPoint 2007,
  creado el 2013-05-06; título residual «MODELO DE ENTIDAD RELACION».
- Tamaño materializado: 458286 bytes.
- SHA-256:

```text
a3c1a8aac6902d8e703ab5b28015f1f4c696a6994f52045b3116ff7058ab2862
```

- Transcripción:
  [notes/2018/teoria/algebra-relacional-presentacion.md](../../notes/2018/teoria/algebra-relacional-presentacion.md).

#### EjerciciosUnidad4.pdf

- Ruta dentro de OneDrive: `2018/EjerciciosUnidad4.pdf`.
- Paginación: 2 páginas A4, sin portada.
- Autoría y año: no constan en el contenido. Metadatos: autor «aa»,
  OpenOffice.org 3.2, creado el 2011-05-15; título residual «El Modelo
  Entidad-Relación».
- Tamaño materializado: 81108 bytes.
- SHA-256:

```text
ae97a42ed9cad3fe39529bfac6e65e4a6fd6f73cfd9a772a6b05fcdde40e2d07
```

- Transcripción:
  [notes/2018/practica/algebra-relacional-guia-de-ejercicios.md](../../notes/2018/practica/algebra-relacional-guia-de-ejercicios.md).

### Duplicados y relacionados no incluidos

- `2018/Apunte Teorico Gestion de Datos/Unidad_IV.pdf` es un duplicado exacto de
  `2018/Unidad_IV.pdf` (635299 bytes y el mismo SHA-256 de arriba). Se
  transcribe una sola vez.
- La presentación y el apunte tratan los mismos temas, pero no son copias: la
  presentación trae figuras propias (las dos láminas «Repasamos graficamente»),
  ejemplos de consulta con otra redacción y un resumen; el apunte desarrolla las
  consultas numeradas y el cálculo relacional. Se conservan por separado. La
  figura de división de la diapositiva 19 es, píxel por píxel, la misma de la
  página 10 del apunte y se publica una sola vez.
- `EjerciciosUnidad4.pdf` es el enunciado que quedó sin identificar en el lote
  del 2026-11-24: la numeración de las resoluciones del Grupo 4 (1 a 5, 3.1 a
  3.12, 4.a a 4.e y 5.1 a 5.11) coincide con la suya. El enunciado no lleva el
  número de guía («nº4») que sí figura en la resolución del 2018-06-25. No se
  verificó la corrección de las respuestas.
- `Capitulo5.pdf`, `Capitulo_5-SQL_2.pdf` y `Capitulo 6-SQL.pdf` pertenecen al
  lote de la Unidad V (SQL) y no se transcribieron.

### Contenido del README anterior que no figura en los originales

El README `unidad-V` reemplazado resumía el apunte y agregaba o cambiaba
material que no consta en los tres originales. No se conservó nada de eso:

- La negación `¬` entre los conectores de la selección, la identidad
  `R ∩ S = R − (R − S)`, el conteo `n×m` del producto cartesiano, la frase sobre
  la eficiencia de la reunión condicional y la división expresada con las
  relaciones `T1` y `T2`.
- Una lista de consultas renumerada y con cambios de contenido (por ejemplo,
  «Lubito» donde el apunte dice «López»), y una consulta «C12» sobre el marinero
  de mayor categoría.
- Ejemplos de cálculo relacional de tuplas y de dominios sobre marineros que no
  están en el apunte (salvo la consulta C11 de categoría superior a 7), una
  tabla comparativa de ambos cálculos y la mención a la «completitud
  relacional».
- Una «Bibliografía» reescrita de 3 entradas en lugar de las 7 del apunte.
- Las imágenes `u5-*` eran capturas de páginas completas del apunte; se
  reemplazaron por tablas en Markdown y por la figura de división, y se
  eliminaron las 11 (`u5-division-temp1-temp2.png` ya no estaba enlazada).

### Método y cobertura de la revisión

- PDF: PyMuPDF4LLM 1.28.2 sin OCR como primera conversión, con contraste con
  Poppler (`pdftotext -raw` y `-layout`, `pdftoppm`, `pdfimages`, `pdffonts`).
  En una muestra de tres páginas del apunte, Docling tampoco recuperó los glifos
  de la fuente Symbol, así que no se usó. Las dos extracciones pierden los
  operadores, por lo que todas las fórmulas se reescribieron en LaTeX a partir
  de las páginas renderizadas; negritas y cursivas se tomaron de las fuentes
  declaradas en el PDF (con PyMuPDF). Se revisaron visualmente **las 19 páginas
  del apunte, las 32 diapositivas y las 2 páginas de la guía**: 53 páginas
  originales, con vistas ampliadas de tablas, esquemas y subíndices dudosos.
- El texto de la capa PDF se contrastó con cada nota mediante una comparación
  palabra por palabra de cada página y diapositiva, traduciendo los códigos de
  las fuentes Symbol y Wingdings, y otra de signos de puntuación y paréntesis.
  No faltan palabras. Las diferencias son los títulos y notas editoriales, los
  rótulos de las figuras anotadas, los subíndices separados por la notación
  LaTeX, los glifos de operadores, la numeración automática de las listas, el
  orden de las celdas de tablas contiguas y la llamada de nota ¹. La comparación
  de signos detectó que la consulta C8 abre `“rojo”` con otra comilla que las
  demás; se respetó.
- Las fórmulas de las diapositivas 15, 16, 18 y 24 a 27 y las tablas de las
  diapositivas 15 y 16 son imágenes sin capa de texto: se transcribieron de las
  imágenes incrustadas, extraídas con `pdfimages` y ampliadas al doble. En esas
  fórmulas la comparación automática no aplica; se verificaron a la vista.
- Figuras: los dos emblemas del apunte (distintos de los publicados en lotes
  anteriores) y la figura de división se extrajeron del PDF con PyMuPDF,
  aplicando la máscara de transparencia a los emblemas; las diapositivas 20 y 21
  son las imágenes incrustadas sin recortar. Las cuatro fórmulas anotadas con
  globos (páginas 4 y 5 del apunte y diapositivas 8 y 10) se recortaron a 150
  dpi y además se transcriben en LaTeX; en la página 4 y en la diapositiva 10 se
  quitó el texto vecino en una copia temporal antes de recortar.
- Los subrayados de claves y títulos se escriben con `<ins>`. El resaltado gris
  de la definición de compatibilidad (página 6) se representa como cita. El
  rótulo lateral «Incorrecto» (página 13) se escribe como línea previa a las dos
  expresiones que señala. La nota al pie de la página 17 queda como párrafo
  antes del pie de esa página. En la diapositiva 6 no se conserva la negrita
  aplicada a paréntesis y símbolos sueltos, que GitHub mostraría como
  asteriscos.

### Controles de fidelidad y formato

- Las tres notas pasaron `mdformat` con las extensiones `gfm` y `myst`,
  `markdownlint-cli2` con la configuración compartida de transcripción y
  `check.py --base origin/main`, que valida con KaTeX las 143 expresiones: 96 en
  el apunte (61 bloques y 35 en línea), 40 en la presentación (37 bloques y 3 en
  línea) y 7 en la guía (en línea). El formato no cambió ninguna expresión. Se
  verificaron los enlaces y medios relativos.

### Conteo de contenido

| Fuente | Ejercicios o consultas | Tablas | Figuras y anexos |
| -- | -- | -- | -- |
| Apunte `Unidad_IV.pdf` | 0 ejercicios; 11 consultas de ejemplo (Consulta 1 y C2 a C11), resueltas en el original | 1 índice de 24 entradas adaptado a tabla y 21 tablas de datos | 2 fórmulas anotadas, 1 figura de división, 1 emblema de portada y 1 repetido en el encabezado de las páginas 2–19; 1 nota al pie; 7 referencias bibliográficas; 0 anexos |
| Presentación `Capitulo4.pdf` | 4 consultas de ejemplo con solución (diapositivas 24 a 27) | 16 | 2 fórmulas anotadas y 3 figuras (diapositivas 19 a 21); 0 anexos |
| Guía `EjerciciosUnidad4.pdf` | 5 ejercicios, sin resolver: el 2 con 7 apartados, el 3 con 12 consultas, el 4 con 5 apartados y el 5 con 11 consultas | 0; 2 recuadros de esquemas | 0 figuras; 0 anexos |

## Erratas conservadas y pendientes del lote de Álgebra y Cálculo Relacional

- Apunte: «hacer las consultas más legibles» (página 3); «ide» como clave de
  Marineros (página 3) y «ide=103» (página 11); «pos su nombre» (página 4); «La
  expresión que mostramos de cómo resultado» (página 5); «el orden de los
  campos; el orden de los campos» repetido y «R..» (página 7); el ejemplo
  `ρ(C(1→idm, 5→idm2), …)` frente al esquema con `idm1` (página 8); «ya está
  correspondiente a R» (página 9); «menara», «de9 B», «hay una tupla de A/B» y
  `DEPARTAMENTO` en singular (página 10); «A. se pueden», «Tem1» y un paréntesis
  de más en `ρ(Temp2, Temp1 ⋈ Marineros))` (página 11); «contrarío»,
  «Barcostem», «Se identifica todos», «B1, B2 y M3» y la mención de «(C5)» para
  la consulta de rojos y verdes (página 13); «los ejemplos B1, R2 y M3» y «no se
  pueden emplear nombrem» (página 14); «CALCULO» sin tilde, «CDR» por CRD y
  «Cálculo Relacional» como título repetido (página 16); «sensillo» y «conuslta»
  (página 17); «del dominios» y «cuya únicas» (página 18); «Prentice may»
  (página 19).
- Apunte, página 11: el texto dice que la respuesta de la Consulta 1 es
  (Dominguez), (Horacio) y (López) y agrega «solo uno de ellos ha reservado un
  barco color rojo», aunque la consulta es por el barco 103. Se conserva sin
  corregir.
- Presentación: «manipulacion», «No esta diseñados» (diapositiva 2),
  «definciones», «mas sencilla» (4), «notificacion», «de entrada entrada» (5),
  «la primer relación» (6), «identico», «Composión» (9), «estan» (11), «¿Cúal»
  (12), «Si M1 y R1 tiene» (13), «a la junta visto» (16), «mas eficiente» y la
  relación «Botes» por Barcos (25), «elije» y «a que se quiere obtener» (32). La
  diapositiva 15 rotula «CONDICIÓN DE REUNIÓN» en los dos lados de la igualdad,
  mientras el apunte usa «CONDICIÓN DE SELECCIÓN» a la derecha.
- Guía: «por por» (ejercicio 3, consulta 10) y «esten» (ejercicio 5, consulta
  5). El ejercicio 2 escribe la unión con la letra `U` y la reunión se escribe
  `|x|` en el ejercicio 4. El esquema usa `precio` y las consultas del ejercicio
  4 usan `costo`.
- Pendiente externo (registrado en la cola de transcripción): el apunte declara
  que su contenido proviene mayormente del libro de Ramakrishnan y Gehrke, con
  ejemplos y gráficos incluidos, y la figura de división y las dos láminas
  «Repasamos graficamente» de la presentación no traen cita propia.
