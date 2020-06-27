#' Recalculate logistic model estimates in percentage terms to help interpretation
#'
#' @param model An outcome of a logistic regression model.
#' @return A new column named "likelihood" is added to the the logistic regression model outcome.
#'
#' @export

interpret_logit <- function(model){

  # Control
  intercept <- model$estimate[model$term == "(Intercept)"]
  control <- exp(intercept) / (1 + exp(intercept))

  # Likelihood
  model <- subset(model, term != "(Intercept)")

  model$likelihood <- (exp(model$estimate) / (1 - control + (control * exp(model$estimate))))

  return(model)
}
