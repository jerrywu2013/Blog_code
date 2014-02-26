library(RODBC)
#建立連線
odbcConnect("number",uid="root",pwd="12345")

#丟USArrests資料集到MySQL，這時候就會看有資料表在MySQL中了
sqlSave(channel, USArrests, rownames = "state", addPK=TRUE)

#確認資料庫的資料
sqlFetch(channel, "USArrests", rownames = "state")

#資料做運算
foo <- cbind(state=row.names(USArrests), USArrests)[1:3, c(1,3)]
foo[1,2] <- 222

#更新資料表，foo:剛運算的內容，USArrests:為更新的表
sqlUpdate(channel, foo, "USArrests") 
#刪除資料表
sqlDrop(channel, "USArrests") 
#關閉連線
close(channel)
