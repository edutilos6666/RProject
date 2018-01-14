testLoop <- function()  {
  letters <- LETTERS[1:10]
  for(l in letters) {
    print(l)
  }
  
  
  i <- 0 
  while(i < 10 ) {
    cat("step = ", i, "\n")
    i = i + 1
  }
  
  i <- 0 
  repeat {
    i <- i + 1
    if(i == 5) next 
    cat("step = ", i , "\n")
    if (i == 10) break
  }
}