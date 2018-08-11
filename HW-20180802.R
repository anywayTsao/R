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