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

v1 <- c(10, 20, 30)
v2 <- c(100, 200, 300)
print(v1+v2)
print(v1-v2)
print(v1*v2)
print(v1/v2)
print(v1%%v2)
print(v1%/%v2)
print(v1^v2)
print(v1<v2)
print(v1<=v2)
print(v1>v2)
print(v1>=v2)
print(v1==v2)
print(v1!=v2)
print(v1&v2)
print(v1|v2)
print(!v1)
print(v1&&v2)
print(v1||v2)
print(2:8)
print(10 %in% v1)
print(101 %in% v1)
print(M)
print(t(M))
print(M %*% t(M))

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



res <- switch(3, "red", "green", "blue", "yellow")
print(res)

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

findMax <- function(x, y) {
  if(x > y) return(x) 
  else return(y) 
}

findMin <- function(x, y) {
  if(x < y) return(x)
  else return(y)
}

x <- 10 
y <- 3 
max <- findMax(x, y)
min <- findMin(x, y)
cat("max = ", max, "\n")
cat("min = ", min , "\n")


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


# library(MASS)
# merged.PIMA <- merge(x=PIMA.te, y = PIMA.tr, by.x =c("bp", "bmi"), by.y = c("bp", "bmi"))
# print(merged.PIMA)
# nrow(merged.PIMA)

# library(MASS)
# print(ships)
# 
# molten.ships <- melt(ships, id=c("type", "year"))
# print(molten.ships)



print(getwd())
setwd("/home/edutilos/RProjects")
print(getwd())
setwd("/home/edutilos/RProjects/RProject")
print(getwd())

data <- read.csv("input.csv")
print(data)
print(is.data.frame(data))
print(nrow(data))
print(ncol(data))


print(summary(data))
print(max(data$id))
print(max(data$salary))

retval <- subset(data, salary== max(salary))
print(retval)

retval <- subset(data, dept == "IT")
print(retval)

retval <- subset(data, dept == "IT" & salary > 600)
print(retval)
retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

write.csv(retval, "output.csv")
newdata <- read.csv("output.csv")
print(newdata)

write.csv(retval, "output.csv", row.names = FALSE)
newdata <- read.csv("output.csv")
print(newdata)

any(grepl("xlsx",installed.packages()))
library("xlsx")


data <- read.xlsx("input.xlsx", sheetIndex = 1)
print(data)

data <- read.xlsx("input.xlsx", sheetIndex = 2)
print(data)

print(mtcars)

write.table(mtcars, file="mtcars.csv", row.names=FALSE, col.names=TRUE, na = "", sep=",")
new.mtcars <- read.table("mtcars.csv", sep=",", header=TRUE, nrows=5)
print(new.mtcars)

print(colnames(new.mtcars))

outfile <- file("binmtcars.dat", "wb")
writeBin(colnames(new.mtcars), outfile)
writeBin(c(new.mtcars$cyl, new.mtcars$am,new.mtcars$gear), outfile)
close(outfile)

infile <- file("binmtcars.dat", "rb")
colnames <- readBin(infile, character(), n = 3)
bindata <- readBin(infile, integer(), n = 18)
print(colnames)
print(bindata)

cyldata = bindata[4:8]
amdata = bindata[9:13]
geardata = bindata[14:18]
cat("cyldata = ", cyldata , "\n")
cat("amdata = ", amdata, "\n")
cat("geardata = ", geardata, "\n")
close(infile)

library("XML")
library("methods")

result <- xmlParse(file="input.xml")
print(result)

rootNode = xmlRoot(result)
rootSize = xmlSize(rootNode)
print(rootNode)
print(rootSize)
print(rootNode[1])
print(rootNode[[1]][[1]])
print(rootNode[[1]][[2]])

xmlDataFrame <- xmlToDataFrame("input.xml")
print(xmlDataFrame)

library("rjson")
result <- fromJSON(file="input.json")
print(result)

jsonDataframe = as.data.frame(result)
print(jsonDataframe)

library(RCurl)
library(stringr)
library(plyr)

url <- "http://www.geos.ed.ac.uk/~weather/jcmb_ws/"
links <- getURL(url)
filenames <- links[str_detect(links, "JCMB_2015")]
filenames_list <- as.list(filenames)

download.csv <- function(mainurl, filename) {
  filedetails <- str_c(mainurl, filename)
  download.file(filedetails, filename)
}

l_ply(filenames, download.csv, mainurl=url)

print(getwd())

library("RMySQL")
library("DBI")
mysqlConnection <- dbConnect(MySQL(), host="localhost", dbname="test2", user="root", password="root")
dbListTables(mysqlConnection)

result <- dbSendQuery(mysqlConnection, "select * from Person"); 
data.frame = fetch(result, n = 3)
print(data.frame)

data.frame = fetch(result, n = -1)
print(data)
print(data.frame)

dbWriteTable(mysqlConnection, "mtcars", mtcars[,], overwrite=TRUE)
dbListTables(mysqlConnection)

# dropping tables 
dbSendQuery(mysqlConnection, "drop table if exists Worker")

# close connection 
dbDisconnect(mysqlConnection)

labels <- c("IE", "Chrome", "Firefox", "Safari", "Edge")
x <- c(10, 20, 30, 40, 50)
png(file="browsers.png")
pie(x, labels, col= rainbow(length(x)))
legend("topright", c(labels), cex = 0.8, fill=rainbow(length(x)))
dev.off()


# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city_title_colours.png")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

# Save the file.
dev.off()


# 3d pie chart 
library(plotrix)
labels <- c("IE", "Chrome", "Firefox", "Safari", "Edge")
x <- c(10, 20, 30, 40, 50)
png(file="browsers-3d.png")
pie3D(x, labels=labels, explode=0.1, main="Browsers")
dev.off()



# bar chart 
H <- c(10, 20, 30, 40, 50)
m <- c("Jan", "Feb", "Mar", "Apr", "Mai")
png(file="barchart.png")
barplot(H, names.arg=m, xlab="Month", ylab= "Revenu", main="Revenue chart", col="blue", border="red")
dev.off()

# stacked bar chart 
# Create the input vectors.
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)
png(file="stacked_barchart.png")
barplot(Values, main="total revenu", col = colors, xlab= "month", ylab="revenue", names.arg= months)
legend("topleft", regions, cex=1.3, fill=colors)
dev.off()




png(file = "boxplot.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")

# Save the file.
dev.off()

# Give the chart file a name.
png(file = "boxplot2.png")

# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data",
        notch = TRUE, 
        varwidth = TRUE, 
        col = c("green","yellow","purple"),
        names = c("High","Medium","Low")
)
# Save the file.
dev.off()


# histogram
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
png(file="histogram.png")
hist(v, xlab="Weight", ylab="Frequency",main= "Histogram of v", col="yellow", border="black")
dev.off()

# histogram 2
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
png(file="histogram2.png")
hist(v, xlab="Weight", ylab="Frequency",main= "Histogram of v", col="yellow", border="black", xlim=c(0,40), ylim= c(0,5), breaks=5)
dev.off()


# line chart 
v <- c(7,12,28,3,41)
png (file="linechart1.png")
plot(v, type="o")
dev.off()

# line chart 2
v <- c(7,12,28,3,41)
png (file="linechart2.png")
plot(v, type="o", xlab="Month", ylab="Rainfall", main="Rainfall chart", col="red")
dev.off()

# multiple lines in line chart
v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)
png (file="linechart3.png")
plot(v, type="o", xlab="Month", ylab="Rainfall", main="Rainfall chart", col="red")
lines(t, type="o", col="blue")
dev.off()


# scatter chart 
input <- mtcars[, c("wt", "mpg")]
png(file="scatterplot.png")
plot(x=input$wt, y = input$mpg, 
     xlab="Weight", 
     ylab="Milage", 
     xlim=c(2.5,5), 
     ylim=c(15,30), 
     main="Weight vs Milage"
     )

dev.off()

# scatter plot matrices
png(file="scatterplot-matrices.png")
pairs(~wt+mpg+disp+cyl, data=mtcars, main="Scatterplot Matrix")
dev.off()