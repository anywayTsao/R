# 4/60
(y <- 1:5)
sum(y)
options(prompt = 'hmwu> ', continue = "+   ")
sum(y^2)
options(prompt = '> ', continue = "+   ")


# 5/60
x <- 3+5
y <- 7
objects()
ls()
rm(x, y)
rm(list = ls()) 
objects()

n <- 10000
p <- 200
myData <- matrix(rnorm(n*p), ncol = p, nrow=n)
print(object.size(myData), units = "Mb")

os <- function(x){
    print(object.size(x), units = "Mb")
}
os(myData)


# 6/60
x <- 2 
x <- vector() 
x <- matrix() 
x <- 'Hello Dolly' 
x <- c('Hello', 'Dolly') 
x <- function(){}


# 7/60
(x <- c(pi, 1/3, -1/3, -pi))
ceiling(x)
floor(x)
trunc(x)
round(x, 2)
round(x, 5)

(x <- c(1/3, 2, -4, 1.5))
ceiling(x) == floor(x)


# 8/60
getOption("digits") 
x1 <- c(-10, -0.00001, 0, 0.00001, 10) 
x2 <- c(-10, -0.00001, 0, 0.00001, 10, pi) 
x3 <- c(-12, -0.12345, 0, 0.12345, 12)
x4 <- c(1.810032e+09, 1.810032e-09, 10, pi, 0.0001, -0.0000005)
x1
x2
x3
x4
cat(x1, "\n")
cat(x2, "\n")
cat(x3, "\n")
cat(x4, "\n")


# 9/60
op <- options(); 
str(op) 
options(digits = 3) 
x1
x2
x3
x4
cat(x1, "\n")
cat(x2, "\n")
cat(x3, "\n")
cat(x4, "\n")
#1.81e+09 1.81e-09 10 3.14 -5e-07 
options(op) 
options("digits")


# 10/60
x1 <- c(10, 5, 3, 6, 2.7)
x1
assign("x2", c(10, 5, 3, 6, 2.7))
x2
c(10, 5, 3, 6, 2.7) -> x3
x3
length(x1)
c(1,7:9)
c(1:5, 10.5, "next")

x1[4]
x1[2:4]
x1[c(4, 2, 1)]
x1[-3]
x1[x1<5]
x1[10]
x1[2] <- 32; x1
x1[c(1, 3, 5)] <- c(1,2,3)
x1


# 11/60
(y1 <- 1/x1)
length(y1)
v1 <- x1 + y1+1; v1; length(v1)
(y2 <- c(x1, 0, x1)); length(y2)
length(x1)
(v2 <- x1 + y2 + 1); length(v2)


# 13/60
?mean
# mean(x, trim = 0, na.rm = FALSE, ...)


# 14/60
x <- c(1.58, -0.29,  0.59, -0.38,  0.72)
max(x)
min(x)
range(x)
c(min(x), max(x))
mean(x)
sum(x)/length(x)

var(x)
sum( (x-mean(x))^2)/(length(x)-1)
sqrt(var(x))
median(x)
summary(x)
sort(x)
rank(x)


# 15/60
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
x <- 1:10
y <- 10:2
2*1:10 
n <- 10
1:n-1
1:(n-1)
width <- 1
seq(from = 2, to = 5, by = width)
2:5
s1 <- seq(-5, 5, by = 0.2) 
s2 <- seq(length = 51, from = -5, by = 0.2)


# 16/60
rep(x, times=5)
rep(x, each=5)
rep(1:4, each=5)
rep(LETTERS[1:4], 3)
rep(LETTERS[1:4], length.out=3)

# 17/60
# 1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
rep(1:5, 1:5)

# 5 4 4 3 3 3 2 2 2 2 1 1 1 1 1
rep(5:1, 1:5)

# 1 2 3 1 2 3 1 2 3
rep(1:3, 3)

# 0 1 1 2 3 5 8 13 21 34 55
 fibonacci <- function(n) {
   result <- c(0, 1)
   while(length(result) < n) {
     num <- sum(result[(length(result)-1):length(result)])
     result <- c(result, num)
   }
   print(result)
 }
fibonacci(11)

  #TODO: 1 2 3 4 5 2 3 4 5 3 4 5 4 5 5
       # 1 1 1 1 1 2 2 2 2 3 3 3 4 4 5
        rev(rep(5:1, 1:5))
       # 0 1 2 3 4 0 1 2 3 0 1 2 0 1 0 
        c(0:4,0:3,0:2,0:1,0) 
# rep(1:5, times = 5) + rep(0:4, each = 5)


# 1 6 13 22 33 46 ...

# 1 2 3 4 9 8 27 16 ...

# 18/60
(x > 10)
x != 20
(x > 10) & (x != 20)
(x > 10) | (x != 20)

x <- c(12, 4, 7, 20, 13)
x < 15
x <= 15
x > 13
x >= 10
x == 12
x != 20
(x = 3)

(x >= 10)
1*(x >= 10)
(x >= 15)
2*(x >= 15)


# 20/60
x <- c(NA, 0 / 0, Inf - Inf, Inf, 5) # Inf is a number. 
x
y <- data.frame(x, is.na(x), is.nan(x), x == Inf, x == 5)
y
colnames(y) <- c("x", "is.na(x)", "is.nan(x)", "x == Inf", "x == 5")
y


# 21/60
(x <- "x-values") 
(y <- "New iteration results")
(answer1 <- c("a1", "a2", "b1", "b3"))
(answer2 <- c('a1', 'a2', 'b1', 'b3'))
(answer3 <- c('a', "a2", 3))

(answer4 <- c('My name is "Hank"'))
(answer5 <- c("My name is 'Hank'"))

paste("A", 1:6, sep = "")
paste("Today is", date()) 
labs <- paste(c("X", "Y"), 1:10, sep = "")
labs


# 22/60
cat("How are you?", "\n", "I'm fine.", "\n")
cat("How are you?", "\t", "I'm fine.", "\n")
cat("How are you?", "\b\b\b", "I'm fine.")


# 23/60
x <- c(7, 2, 4, 9, NA, 4)
x[2]
x[5]
x[0] 
x[10]

y <- x[!is.na(x)]
y
(x+1)[(!is.na(x))&(x>0)] -> z
z

rep(c(1,2,2,1), times=3)
c("x","y")[rep(c(1,2,2,1), times=3)]


# 24/60
x <- c(7, 2, 4, 9, NA, 4)
x[-2]
x[-(1:3)]

x <- c(7, 2, 4, 9, NA, 4)
x[is.na(x)] <- 0
x
y <- c(-7, 2, 4, 9, 0, -4)
abs(y)
y[y<0] <- - y[y<0]
y

fruit <- c(5, 10, 1, 20)
fruit
names(fruit) <- c("orange", "banana", "apple", "peach")
fruit
lunch <- fruit[c("apple", "orange")]
lunch


# 25/60
x <- c(A = 5, B = 3, third = 10)
x
x[1]
x["A"]
x[c("third", "B")]
x[c(3, 1)]
names(x)
names(x) <- c("AA", "BB", "CC") 
x

"A" < "B"
"Hank" <= "Tom"
"201" < "1"
c("201", "001") < "1"
c("1", "A", "a") < "a"
TRUE < FALSE
T > F
1 < "a"
T < "a"
"a" < FALSE

1 > T
1 < T
1 == T

0 < F
0 > F
0 == F


# 26/60
scores <- c(60, 49, 90, 54, 54, 48, 61, 61, 51, 49, 49)
gender <- c("f", "f", "m", "f", "m", "m", "m", "m", "f", "f", "m")
levels(gender)
gender.f <- factor(gender)
gender.f
levels(gender.f)
table(gender.f)

levels(gender.f) <- c("?k", "?k")
gender.f
(scores.mean <- tapply(scores, gender.f, mean))

grade <- as.factor(c("B", "F", "A", "C", "A", "C", "B", "A", "F", "D"))
levels(grade)
grade2 <- ordered(grade, levels = rev(levels(grade)))
grade2

grade2[which(grade2 >= "B")]
grade2[grade2 >= "B"]


# 27/60
MyLetter <- c("C", "D", "A", "K", "A", "I", "J", "I", "K", "H", "A", "K", "K", "B", "E", "H", "G", "L", "H", "H", "I", "K", "B", "D")
MyLetter.factor <- factor(MyLetter)
MyLetter.factor
table(MyLetter.factor)
MyLetter.ordered <- factor(MyLetter, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"), ordered = TRUE)
MyLetter.ordered[1] < MyLetter.ordered[2]
table(MyLetter.ordered)


# 28/60
z <- 1:30
z
dim(z) <- c(3,5,2)
z

z[1,3,2]
z[1,1,]
z[1,,2]
z[1,1:2,1]
z[-1,,]


# 29/60
x <- array(1:20, dim=c(4,5))
x
i <- array(c(1:3, 3:1), dim=c(3,2))
i
x[i] <- 0
x

x <- c(1,2,3,4,5)
x
z <- array(x, dim=c(3,4))
z
t(z) 


# 30/60
temperature
tempArray <- array(0, dim=c(5,2,2))
tempArray[,,1] <- as.matrix(temperature[,c(1,3)])
tempArray[,,2] <- as.matrix(temperature[,c(2,4)])
tempArray

colnames(tempArray) <- c("January", "February")
rownames(tempArray) <- rownames(temperature)
dimnames(tempArray)[[3]] <- c("min", "max")
dimnames(tempArray)
tempArray


# 31/60
x <- 1:20
A <- matrix(x, ncol=4)
A
A.1 <- matrix(x, ncol=4, byrow=TRUE)
A.1
nrow(A)
ncol(A)

dim(A)
diag(A)
B <- matrix(x+2, ncol=4)
A * B 
A %*% t(B) 

x <- 4
diag(x) 


# 32/60
apply(mat, 1, mean)
apply(mat, 2, mean) # column means
apply(mat, 1, var) # row variances
apply(mat, 2, var) # column variances
mean(mat)
var(mat)
summary(mat)

mat <- matrix(1:20, ncol=5)
mat
id <- mat[, 2] > 5
id
mat[id, ]


# 33/60
(y <- array(1:15, dim=c(3, 5)))
dim(y)
x <- matrix(1:15, 3, 5)
x
x[1]
x[6]
x <- matrix(1:15, 3, 5, byrow=TRUE)
x
x[1]
x[6]

y[2, 4]
y[1,]
y[,1]
y[2:3, ]
y[-2,]
y[,-2]
dimnames(y)
rownames(y)
colnames(y)


# 34/60
x <- c(1, 2, 3, 4, 5)
y <- c(0.5, 0.4, 0.3, 0.2, 0.1)
(z1 <- cbind(x,y))
(z2 <- rbind(x,y))

(A <- rbind(x,y))

(x <- matrix(1:20, ncol=4, nrow=5))
(y <- matrix(3:10, ncol=4))
(z <- matrix(rep(1:5, 2),nrow=5))

(B <- cbind(x,z))


# 36/60
my.list <- list(name="George", 
                  wife="Mary", 
                  no.children=3, 
                  child.ages=c(4,7,9))
my.list


# 37/60
my.list

my.list[1]
my.list[[1]] 
my.list[[2]]
my.list[[4]][1]
my.list$name
my.list$wife
my.list$child.ages[1] 
x <- "name"
my.list[[x]]
my.list[1] 
my.list[2]


# 38/60
my.list <- list(name=c("George", "John", "Tom"),
                  wife=c("Mary", "Sue", "Nico"), 
                  no.children=c(3, 2, 0), 
                  child.ages=list(c(4,7,9), c(2, 5), NA))

my.list$name
my.list$wife
my.list$no.children
my.list$name[3]
my.list$name == "John"
my.list$child.ages

my.list$child.ages[2]
my.list$child.ages[[2]]
my.list$child.ages[2][1]
my.list$child.ages[[2]][1]
my.list$child.ages[[2]][2]
length(my.list)

my.list[[c(2, 3)]]
my.list[c(2, 3)]


# 39/60
my.matrix <- matrix(1:15, ncol=3)
my.matrix
my.data <- data.frame(my.matrix)
my.data

my.data[1, ]
my.data[2, 3]
my.data$X1
my.data[, "X1"]
my.data["X1"]
rownames(my.data)
row.names(my.data)
names(my.data)


# 40/60
rownames(my.data) <- c(paste("s", 1:5, sep="."))
colnames(my.data) <- c("A1", "A2", "A3")
my.data

subjects <-c ('Chinese', 'Math', 'English')
scores <- c(50, 90, 61)
pass <- scores >= 60
student <- data.frame(subjects, scores, pass)
student
student["2",] 
student[,"scores"]

attach(my.data)
A1
A2
A3
detach()
A1


# 41/60
index.1 <- iris[, "Species"] == "virginica"
iris[index.1, ]
iris[Species == "virginica",]
iris[!(Species == "virginica"),]
m <- mean(iris$Sepal.Length)
index.3 <- iris[, "Sepal.Length"] > m
iris[index.3, ]


# 42/60
x1 <- rnorm(5)
x2 <- rnorm(5)
x1
class(x1)
data.frame(Var1=x1, Var2=x2)
        Var1       Var2

y1 <- data.frame(rnorm(5))
y2 <- data.frame(rnorm(5))
y1
class(y1)
data.frame(Var1=y1, Var2=y2)
     rnorm.5. rnorm.5..1


# 43/60
class(iris)
head(iris, 3)
x1 <- iris[1]
head(x1)
class(x1)
x2 <- iris[[1]]
head(x2)
class(x2)
x3 <- iris["Sepal.Length"]
class(x3)
x4 <- iris[, "Sepal.Length"]
class(x4)

iris.copy <- iris
iris.copy[3] <- NULL
head(iris.copy, 3)
iris.copy <- iris
iris.copy[[3]] <- NULL
head(iris.copy, 3)
iris$species
NULL
iris$Species


# 44/60
iris.range <- aggregate(iris[, 1:4], by=list(iris[, 5]), range)
str(iris.range)
iris.range
class(iris.range)
iris.range$Sepal.Length
class(iris.range$Sepal.Length)
dim(iris.range)
iris.range[,1:3]


# 45/60
as.Date("1985-6-16")
as.Date("2019/02/17")
as.Date(1000, origin = "1900-01-01")
as.Date("2/15/2011", format = "%m/%d/%Y")
as.Date("April 26, 1993", format = "%B %d, %Y")
as.Date("22JUN01", format = "%d%b%y") 
seq(as.Date('1976-7-4'), by = 'days', length = 10)
seq(as.Date('2010-2-1'), to = as.Date('2010-4-1'), by='2 weeks')

lct <- Sys.getlocale("LC_TIME"))
Sys.setlocale("LC_TIME", "C")


# 46/60
Sys.time()
substr(as.character(Sys.time()), 1, 10)
substr(as.character(Sys.time()), 12, 19)
date()

my.date <- as.POSIXlt(Sys.time())
my.date
my.date$sec
my.date$min
my.date$hour

now <- Sys.time()
as.POSIXct(now)
as.POSIXlt(now)
class(now)

my.date$mday
my.date$mon
my.date$year + 1900
my.date$wday
my.date$yday


# 47/60
as.POSIXct("1969-12-31 23:59:59", format = "%Y-%m-%d %H:%M:%S", tz = "UTC") 
as.POSIXlt(Sys.time(), "GMT") 


# 48/60
x1 <- c("20040227", "20050412", "19930922")
strptime(x1, format="%Y%m%d")
x2 <- c("27/02/2004", "27/02/2005", "14/01/2003")
strptime(x2, format="%d/%m/%Y")
x3 <- c("1jan1960", "2jan1960", "31mar1960", "30jul1960")
strptime(x3, "%d%b%Y")

dates <- c("02/27/92", "02/27/92", "01/14/92", "02/28/92", "02/01/92")
times <- c("23:03:20", "22:29:56", "01:03:30", "18:21:03", "16:56:26")
x <- paste(dates, times)
strptime(x, "%m/%d/%y %H:%M:%S")


# 49/60
ts(1:10, frequency = 4, start = c(1959, 2)) 
my.ts <- ts(1:10, frequency = 7, start = c(12, 2))
class(my.ts)
print(my.ts, calendar = TRUE)

gnp <- ts(cumsum(1+round(rnorm(100), 2)), start = c(1954, 7), frequency = 12)
gnp
plot(gnp) 


# 50/60
z <- ts(matrix(rnorm(300), 100, 3), start = c(1961, 1), frequency = 12)
head(z, 3)
tail(z, 3)
class(z)
plot(z)
plot(z, plot.type = "single", lty = 1:3)


# 51/60
(z <- 0:9)
mode(z)
(digits <- as.character(z))
mode(digits)
(d <- as.integer(digits))
mode(d)
(x <- z[1:5]>3)
mode(x)


# 52/60
x1 <- 10
class(x1)
x2 <- seq(1, 10, 2))
class(x2)

my.f <-  formula(iris$Sepal.Length ~ iris$Sepal.Width)
class(my.f)
class(lm(my.f))
class(aov(my.f))

class(iris)
(iris.sub <- iris[5:10, 1:4])
class(iris.sub)
class(as.matrix(iris.sub))

as.list(iris.sub)
class(as.list(iris.sub))


# 53/60
ex1 <- expression(1 + 0:9)  # expression object
ex1
eval(ex1)
class(ex1)
hi <- function(){
    cat("hello world!\n")
}
hi()
class(hi) 

d <- data.frame(V1 = c(1,2))
class(d)
mode(d)
typeof(d)

(r.dates <- strptime(c("27/02/2004", "27/02/2005"), format="%d/%m/%Y"))
class(r.dates)


# 54/60
x <- matrix(1:10, ncol=2)
x
attributes(x)
attr(x, "dim")
dim(x)

x <- data.frame(matrix(1:10, ncol=2))
x
attributes(x)
attr(x, "names")
names(x)

gender.f
str(gender.f)
class(gender.f)
attributes(gender.f)


# 55/60
beta <- c(1, 3, 5, 2, 4, 6, 11, NA, NA, 22)
length(beta)
length(beta[!is.na(beta)])
e <- numeric() # empty object
e[3] <- 17
length(e)
e
(alpha <- numeric(10))
length(alpha)
alpha <- alpha[2*1:5]
length(alpha)
length(alpha) <- 3 
alpha

myf <- formula(y ~ x1 + x2 + x3)
length(myf) 
str(myf)
myf[1]
myf[2]
myf[3]
myf[4]

mye <- expression(x, {y <- x^2; y+2}, x^y)
length(mye)  
str(mye)

mye <- expression(x, {y <- x^2; y+2}, x^y)
length(mye)  
str(mye)


# 56/60
x <- 1:12
str(x)
ch <- letters[1:12]
str(ch) 
str(iris)
str(ls)  
str(str)
myp <- plot(iris[,1], iris[,2])
str(myp)

(x <- as.Date("1985-6-16"))
str(x)
(y <- strptime("27/02/2004", format="%d/%m/%Y"))
str(y)


# 57/60
my.f <-  iris$Sepal.Length ~ iris$Sepal.Width
my.f
str(my.f)

my.lm <- lm(my.f)
my.lm
str(my.lm)

my.lm$qr$tol

attr(my.lm$terms, "variables")


# 58/60
my.lm.s <- summary(my.lm)
my.lm.s
str(my.lm.s)

mye <- expression(x, {y <- x^2; y+2}, x^y)
mye


# 60/60
xy.matrix <- cbind(c(1, 2, 3), c(15, 16, 17))
xy.matrix
class(xy.matrix)
xy.df <- data.frame(t(xy.location))
xy.df
class(xy.df)
xy.list <- as.list(xy.df)
xy.list
class(xy.list)

Titanic
class(Titanic)
data.frame(Titanic)


