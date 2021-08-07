#!/bin/bash

# pequenho script para agregar todos los archivos de tamanho menor a 100 Mb a GitHub.
# arg1: carpeta a subir
# arg2: mensaje de commit

find $1 -size -99M -type f -print0 | xargs -0 git add
git commit -m $2
git push origin master # ojo que esto es en sintaxis para vieja estructura de GitHub. hoy seria <git push origin main>
