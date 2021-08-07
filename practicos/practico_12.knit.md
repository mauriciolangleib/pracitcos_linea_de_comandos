---
title: "Practico 12"
output: pdf_document
---

Se usaron datos sacados de [este paper](https://github.com/anecsulea/LncEvoDevo)

# Introducción

En este práctico (...)

En particular, utilizaremos datos de la publicación ***Comparative transcriptomics analyses across species, organs, and developmental stages reveal functionally constrained lncRNAs*** (Darbellay & Necsulea, 2019).

A su vez se ejemplificarán las funciones básicas a emplear con un dataset estándar empleado en muchas demostraciones: el dataset 'iris'.

# Precalentamiento






# Precalentamiento





\begin{flushleft}\includegraphics[width=0.1\linewidth]{readr_logo} \end{flushleft}



> En la mayoría de los casos los datos con los que se trabaja suelen ser importados de archivos alojados en disco duro.
> 
> Para este propósito se utiliza la librería **readr**. Las funciones de la misma son capaces de leer archivos de varios formatos: CSV (*comma-separated values*), TSV (*tab-separated > alues*) y otros. 

> Las funciones alojadas en esta librería comienzan todas con el prefijo **read_***, acompañadas del formato de texto que son capaces de leer. Así, por ejemplo, read_csv() es la función de esta librería diseñada para cargar archivos de texto con formato csv.
 
> En general estas funciones también poseen una sintaxis similar, por lo que al aprenderse a utilizar una ya se posee el conocimiento para lograr cargar otros formatos.



## cargando datos 

```r
# cargamos la librería tidyverse. 
# Esta contiene a todas las librerias asociadas (e.g. readr, tidyr, dplyr)
library(tidyverse)
```

```
## -- Attaching packages ------------------------------------------------------------------------------------------------------------------------------- tidyverse 1.3.0 --
```

```
## v ggplot2 3.2.1     v purrr   0.3.3
## v tibble  2.1.3     v dplyr   0.8.3
## v tidyr   1.0.2     v stringr 1.4.0
## v readr   1.3.1     v forcats 0.4.0
```

```
## -- Conflicts ---------------------------------------------------------------------------------------------------------------------------------- tidyverse_conflicts() --
## x dplyr::filter() masks stats::filter()
## x dplyr::lag()    masks stats::lag()
```

```r
# se lee el conjunto de datos a utilizar y se los aloja en una variable
vuelos = readr::read_csv('airports_1.csv')
```

```
## Parsed with column specification:
## cols(
##   .default = col_character(),
##   County = col_logical(),
##   `Kobuk Airport` = col_logical(),
##   `Key Largo` = col_logical(),
##   `International Airport` = col_logical(),
##   `Branch County Memorial Airport` = col_logical(),
##   `Offutt Afb` = col_logical(),
##   Kahului = col_logical(),
##   `Ogdensburg Intl` = col_logical(),
##   `Johnson County Airport` = col_logical(),
##   `Will Rogers World` = col_logical(),
##   `LM Clayton Airport` = col_logical(),
##   `Old Harbor Airport` = col_logical(),
##   `Olympia Regional Airpor` = col_logical(),
##   `Nogales Intl` = col_logical(),
##   `San Diego Old Town Transit Center` = col_logical(),
##   `Olive Branch Muni` = col_logical(),
##   `Eppley Afld` = col_logical(),
##   Nome = col_logical(),
##   `Ormond Beach municipal Airport` = col_logical(),
##   `Oneonta Municipal Airport` = col_logical()
##   # ... with 429 more columns
## )
```

```
## See spec(...) for full column specifications.
```

```
## Warning: 451 parsing failures.
##  row                            col           expected                 actual             file
## 1001 County                         1/0/T/F/TRUE/FALSE 27.265833/-80.851111   'airports_1.csv'
## 1002 Kobuk Airport                  1/0/T/F/TRUE/FALSE 66.912222/-156.897222  'airports_1.csv'
## 1003 Key Largo                      1/0/T/F/TRUE/FALSE 25.325393/-80.274775   'airports_1.csv'
## 1004 International Airport          1/0/T/F/TRUE/FALSE 29.1725/-82.224167     'airports_1.csv'
## 1005 Branch County Memorial Airport 1/0/T/F/TRUE/FALSE 41.9335691/-85.0522935 'airports_1.csv'
## .... .............................. .................. ...................... ................
## See problems(...) f
