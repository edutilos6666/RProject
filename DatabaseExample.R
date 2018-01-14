test_MySQL <- function() {
  library("RMySQL")
  library("DBI")
  
  all_cons <- dbListConnections(MySQL())
  print(all_cons)
  for(con in all_cons) {
    dbDisconnect(con)
  }
  
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
  dbDisconnect(mysqlConnection)
}