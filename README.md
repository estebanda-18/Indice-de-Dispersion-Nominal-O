# **Package ‘opena’**
Autor: Esteban De Abreu

# Índice de Dispersión Nominal O (Peña, 1998)

El índice de dispersión nominal O es un índice relativo de variabilidad respecto al máximo de variación para datos nominales, desarrollado por Peña (1998). Este es especialmente eficiente cuando se tiene tablas unimodales, tanto si el resto de las categorías son diferentes como si son iguales, de manera que, el índice O evidencia una mayor capacidad discriminativa y un menor inflamiento con respecto a otros coeficientes de la mismo índole (Peña, 1998). Dicho estadístico se puede utilizar en el análisis de ítemes, cuando las respuestas a los reactivos se consideren nominales y no haya respuestas correctas.

Al insertar una variable con escala de medida nominal, el package 'opena' calcula O, que constituye un índice de dispersión relativa que compara la distribución real en relación con una distribución rectangular.


## Fórmula

$$O = \frac{1-hi_{modal}}{1-(\frac{1}{k})}*100$$

Donde: hi<sub>modal</sub> = frecuencia relativa de la clase modal (hi<sub>modal</sub> = fi<sub>modal</sub>/N), k = número de categorías de la distribución, 1/k = permite conocer la proporción de observaciones contenida en cada categoría y 1-(1/k) = proporción de observaciones que no están en el modo.


## Interpretación

a)  Distribución perfectamente heterogénea (100%, todas las categorías tendrían la misma frecuencia).
b)  Distribución perfectamente homogénea (0%, es decir que la fi<sub>modal</sub> = N).


# Código R

```{r, message=FALSE, warning=FALSE}
o <- function(...){
  hi_modal <- max(prop.table(table(...)))
  k <- length(strsplit(levels(factor(...)),' '))
  o_bruta <- ((1-hi_modal)/(1-(1/k)))*100
  return(paste(round(o_bruta, 2), "%", sep=" "))
}
```

Para calcular "o" (en minúscula) se escribe: "o(Nombre_del_data_set$Nombre_de_la_variable)".


# Referencias

Peña, G. (1998). Índice de Dispersión Nominal O. *Analogías del Comportamiento*, *3*, 25-51. https://revistasenlinea.saber.ucab.edu.ve/index.php/analogias/article/view/4891

