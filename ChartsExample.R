test_PieChart <- function() {
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
}



test_BarChart <- function()  {
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
}


test_Boxplot <- function()  {
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
}



test_Histogram <- function()  {
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
}


test_LineChart <- function() {
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
}

test_ScatterChart <- function() {
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
}