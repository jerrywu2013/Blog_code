###Importing data
#Excel
install.packages("RODBC")
library(RODBC)
channel<-odbcConnectExcel("D:/myfile.xls")
mydataframe<-sqlFetch(channel,"mysheet")
odbcClose(channel)

#Excel CSV
mydataframe<-read.table("file", header=TRUE, sep=",")

#Json
library(rjson)
channel <- file("URL", encoding="utf-8")
mydataframe<-fromJSON(file=channel)
close(channel)

#SPSS
install.packages("Hmisc")
library(Hmisc)
mydataframe<-spss.get("myfile.sav",use.value.labels=TRUE)

#Stata
library(foreign)
mydataframe<-read.dta("mydata.dta")

###Useful functions
#Number of elements/components
length(object)

#Dimensions of an object
dim(object)

#Structure of an object
str(object)

#Class or type of object
class(object)

#Names of components in an object
names(object)

#Combines objects into a vector
c(object,object...)

#Combines objects as columns
cbind(object,object...)

#Combines objects as rows
rbind(object,object...)

#Prints the object
object

#Lists the first part of the object
head(object)

#Lists the last part of the object
tail(object)

#Lists current objects
ls()

#Deletes one or more objects
rm(object)
rm(list = ls())




