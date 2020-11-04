---
author: Dr Andrés Iriarte
draft: false
linktitle: Práctico 5
menu:
  example:
    parent: Prácticos
    weight: 1
title: Práctico 5
type: docs
weight: 1
output:
  prettydoc::html_pretty:
    theme: cayman
    highlight: github
---

## Comandos del paquete Emboss

El objetivo del práctico de hoy es presentarle al estudiante algunas de las
herramientas más útiles del paquete emboss. Como se menciono en el teórico el
paquete es un conjunto de programas principalmente dirigidas al análisis y
procesamiento de secuencias. El práctico presenta 3 actividades, genere 3 directorios,
ACT1, 2 y 3, dentro de PRACT5.

Encontrará en la primera actividad una guía detallada de la línea de comando a
correr en la terminal (rojo). En la segunda actividad no se le dará mucha ayuda y
deberá contestar las preguntas planteadas (violeta). Por último, en la tercera
actividad se le darán mayormente sugerencias para que usted encuentre la solución
(verde) y deberá contestar preguntas. 

> **Nota**:  Recordar que es posible obtener el ayuda para cada
herramienta emboss online o mediante la opción
“comando_emboss --help”

### 1. Actividad: Análisis de genes homólogos
**a. Secuencia de partida:**

Partiremos del archivo “secuencias_ homologas” que se encuentra en el directorio
ACT1, dentro de PRACT5. Este archivo contiene múltiples secuencias codificantes para
proteínas homólogas de cianobacterias. Explore el archivo y conteste: ¿En qué formato
esta el archivo?

**b. Cambio de formato y tipo de letra:**

Transformaremos las secuencia formato fasta utilizando el programa seqret y luego
convertiremos las bases a mayúscula.

```{bash}
seqret <secuencia.input> –osformat fasta <sequencia.output>
seqret <secuencia.input2> –supper1 <sequencia.output2>
```

**c. Alinear secuencias:**
Alinearemos las secuencias del archivo fasta con mayúsculas utilizando la
herramienta emma. Esta herramienta funciona de forma análoga al programa
clustalw.

```{bash}
emma <sequencia.input3> <sequencia.output3.alineada> <sequencia.output3.arbol_temporal>
```

**d. Obtener información del alineamiento:**
Una vez que obtenemos el alineamiento podemos sacar información sobre el
resultado del alineamiento de cada una de las secuencias incluidas en el archivo
utilizando infoalign.

```{bash}
infoalign <secuencias_homologas.input.alineada> <tabla.salida.con.informacion>
```

**e. Generar una matriz con distancias pareadas:**
Calculamos las distancias pareadas entre todas las secuencias incluidas en el
alineamiento utilizando la herramienta distmat. Esta herramienta genera una matriz
diagonal en base a las distancias y nos permiten elegir entre métodos de corrección
simples, tanto para proteínas como para nucleótidos.

```{bash}
distmat <secuencias_homologas.input.alineada> <matriz.diagonal.con.informacion.distancias>
```

**f. Realizar una Filogenia (FastTree) y visualizar online:**
Al igual que hicimos en las clases anteriores realizaremos un análisis filogenético
utilizando el programa FastTree. Visualizar el resultado online (ver práctico anterior).

```{bash}
FastTree <secuencias_homologas.input.alineada > <secuencias_homologas.fasttree.tre>
```

### 2. Actividad: Análisis de genoma completo.

**a. Obtener genomas del NCBI (wget) y descomprimir (gunzip):**

```{bash}
ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/701/785/GCF_000701785.1_ASM70178v1/GCF_000701785.1_ASM70178v1_genomic.fna.gz

ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/009/275/GCF_002009275.1_ASM200927v1/GCF_002009275.1_ASM200927v1_genomic.fna.gz
```

**b. Información de la secuencia (infoseq):**
i. ¿Cuál de los dos genomas piensa usted que está cerrado?
ii. ¿Qué genoma presenta el contenido de G+C más alto?

**c. Identificar regiones ricas en islas CpGs (newcpgseek):**
i. Identifique que regiones presentan más de 10 pares CpG en cada genoma.

**d. Extraer alguna de las regiones identificadas en el punto anterior (extractseq)**

```{bash}
extractseq <genoma.fasta> -region 11111..22222 <archivo.salida.fasta>
```

ii. Visualice la secuencia: ¿Puede confirmar el resultado obtenido en el punto anterior?

**e. Obtenga el reverso complementario de la secuencia obtenida en el punto anterior (revseq).**
i. ¿Cómo cambiaron las islas CpG?, aumentaron o disminuyeron?

### 3. Actividad: Análisis de secuencias codificantes.
**a. Obtener del NCBI las secuencias codificantes de los dos genomas utilizados en la actividad anterior (wget).**

i. Entre al explorador de internet y busque el archivo _cds_ en el ncbi.
ii. Descomprima igual que en la actividad anterior.

**b. Información de las secuencias por separado y en conjunto (infoseq).**
i. Para obtener el valor del conjunto utilice “egrep –v”
para eliminar los encabezados del archivo fasta.

ii. Compare el GC total del genoma obtenido en la
actividad anterior y el GC de las secuencias
codificantes.

iii. ¿Cuántos genes hay en cada genoma menores a 600
pares de bases?

**c. Generar tabla con uso de codones sinónimos (cusp).**
i. Para cada archivo aplique la herramienta “cusp”. En
este caso no es necesario eliminar los encabezados
del fasta.

ii. Analice la salida e identifique los codones sinónimos
menos frecuentes.

**d. Estimar el sesgo (ENC, Wrigth 1990) en el uso de codones sinónimos (chips).**
i. Interprete los resultados. En cual organismo se
observa el mayor sesgo en el uso de codones
sinónimos. Es coherente este resultado con lo
observado anteriormente.

**e. Comparar el uso de codones sinónimos entre ambos genomas (codcmp).**

i. El comando codcmp toma como entrada el resultado
(ouputs) generado por el comando cusp.

**f. Ordene los genes por tamaño, de menor a mayor (sizeseq).**
i. Utilicé el comando sizeseq para ordenar e infoseq
para sacar la información del largo de las
secuencias.

ii. ¿Qué tamaño tienen los 10 genes más largos?
**g. Traduzca las secuencias (transeq) y realice una predicción de sitios antigénicos (antigen).**

i. Recuerde que debe traducir la secuencia antes de
predecir los sitios antigénicos.

ii. ¿Qué proteína presenta el mayor potencial
antigénico?

iii. ¿A qué proteína corresponde?