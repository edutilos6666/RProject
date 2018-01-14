test_DataTypes <- function() {
  myString = "Hello, World!"
  print(myString)
  
  id <- 1
  name <- "foobar"
  age <- 10
  wage <- 100.0
  active <- TRUE 
  print(sprintf("id = %d", id))
  print(sprintf("name = %s", name))
  print(sprintf("age = %d", age))
  print(sprintf("wage = %.2f", wage))
  print(sprintf("active = %s", active))
  
  # vector 
  names <- c("foo", "bar", "bim")
  print(names)
  l1 <- list(c("foo", "bar"), 10 , 100.0)
  print(l1)
  M = matrix(c(1, 2, 3, 4, 5,6), nrow= 3, ncol= 2, byrow = TRUE)
  print(M)
  
  arr = array(c("foo", "bar"), dim = c(3, 2, 3))
  print(arr)
  
  colors = c("red", "green", "yellow", "red", "yellow", "red", "green")
  factor_colors <- factor(colors)
  print(colors)
  print(factor_colors)
  
  
  
  people <- data.frame(
    id = c(1, 2, 3), 
    name = c("foo", "bar", "bim"), 
    age = c(10, 20, 30), 
    wage = c(100.0, 200.0, 300.0), 
    active = c(TRUE, FALSE, TRUE)
  )
  
  print(people)
  
  cat("id = ", id, "\nname = ", name, "\nage = ", age)
  
  print(ls())
}