test_ContainerDataTypes <- function() {
  a <- "foo"
  b <- "bar"
  c <- "bim"
  print(paste(a, b , c))
  print(paste(a, b,c, sep= " - "))
  print(paste(a,b,c, sep= ""))
  print(paste(a,b,c, sep="", collapse=""))
  
  print(toupper(a))
  print(tolower(toupper(a)))
  print(substring(a, 1, 2))
  
  print(1:10)
  print(class(1:10))
  print(seq(1, 10, by = 2))
  print(c("foo", 10, 100.0))
  v = c(10, 20, 30, 40)
  print(v[c(2)])
  print(v[c(1,2,3)])
  
  numbers <- c(100, 80, 60, 40, 20, 10)
  print(sort(numbers))
  print(sort(numbers, decreasing=TRUE))
  
  names <- c("edu", "foo", "bar", "pako")
  print(sort(names))
  print(sort(names, decreasing=TRUE))
  
  numbers <- list(10, 20, 30)
  print(numbers)
  print(names(numbers))
  
  complex_list <- list(c(10, 20, 30), matrix(c(1, 2, 3, 4, "foo", "bar"), nrow= 2), list("red", "green", "blue"))
  names(complex_list) <- c("vector", "matrix", "inner list")
  print(complex_list)
  print(names(complex_list))
  
  print(numbers[2])
  print(names[1])
  
  l1 <- list(10, 20, 30)
  l2 <- list(40, 50, 60)
  merged <- c(l1, l2)
  cat("merged = ", sprintf("%s", merged), "\n")
  
  v1 <- unlist(l1)
  v2 <- unlist(v2)
  v_merged = c(v1, v2)
  cat("v_merged = ", v_merged, "\n")
  
  
  print(matrix(c(3:14), nrow=4, byrow= TRUE))
  print(matrix(c(3:14), nrow=4, byrow=FALSE))
  rownames = c("row 1", "row 2", "row 3", "row 4")
  colnames = c("col 1", "col 2", "col 3")
  print(matrix(c(3:14), nrow=4, byrow=TRUE, dimnames= list(rownames, colnames)))
  
  m = matrix(c(1:10), nrow=5)
  print(m)
  print(m[4,2])
  print(m[,2])
  print(m[4,])
  
  m2 = matrix(c(10:19), nrow= 5)
  print(m2)
  print(m + m2)
  print(m - m2)
  
  m1 = matrix(c(1:10), nrow= 5)
  m2 = matrix(c(10:19), nrow=5)
  print(m1*m2)
  
  
  vector1 <- c(1, 2, 3)
  vector2 <- c(4,5,6,7,8,9)
  row.names <- c("row 1", "row 2", "row 3")
  col.names <- c("col 1", "col 2", "col 3")
  matrix.names <- c("Matrix 1", "Matrix 2")
  result <- array(c(vector1, vector2), dim =c(3,3,2), dimnames = list(row.names, col.names, matrix.names))
  print(result)
  
  print(result[1,,])
  print(result[,1,])
  print(result[1,1,2])
  print(result[,,2])
  
  vector1 <- c(1, 2, 3)
  vector2 <- c(4, 5,6, 7, 8, 9)
  vector3 <- c(10, 11, 12)
  vector4 <- c(13, 14, 15, 16, 17, 18)
  arr1 <- array(c(vector1, vector2), dim = c(3, 3,2))
  arr2 <- array(c(vector3, vector4), dim = c(3,3,2))
  m1 <- arr1[, , 2]
  m2 <- arr2[,,2]
  print(m1)
  print(m2)
  print(m1+m2)
  print(m1-m2)
  
  
  res = apply(arr1, c(1), sum)
  cat("res = ", res , "\n")
  
  
  var <- c("foo", "bar", "foo", "bim", "foo", "pako")
  print(is.factor(var))
  f <- factor(var)
  print(is.factor(f))
  print(var)
  print(f)
  
  
  
  name <- c("foo", "bar", "bim", "pako", "deko")
  age <- c(10, 20, 30, 40, 50)
  gender <- c("m", "f", "m", "m", "f")
  
  input_data <- data.frame(name, age, gender)
  print(is.factor(input_data$gender))
  print(input_data)
  print(input_data$gender)
  
  
  factor_data <- factor(gender)
  new_order_data <- factor(factor_data, levels = c("m", "f"))
  print(factor_data)
  print(new_order_data)
  
  
  names <- c("foo", "bar", "bim")
  factor_data <- gl(3, 4, labels=names)
  print(factor_data)
  
  
  emp.data <- data.frame(
    emp_id= c(1:5),
    emp_name=c("foo", "bar", "bim", "pako", "deko"), 
    salary=c(100.0, 200.0, 300.0, 400.0, 500.0), 
    start_date = as.Date(c("2010-01-10", "2010-02-10", "2010-03-10", "2010-04-10", "2010-05-10")), 
    stringsAsFactors=FALSE
  )
  
  print(emp.data)
  
  
  str(emp.data)
  print(summary(emp.data))
  
  
  result <- data.frame(emp.data$emp_name, emp.data$salary)
  print(result)
  print(emp.data[1:2,])
  print(emp.data[c(3,5), c(2,4)])
  
  emp.data$department <- c("IT", "Operations", "IT", "HR", "Marketing")
  print(emp.data)
  
  
  emp.new_data <- data.frame(
    emp_id = c(6:8), 
    emp_name = c("leo", "messi", "neymar"), 
    salary= c(600.0, 700.0, 800.0), 
    start_date = as.Date(c("2010-06-10", "2010-07-10", "2010-08-10")), 
    department = c("Finance", "HR", "Marketing"), 
    stringsAsFactors = FALSE
  )
  print(emp.new_data)
  
  emp.finalData<- rbind(emp.data, emp.new_data)
  print(emp.finalData)
  
  
  city <- c("Tampa","Seattle","Hartford","Denver")
  state <- c("FL","WA","CT","CO")
  zipcode <- c(33602,98104,06161,80294)
  result <- cbind(city, state, zipcode)
  cat("First data frame\n")
  print(result)
  
  
  new.addresses <- data.frame(
    city = c("Lowry","Charlotte"),
    state = c("CO","FL"),
    zipcode = c("80230","33949"),
    stringsAsFactors = FALSE
  )
  
  cat("### New Addresses ###\n")
  print(new.addresses)
  
  finalResult <- rbind(result, new.addresses)
  cat("### finalResult ###\n")
  print(finalResult)
}