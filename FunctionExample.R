findMax <- function(x, y) {
  if(x > y) return(x) 
  else return(y) 
}

findMin <- function(x, y) {
  if(x < y) return(x)
  else return(y)
}

test_Function <- function() {
  x <- 10 
  y <- 3 
  max <- findMax(x, y)
  min <- findMin(x, y)
  cat("max = ", max, "\n")
  cat("min = ", min , "\n")
}
