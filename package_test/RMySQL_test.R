
# RMySQL package test

library(RMySQL)
con <- dbConnect(RMySQL::MySQL(), username = 'root', password = 'root', dbname = "test")
rs <- dbSendQuery(con, "SELECT * FROM a")
d1 <- dbFetch(rs, n = -1)      # extract data in chunks of 10 rows
rs <- dbSendQuery(con, "SELECT * FROM b")
dbHasCompleted(rs)
d2 <- dbFetch(rs, n = -1)      # extract all remaining data
dbHasCompleted(rs)
dbClearResult(rs)
dbListTables(con)














