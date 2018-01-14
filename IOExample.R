test_CSV <- function() {
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
}


test_XLSX <- function() {
  any(grepl("xlsx",installed.packages()))
  library("xlsx")
  
  
  data <- read.xlsx("input.xlsx", sheetIndex = 1)
  print(data)
  
  data <- read.xlsx("input.xlsx", sheetIndex = 2)
  print(data)
}


test_Binary <- function() {
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
}

test_XML <- function() {
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
}

test_JSON <- function() {
  library("rjson")
  result <- fromJSON(file="input.json")
  print(result)
  
  jsonDataframe = as.data.frame(result)
  print(jsonDataframe)
}

test_Curl <- function() {
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
  
}