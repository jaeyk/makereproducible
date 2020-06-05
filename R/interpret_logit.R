interpret_logit <- function(model){

  # Control
  intercept <- model$estimate[model$term == "(Intercept)"]
  control <- exp(intercept) / (1 + exp(intercept))

  # Likelihood
  model <- model %>% filter(term != "(Intercept)")

  model$likelihood <- (exp(model$estimate) / (1 - control + (control * exp(model$estimate))))

  return(model)
}
