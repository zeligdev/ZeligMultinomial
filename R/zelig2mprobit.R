#' interface between the Zelig model mprobit and the pre-existing function
#' param formula a formula
#' param ... 
#' param data a data.frame 
#' return a list specifying '.function'
zelig2mprobit <- function (formula, ..., data) {
  list(
       .function = "",
       formula = formula,
       data = data
       )
}
