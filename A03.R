# 3/63
getwd()

setwd("C:\\Program Files\\R\\working")
getwd()

dir()


# 4/63
stdout()

?stdout()
cat("Hello R users!\n")

a <- c(1,2,3)
cat("Here is a list: ", a, "\n")

cat("3 + 5 =", 3+ 5, "\n" )

cat("A test list: ", paste("Test", 1:3, sep="-"), "\n")


# 5/63
a1 <- 1.2123344
a2 <- 23.3
a3 <- 10/3
 
cat("iteration", "\t", "mathod-1","\t","method-2", "\t", "method-3\n")
for (i in 1:3){    
  cat(i,"\t", round(a1, 3),"\t",  round(a2, 3), "\t", round(a3, 3),"\n")
  a1 <- a1+i
  a2 <- a2*i
  a3 <- a3/i
}

source("Example2.R")


# 6/63
cat("this is my output","\n", "2 3 5 7","\n", "11 13 17 19", file="test1.txt")
cat("this is my output", "2 3 5 7", "11 13 17 19", file="test2.txt", sep="\n")

cat("today", "is", date(), sep="\t", "\n")

?print
?sprintf
?print.data.frame
?paste


# 7/63
sprintf("%f", pi)
sprintf("%.3f", pi)
sprintf("%1.0f", pi)
sprintf("%5.1f", pi)
sprintf("%05.1f", pi)
sprintf("%+f", pi)
sprintf("% f", pi)
sprintf("%-10f", pi) # left justified
sprintf("%e", pi)
sprintf("%s is %f feet tall", "Sven", 7.1) 
sprintf("%.0f%% said yes (out of a sample of size %.0f)", 66.666, 3)

pi


# 8/63
cat("hello")
print("hello")
class(cat("hello"))
class(print("hello"))

a <- cat("hello")
b <- print("hello")
class(a)
class(b)

cat("Today is: ", date(), "\n")
print("Today is: ", date())

cat(head(iris, 2))
print(head(iris, 2))

dice1 <- sample(1:6, 10, replace=TRUE)
dice2 <- sample(1:6, 10, replace=TRUE)
mytable <- table(dice1, dice2)
mytable
print(mytable, zero.print = ".")


# 9/63
stdin()
description       class        mode        text      opened    can read    can write
    "stdin"  "terminal"         "r"      "text"    "opened"       "yes"    "no" 

a <- scan()
a
b <- scan(nmax=1)
b
b <- scan(nmax=1, quiet=TRUE)
b

c <- scan(what="character", quiet=TRUE)
c

c <- scan(what="character", quiet=TRUE)
c


# 10/63
d <- scan(what=list(name="character", age="numeric", isboy="logical"))
d

e <- scan()
e.mat <- matrix(e, ncol=3, byrow=TRUE)
e.mat


# 14/63
my.data <- read.table("iris-data1.txt")

my.data <- read.table("iris-data2.txt", header=TRUE, row.names=1)

my.data <- read.table("iris-data3.txt", header=TRUE, sep="\t")



# 15/63
my.data <- read.table("iris-data0.txt", header=FALSE)
dim(my.data)

my.data[1:3,]

attributes(my.data)
row.names(my.data)

names(my.data)
colnames(my.data)

head(my.data)
tail(my.data)


# 16/63
View(my.data)
str(my.data)


# 17/63
x <- read.table("mydata.txt", header=T)
head(x)
str(x)
summary(x)
x.b1 <- read.table("blank_ex1.txt", header=T)
x.b1 <- read.table("blank_ex1.txt", header=T, fill=T)
head(x.b1)
x.b2 <- read.table("blank_ex2.txt", header=T)
x.b2 <- read.table("blank_ex2.txt", header=T, fill=T)
head(x.b2)


# 18/63
read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "", ...)

read.csv2(file, header = TRUE, sep = ";", quote = "\"",
          dec = ",", fill = TRUE, comment.char = "", ...)

elections <- read.csv("elections-2000.csv")
head(elections)


# 19/63
mydata <- read.delim("mydata.txt")
head(mydata)
str(mydata)


# 20/63
myDT <- read.table("mydate.txt", 
                      sep = ";")
myDT
lapply(myDT, class)

# 方法一
varNames <- c("ID", "Values", "DateTime")
myDT <- read.table("mydate.txt", sep = ";", 
                      col.names = varNames)
myDT
lapply(myDT, class)
myDT$DateTime <- strptime(myDT$DateTime, 
                            "%Y/%m/%d %H:%M:%S")
lapply(myDT, class)


# 21/63
setClass('myDateTime') # 自定日期時間格式名稱
setAs("character", "myDateTime", 
        function(from) as.POSIXct(from, format="%Y/%m/%d %H:%M:%S"))
varNames <- c("ID", "Values", "DateTime")
varClasses <- c("integer", "numeric", "myDateTime")
myDT <- read.table("mydate.txt", sep = ";", colClasses = varClasses, 
                      col.names = varNames)
myDT
lapply(myDT, class)


# 22/63
read.table("input_testl.txt")
read.table("input_test1.txt")
read.table("input_test1.txt", sep="\t")
read.table("input_test1.txt", sep="\t", header=T)


# 24/63
my.data <- scan(file="iris-data0.txt", what=list(w=numeric(0), x=numeric(0), 
                                                 y=numeric(0), z=numeric(0), name="character"))
my.mat <- as.data.frame(my.data)

my.data <- scan(file="iris-data1.txt", what=list(n=integer(0), w=numeric(0), 
                                                 x=numeric(0), y=numeric(0), z=numeric(0), name="character"), skip=1)
my.data$n


# 25/63
getwd()

cat("1 2 3", "11 12 13", "21 22 23", "31 32 33", "41 42 43", 
    file="ex.txt", sep="\n")
scan(file="ex.txt", what=list(x=0, y="", z=0))


# 26/63
data()

data(Puromycin, package="datasets")
Puromycin

data(package="rpart")


# 28/63
library(MASS)
class(crabs)
dim(crabs)
colnames(crabs)
str(crabs)

edit(crabs)

crabs.new <- edit(crabs)
fix(crabs.new)

new.data <- edit(matrix(0, ncol=2, nrow=3))


# 29/63
write.csv(iris, "myNewData.csv", sep=",", col.names=TRUE)

write.table(iris, "myNewData.txt", quote=FALSE, sep="\t")

library(MASS)
hills
hills10 <- hills[1:10, 1:2]
hills10

write.table(hills10, "hill10.txt", sep="\t", quote=F, row.names=TRUE)

write.table(hills[11:15,1:2], "hill10.txt", append=TRUE, sep="\t", row.names=TRUE, col.names=FALSE)


# 30/63
zz <- file("output.txt", "w")
cat("Title line", "2 3 5 7", " ", "11 13 17", file=zz, sep="\n")
cat("One more line \n", file=zz)
close(zz)


zz <- textConnection("output.obj", "w")
sink(zz)
example(lm)
sink()
close(zz)
cat(output.obj, sep="\n")
write(output.obj, file="result.txt")


# 31/63
iris[1:10, ]
write.table(iris, "iris-data0.txt", sep="\t", quote=F, row.names=FALSE, col.names = FALSE)
write.table(iris, "iris-data1.txt", sep="\t", quote=F, row.names=TRUE, col.names = TRUE)

write.table(hills[11:15,1:2], "iris-data2.txt", append=TRUE, sep="\t", row.names=TRUE, col.names=FALSE)

write.table(hills[11:15,1:2], "iris-data3.txt", append=TRUE, sep="\t", row.names=TRUE, col.names=FALSE)


# 32/63
my.data0 <- read.table("iris-data0.txt")
my.data0[1:5, ] # or head(mydata0)

my.data1 <- read.table("iris-data1.txt")
my.data1[1:5, ]

my.data2 <- read.table("iris-data2.txt", header=TRUE, row.names=1)
my.data2[1:5, ]

my.data3 <- read.table("iris-data3.txt", header=TRUE, sep="\t")
my.data3[1:5, ]

my.sdata0 <- scan(file="iris-data0.txt", what=list(w=numeric(0), x=numeric(0), 
                                                   y=numeric(0), z=numeric(0), name="character"))
my.sdata0
my.mat <- as.data.frame(my.data)
my.mat[1:5, ]

my.sdata1 <- scan(file="iris-data1.txt", what=list(n=integer(0), w=numeric(0), 
                                                   x=numeric(0), y=numeric(0), z=numeric(0), name="character"), skip=1)
str(my.sdata1)
my.sdata1$n


# 33/63
x <- 1:10000; s <- sample(x, 10)
a1 <- which(x %in% s)
a2 <- intersect(x, s)
a3 <- which(is.element(x, s))

for(i in 1:10000){
  for(j in 1:10){
    if(all.equal(x[i], s[j])){
      cat("..")
    }
  }
}

n <- 10000
p <- 1000
Mat <- matrix(rnorm(n*p), nrow=n, ncol=p)
system.time(apply(Mat, 1, sum))

system.time(rowSums(Mat))


# 34/63
n <- 1000
p <- 1000
Mat <- matrix(rnorm(n*p), 
nrow=n, ncol=p)

system.time(write.table(Mat, file="myData.txt"))

system.time(read.table("myData.txt"))

system.time(save(Mat, file="myData.gz"))

system.time(load("myData.gz"))

system.time(save(Mat, file="myData.Rdata", compress=FALSE))

system.time(load("myData.Rdata"))


# 36/63
library(foreign)
dataset <- read.spss("electric.sav", to.data.frame=TRUE)
dim(dataset)
head(dataset)

dataset2 <- read.spss("test-spss-data.sav", to.data.frame=TRUE) 


# 37/63
library(memisc)
dataset2 <- as.data.set(spss.system.file("test-spss-data.sav"))
dim(dataset2)
head(dataset2)
str(dataset2)
dataset2$一.1 #第一個欄位資料
dataset2$服務品質


# 38/63
read.xlsx(file, sheetIndex, sheetName=NULL, rowIndex=NULL,
          startRow=NULL, endRow=NULL, colIndex=NULL,
          as.data.frame=TRUE, header=TRUE, colClasses=NA,
          keepFormulas=FALSE, encoding="unknown", ...)


# 39/63
library(xlsx)
mydata.sheet1 <- read.xlsx("mydata.xlsx", 1) 
head(mydata.sheet1)

str(mydata.sheet1)


# 40/63
myCol <- c("integer", NA, rep("character", 2), rep("numeric", 8))
mydata.sheet2 <- read.xlsx("mydata.xlsx", 2, startRow=3, 
header=TRUE, encoding="UTF-8",
colClasses=myCol) 
head(mydata.sheet2, 2)

str(mydata.sheet2)

colnames(mydata.sheet2) <- c(colnames(mydata.sheet2)[1:4],
                             paste("Quiz", 1:4, sep=""), "TA", "MidCore1", "MidCore2", "MidSum")
head(mydata.sheet2, 2)

write.xlsx(mydata.sheet2, "calculus.xlsx") 

# 41/63
library(readxl)
readxl_example()
xlsx_example <- readxl_example("datasets.xlsx")
xlsx_example
mydata <- read_excel(xlsx_example) # reads both xls and xlsx.
head(mydata, 3)

# 42/63
xlsx_file <- "mydata.xlsx"
excel_sheets(xlsx_file) # List the sheet names
mydata <- read_excel(xlsx_file, sheet = "工作表1", na = "NA")
head(mydata, 3)
str(mydata)
read_excel(xlsx_file, n_max = 3, na = "NA")


# 43/63
read_excel(xlsx_file, range = "C1:E4")
read_excel(xlsx_file, range = cell_rows(1:4))
read_excel(xlsx_file, range = cell_cols("B:D"), na = "NA")
# write data to a excel file

outdata <- list(iris = iris, airquality = airquality)
library(openxlsx)
write.xlsx(outdata, file = "outdata.xlsx")

# 38/63
library(haven)
math <- read_sav("D:/math.sav") # read spss data file
View(math)
meat <- read_sas("D:/meat.sas7bdat")
View(meat)


# 44/63
library(haven)
math <- read_sav("D:/math.sav") # read spss data file
View(math)
meat <- read_sas("D:/meat.sas7bdat")
View(meat)


# 46/63
install.packages("RODBC", repos = "http://cran.csie.ntu.edu.tw")
library(RODBC)
con <- odbcConnect('MyData-Excel')

(test.data <- sqlFetch(con, '工作表1')) # returns a data frame object

odbcClose(con)

sqlTables(con) 


# 48/63
library(RODBC)
con <- odbcConnect(dsn = 'hmwu.idv', uid = "hankwu", pwd = "xxxxx")


# 50/63
library(DBI) 
library(gWidgets)
library(RMySQL)
library(dbConnect)
con <- dbConnect(MySQL(), dbname = "ysg-iasc", host="localhost",
username="root", password="xxxxxx") 
dbSendQuery(con,"SET NAMES utf8") #設定 UTF-8，避免中文亂碼
dbListTables(con)

data.users <- dbReadTable(con, "j31_users")
class(data.users)

head(data.users)


# 51/63
dbListFields(con, "j31_users")

sel <- "SELECT name, email, sendEmail FROM j31_users" # 使用SQL語法讀取資料
users.selected <- dbGetQuery(con, sel) 
head(users.selected)

dbDisconnect(con)


# 52/63
con <- dbConnect(MySQL(), dbname = "ysg-iasc", 
                 username="root", password="xxxxxx",
                 host="163.13.xxx.xxx", port=3306) 

con <- dbConnect(MySQL(), dbname = "ysg-iasc", username="hankwu", password="xxxxxx",
                 host="163.13.113.xxx", port=3306) 


# 53/63
memory.size(max = FALSE)
memory.size(max = TRUE)
memory.limit(size = 1024)


# 54/63
n <- 10000
p <- 200
myData <- as.data.frame(matrix(rnorm(n*p), ncol = p, nrow=n))
print(object.size(myData), units = "Mb")

write.table(myData, "myData.txt") ## 約 34.7 MB
InData <- read.table("myData.txt")
print(object.size(InData), units = "Mb")


# 55/63
library(Hmisc)
weight <- c(21, 65, 43)
height <- c(164, 182, 170)
label(weight) <- "體重"; label(height) <- "身高"
units(weight) <- "公斤"; units(height) <- "公分"
weight

height

mydata <- data.frame(weight=weight, height=height)
mydata

label(mydata)

# units(mydata) can't work
# apply(mydata, 2, units) can't work
lapply(mydata, units)


# 56/63
getwd()
list.dirs()
list.files() # dir()
list.files(R.home())
dir("./data", pattern = "txt$")
file.info(dir())


# 60/63
x <- c("曾寶儀", "蔡依琳", "吳瀞惠", "林志玲", "李伃晞")
Encoding(x) 
getOption("encoding") # options(encoding="utf-8")
options(stringsAsFactors = FALSE)
(mydata1 <- read.table("NameAge1.txt", header = T, sep="\t"))
read.table("NameAge2.txt", header = T, sep="\t")
read.table("NameAge2.txt", header = T, sep="\t", fileEncoding = "utf8", encoding = "UTF-8")
read.csv("NameAge2.txt")


# 61/63
library(readr)
(mydata2 <- read_delim("NameAge2.txt", delim="\t"))
mydata2$姓名
as.data.frame(mydata2)
Encoding(mydata2[[1]])
enc2native(mydata2[[1]])
enc2utf8(mydata2[[1]])

str(mydata2)

c(mydata2)[[1]]
apply(mydata2, 2, c)  # try apply(mydata2, 2, enc2utf8)

