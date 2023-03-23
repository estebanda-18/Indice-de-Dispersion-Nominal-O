#' Esta función permite calcular el índice de dispersión nominal O (Peña, 1998)
#' @variable_nominal: variable con escala de medida nominal
#' @hi_modal: frecuencia relativa de la clase modal
#' @k: número de categorías de la distribución
#' @o_bruta: valor bruto del índice de dispersión nominal O en proporción sin redondear
#' @return: valor de O en porcentaje y redondeado a dos decimales
#' @Referencias: Peña, G. (1998). Índice de Dispersión Nominal O. Analogías del Comportamiento, 3, 25-51.
#' https://revistasenlinea.saber.ucab.edu.ve/index.php/analogias/article/view/4891
o <- function(variable_nominal){
  hi_modal <- max(prop.table(table(variable_nominal)))
  k <- length(strsplit(levels(factor(variable_nominal)),' '))
  o_bruta <- ((1-hi_modal)/(1-(1/k)))*100
  return(paste(round(o_bruta, 2), "%", sep=" "))
}
