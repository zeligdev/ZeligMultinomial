#' Interface between the Zelig Model "mprobit" and the Pre-existing Function
#' param formula a formula
#' param ... 
#' param data a data.frame 
#' return a list specifying '.function'
zelig2mprobit <- function (formula, choiceX = NULL, cXnames = NULL, ..., data) {
  if (!missing(choiceX)) {
    choiceX <- eval.in(choiceX, data)
  }


  list(
       .function = "mnp",
       .hook     = "update.call.formula",

       formula = formula,
       data = data,

       choiceX = literal(choiceX),
       cXnames = literal(cXnames),

       ...
       )
}

#' Hook
#'
update.call.formula <- function(obj, zelig.call, call) {
  obj$call$formula <- as.formula(call$formula)
  obj$call$choiceX <- call$choiceX
  obj
}
