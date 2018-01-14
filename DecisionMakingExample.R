test_DecisionMaking <- function() {
  age = 10 
  if(age > 0 && age < 10) {
    cat("you are a kid.")
  } else if(age >= 10 && age < 20) {
    cat("you are a teenager.")
  } else if(age >= 20 && age < 50) {
    cat("you are an adult.")
  } else {
    cat("you are an elderly.")
  }
  cat("\n")
  
  
  res <- switch(3, "red", "green", "blue", "yellow")
  print(res)
}