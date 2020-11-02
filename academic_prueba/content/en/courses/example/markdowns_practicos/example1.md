---
author: Dr Andrés Iriarte
draft: false
linktitle: Práctico 1
menu:
  example:
    parent: Prácticos
    weight: 1
title: Práctico 1
type: docs
weight: 1
output:
  prettydoc::html_pretty:
    theme: cayman
    highlight: github
---
___
## Conexión al Servidor vía SSH
___
### 1. En un sistema operativo Linux:
En un sistema operativo Linux el comando ssh se encuentra disponible en todas las versiones y
distribuciones (ssh client). Usted solo necesita localizar la terminal y activarla. Una vez en la terminal utilice el comando ssh para generar una conexión con el servidor remoto, utilizando su nombre de usuario e IP (del servidor) de la siguiente forma: 

```{bash}
ssh estudiantes@164.73.173.95
```

A continuación escriba el password o palabra clave (ver en pizarrón). 

### 2. En un sistema operativo Windows:
Para conectarnos a un servidor vía ssh desde un sistema operativo Windows utilizaremos el programa PuTTY, que usted debería ya tener instalado. De no ser así por favor instale en su computadora desde el ejecutable disponible en www.chiark.greenend.org.uk/~sgtatham/putty/latest.html. Una vez instalado siga
los siguientes pasos:

a) Abra el programa PuTTY:

b) Complete el dialogo los datos de usuario (incluyendo la dirección de IP) y N° de puerto, como se
muestra a continuación. 

c) Guarde la sesión una vez le haya puesto nombre (ej. estud_lbc1) y cliquee en el botón “Save”.

d) Para conectarse al servidor haga click en “Open”.

e) Introduzca la palabra clave o password.


**Responda: En que lugar del sistema aparece?**

___
## Desplazamiento en la Terminal. Comandos *cd* y *pwd*.
___

El comando “cd” (change directory) permite desplazarse dentro del sistema operativo, moviéndose entre
carpetas, subiendo (hacia root) o bajando de nivel. El comando pwd (print working directory) imprime su ubicación en el sistema.

a) Para salir de la carpeta donde usted está ubicado, es decir para subir de nivel, escriba:

```{bash}
cd ..
```

b) Para subir dos niveles, es decir salir de dos carpetas anidadas, escriba:
```{bash}
cd ../..
```

> **Nota**: recuerde el espacio luego del comando y separando argumentos

c) Utilizando el comando “pwd” establezca su ubicación y escríbala a continuación:
………………………………….………………………………….

d) ¿Puede seguir subiendo de nivel? Justifique su respuesta.

e) Vuelva a la carpeta de su usuario con la opción a o b:
a. cd /home/estudiantes o
b. cd home y luego
cd estudiantes

f) Dibuje a continuación de forma muy esquemática y en un diagrama jerárquico el sistema de
archivos de su lcb1 o lcb2 (no baje más de 3 niveles!).

___
## Comandos Básicos: *ls*, *mkdir*, *cp*, *mv*, y *less*, *echo*
___

El comando “ls” (list) permite enlistar el contenido de un directorio, con “mkdir” (make directory) genera nuevos directorios (o carpetas). “cp” (copy) y “mv”(move) permiten copiar y mover archivos,respectivamente. En el caso de “mv”, se puede utilizar para cambiar el nombre de un archivo o directorio.

Utilizando “less” o “more” es posible visualizar el contenido de un archivo de texto, no modificarlo.

Finalmente “echo” permite imprimir a la pantalla un texto o el contenido de una variable.

a) Generaremos un directorio dentro de la carpeta general del usuario “estudiantes” con su nombre y apellido, utilice “mkdir”. 
Dentro de esta carpeta cree una nueva con el nombre PRACT1.Recuerde no utilizar caracteres extraños como por ejemplo: ñ ; ¿ ^ $ “ ‘ = ( ] { á o espacio). 

```{bash}
mkdir andres_iriarte
cd andres_iriarte
mkdir PRACT1 
```

> **Nota**: cada estudiante trabajará en su carpeta!

b) Entre en la carpeta recién creada utilizando el comando “cd” y luego utilizando el comando *pwd* establezca su path o dirección absoluta. Guarde en un archivo de texto este path.

```{bash}
cd PRACT1
pwd
```

c) Desplazarse a la carpeta MATERIALES dentro del usuario “estudiantes” y dentro de ella a la carpeta Practico1.

d) Utilizando el comando “ls” visualice todos los archivos presentes en la carpeta Practico1, /home/estudiantes/MATERIALES/Practico1/. Utilizando el carácter “*” puede enlistar todos los archivos terminados en “.fas” o “.aln” o todos los que comiencen con “seq”:

```{bash}
ls
ls *.fas
ls *.aln
ls seq*
```

e) Visualice el primer archivo en formato fasta utilizando el comando “less”, y luego el primer archivo en formato clustalW. Cuantas secuencias contiene el primer archivo fasta y el segundo.

```{bash}
less cpe.1000.fas
less cpe.1001.fas
```

f) Copie, utilizando el comando “cp” todos los archivos que terminan en “.fas” a su carpeta personal (creada en a y cuyo path guardo en b):

```{bash}
cp cpe.1000.fas /home/estudiantes/andres_iriarte/PRACT1/
cp cpe.1001.fas /home/estudiantes/andres_iriarte/PRACT1/
…
```

g) Copie, utilizando el comando “cp” todos los archivos que terminan en “.aln” a su carpeta personal (creada en a y cuyo path guardo en b). Esta vez utilice el carácter “*”.

```{bash}
cp *.aln /home/estudiantes/andres_iriarte/PRACT1/
```

> **Nota**: nuevamente recuerde los espacios y razone lo que está haciendo antes y después de ejecutar el comando. 

___
## ATAJOS O SHORCUTS: flechas arriba, abajo y tecla tabulador.
___

Un atajo en Linux es una combinación de una o varias teclas que realiza una función determinada. Los dos atajos más importantes son flecha arriba o abajo y tabulación. Las primeras permiten moverse dentro del historial de los comandos ejecutados en la terminal (los últimos 1000), es una forma de ahorrar tiempo y
no volver a escribir los comandos ya ejecutados.

La tecla tabulación o Tab completa el texto de comandos, carpetas o archivos siempre y cuando estos estén accesibles en el path, es decir, pueda verlos desde donde estoy “parado” en el sistema de archivos. 


