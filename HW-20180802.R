# [1] 1 2 3 4 5 6 2 3 4 5 6 3 4 5 6 4 5 6 5 6 6
sequence(c(6,5,4,3,2,1)) + rep(0:6, 6:0)

# [1] "b" "d" "f" "h" "j" "l" "n" "p" "r" "t" "v" "x" "z" "a" "c" "e" "g" "i"
#[19] "k" "m" "o" "q" "s" "u" "w" "y"
c(letters[seq(2, 26, by = 2)], letters[seq(1, 26, by = 2)])

c(1,-1) / seq(1, 100)

# 8 7 6 5 7 6 5 4 6 5 4 3 5 4 3 2 4 3 2 1
rev(rep(1:4, 5) + rep(0:4, each = 4))

# [1]  3  7 11 15 19 23 27 31 35 39
seq(3,39, by=4)


my.mat <- matrix(c(1, 5, 8, 7, 0, 6, 3, 2, 9, 10, 4, 11 ), nrow = 4, ncol = 3, byrow = TRUE,
                 dimnames = list(c("no.1", "no.2", "no.3", "no.4"),
                                 c("var.1", "var.2", "var.3")))
my.mat[order(my.mat[,"var.3"]),]

# 9*9 table
myNine <- vector("list", 9)
for(i in 1:9) {
  mytemp <- numeric(9)
  for(j in 1:9) {
    mytemp[j] <- paste(i, "*", j, "=", i*j)
  }
  #str(mytemp)
  myNine[[i]] <- mytemp
}
names(myNine) <- c(1:9)

myNine$'1'[2]
myNine$'9'[9]

set.seed(123456)
x <- rnorm(20)
y <- runif(20)
cor(x, y)

myCor <- function(x, y) {
    
    diff.x <- x - mean(x)
    diff.y <- y - mean(y)
    
    a <- sum((diff.x)*(diff.y)) 
    b <- sqrt(sum((diff.x)^2)) * sqrt(sum((diff.y)^2))
    
    a/b
}

myCor(x, y)

# write excel sample
xlsx_file <- "mydata.xlsx"
cname <- c("No", "Department", "ID", "Name", "Quiz1", "Quiz2", "Quiz3", "Quiz4", "Mean", "MidCore1", "MidCore2", "MidSum")
# read excel file
calculus <- read_excel(path = xlsx_file, sheet = "calculus", na = "", col_names =  cname, skip = 3)
# replace NA with 0
calculus[is.na(calculus)] <- 0
# write excel
write_xlsx(calculus, path = "caculus.xlsx")


# 曹維中 先生，您好：
# 
# 結果如下：	
# 統計學系碩士在職專班 1 年級 710778907


library(readxl)
xlsx_file <- "aaa.xls"
cname <- c("期間","案類別","強盜","搶奪","強制性交","汽車竊盜","住宅竊盜","毒品","機車竊盜")

crime <- read_excel(path = xlsx_file, sheet = "crime", na = "", col_names =  cname, skip = 1)
head(crime, 5)
tail(crime, 5)
str(crime)

stock.data <- read.table("stock-data.txt", skip = 1, header = T)
head(stock.data, 5)
tail(stock.data, 5)

set.seed(123456)
midterm <- sample(0:100, 50, replace = TRUE)
extra <- sample(0:100, 50, replace = TRUE)

weighted.mean(c(100,50) , c(0.4, 0.6))

score.result <- function(midterm, extra){
  my.weightedMean <- weighted.mean(c(midterm, extra), c(0.4, 0.6))
  
  ifelse(my.weightedMean > midterm, my.weightedMean, midterm)
}
mapply(score.result, midterm, extra)

score.result <- function(midterm, extra){
  student.size <- length(midterm)
  score.final <- numeric(student.size)
  for (i in 1: student.size) {
    ifelse(midterm[i] >= extra[i], 
           score.final[i] <- midterm[i],
           score.final[i] <- weighted.mean(c(midterm[i], extra[i]), c(0.4, 0.6))
           )
  }
  #return(score.final)
  result <- list(mean=mean(score.final),
                 variance=var(score.final),
                 failed=(sum(score.final<60)/student.size))
  return(result)
}
score.result(midterm, extra)

x <- -5:5
my.function <- function(x){
  if (x < 0) {
    return(abs(x^2+x))
  } else if (x < 3) {
    return(sin(x))
  } else if (x >= 3) {
    return(3*exp(x))
  }
}
fx <- mapply(my.function, x)
data.frame(x, fx)

set.seed(123456)
id <- sample(1:150, 30)
x <- iris[id, 1]
y <- iris[id, 5]

my.fisher <- function(x, y) {
  xbar <- mean(x)
  group.mean <- tapply(x, y, mean)
  my.BBS <- sum((group.mean-xbar)^2)
  my.WSS <- sum((x - group.mean[y])^2)
  
  return(list(BBS=my.BBS, WSS=my.WSS, fisher.index=my.BBS/my.WSS))
}
my.fisher(x, y)

