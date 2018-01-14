test_ArithmeticOps <- function() {
  x <- 10 
  y <- 3
  add <- x + y 
  sub <- x - y
  mul <- x * y 
  div <- x / y
  mod <- x %% y 
  quot <- x%/% y 
  exp <- x^y
  print("<<Arithmetic Operators>>")
  cat("x = ", x , " and y = ", y , "\n")
  cat("x + y = ", add, "\n")
  cat("x - y = ", sub, "\n")
  cat("x * y = ", mul, "\n")
  cat("x / y = ", div, "\n")
  cat("x %% y = ", mod , "\n")
  cat("x %/% y = ", quot, "\n")
}


test_RelationalOps <- function() {
  x <- 10 
  y <- 3 
  eq <- x == y
  ne <- x != y 
  gt <- x > y
  gte <- x >= y 
  lt <- x < y 
  lte <- x <= y 
  print("<<Relational Operators>>")
  cat("x = ", x , " and y = ", y , "\n")
  cat("x == y = ", eq, "\n")
  cat("x != y = ", ne, "\n")
  cat("x > y = ", gt, "\n")
  cat("x >= y = ", gte, "\n")
  cat("x < y = ", lt, "\n")
  cat("x <= y = ", lte, "\n")
}

test_LogicalOps <- function() {
  x <- TRUE 
  y <- FALSE 
  and1 <- x & y 
  or1 <- x | y 
  not_x <- !x
  not_y <- !y 
  and2 <- x && y
  or2 <- x || y
  print("<<Logical Operators>>")
  cat("x = ", x, " and y = ", y, "\n")
  cat("x & y = ", and1, "\n")
  cat("x | y = ", or1, "\n")
  cat("!x = ", not_x, "\n")
  cat("!y = ", not_y, "\n")
  cat("x && y = ", and2, "\n")
  cat("x || y = ", or2, "\n")
}