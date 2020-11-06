---
author: Dr Andrés Iriarte
draft: false
linktitle: Práctico 7a
menu:
  example:
    parent: Prácticos
    weight: 1
title: Práctico 7a
type: docs
weight: 1
output:
  prettydoc::html_pretty:
    theme: cayman
    highlight: github
---

## Scripting Shell: Introducción a la programación en bash y uso de variables. Recorrer listas, ejecutar acciones repetidas. Uso de bucles y condicional

En este práctico el estudiante generará sus primeros códigos en lenguaje Bash para automatizar
procesos. Utilizaremos variables de distinto tipo y automatizaremos acciones utilizando los bucles for, while.
Finalmente pondremos en práctica condicionales para hacer que el script recorra diferentes procesos de
acuerdo a una condición dada.

### EJERCICIO

Para cada uno de los puntos planteados a continuación usted **deberá generar el pseudocódigo**, es decir **un esquema** de los bloques de acciones que ejecutará, y el código pedido.


Escriba un script en Bash que:

### 1. Dada una lista de nombres (en archivo incluido) salude a cada uno de ellos.

```{bash}
Pistas: for,  nombres.lis, echo saludo, exit, reciclar script anterior.
```

### 2.dado un número establecido por el usuario (pedida al usuario en modo interactivo) se impriman todos los números impares que sean al mismo tiempo mayores a 0 y menores al número en cuestión.

```{bash}
Pistas: i=1, while, read, echo, let i=i+1
```

### 3. Dado múltiples queries y un genoma de referencia (secuencias codificantes) realice un blastp y filtre según un valor mínimo de identidad y cobertura. Además el script debe guardar los resultados del blast.

```{bash}
Pistas: translate, ls *.query.fas, makeblastdb, for, blastp, egrep, >>, reciclar script anterior.
```

### 4. Sin utilizar transeq traduzca una secuencia codificante (pasada como argumento) que este en el marco abierto de lectura correcto y que sea pasada como argumento.

```{bash}
Pistas: $1, 'sed s/.../ &/g' , loopear con for los 64 codones, egrep codón en tabla código genético, 'sed s/codón/aa/g'.
```