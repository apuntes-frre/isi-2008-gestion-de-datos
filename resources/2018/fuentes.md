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
