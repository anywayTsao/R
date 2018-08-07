# 3/100
getwd()
setwd("C:\\Program Files\\R\\working")


# 5/100
x <- 1
if((x-2) < 0) cat("expr2 \n") else cat("expr3 \n") #expr2
if((x-2) > 0) cat("expr2 \n") else cat("expr3 \n") #expr3

x <- c(-1, 2, 3)
if((x-2) < 0) cat("expr2 \n") else cat("expr3 \n") #expr2
if((x-2) > 0) cat("expr2 \n") else cat("expr3 \n") #expr3


# 6/100
x <- 0
if(x) cat("expr2 \n") else cat("expr3 \n") #expr3
if(x+1) cat("expr2 \n") else cat("expr3 \n") #expr2

x <- c(-1, 0, 1, 2,3)
if(x) cat("expr2 \n") else cat("expr3 \n") #expr2
if(x+1) cat("expr2 \n") else cat("expr3 \n") #expr3


# 7/100
x <- c(-1, 2, 3)
if(any(x <=0)) y <- log(1+x) else y <- log(x)
y
z <- if(any(x<=0)) log(1+x) else log(x) 
z

x <- c(-1, 2, 3)
if(any(x <=0)){ 
     y <- log(1+x) 
 } else{ 
    y <- log(x)
 }
y
# x <- c(-1, 2, 3)
# if(any(x <=0)){ 
#   y <- log(1+x)
# } 
# else{ 
#   y <- log(x)
# }
# y

x <- c(-1,2,3)
if(any(x <=0)){ 
    y <- log(1+x) 
} else{
   y <- log(x)
}

x <- c(-1,2,3)
if(any(x <=0)){ 
   y <- log(1+x) 
} else {
   y <- log(x)
}

# 8/100
check.if <- function(a, b){
  if(a == b){
    cat("Equal! \n")
  }else{
    cat("Not equal! \n")  
  }
}

check.if2 <- function(a, b){
  if(sum(abs(a - b)) == 0){
    cat("Equal! \n")
  }else{
    cat("Not equal! \n")  
  }
}

a <- sample(1:10, 4)
b <- a
check.if2(a, b)

check.if(a = 1, b = 1)
check.if(a = 1, b = 2)
check.if(a = 1, b = c(1, 2, 3))
check.if(a = 1, b = c(2, 1, 3))
check.if(a = c(1, 2, 3), b = c(1, 2, 3))
check.if(a = c(2, 4, 5), b = c(1, 2, 3))
check.if(a = c(1, 5), b = c(4, 2, 3))

identical(a, b) 
all.equal(pi, 355/113) 

# 9/100
a <- c(T, T, T, F, T, F)
b <- c(F, F, T, T, T, F)

a | b
a & b

a || b
a && b

# 10/100
x <- 3
y <- 4
x < 2 # F
y > 2 # T
x < 2 || y > 2 # T
x > 2 # T
y > x # T
x > 2 && y > x # T

x < 2 | y > 2 # T 
x > 2 & y > x # T

xv <- c(1, 2, 3)
yv <- c(2, 2, 5)
xv < 2
yv > 2
xv < 2 || yv > 2
(! xv < 2) || yv > 2
xv < 2 || (! yv > 2)
xv < 2 && yv > 2
(! xv < 2) && yv > 2
xv < 2 && (! yv > 2)

xv < 2 | yv > 2
(! xv < 2) | yv > 2 # F T T
xv < 2 | (! yv > 2) # T T F
xv < 2 & yv > 2 # F F F
(! xv < 2) & yv > 2 # F F T
xv < 2 & (! yv > 2) # T F F


# 11/100
a <- 2.13

if( a > 10 ){
    cat("a > 10 \n")
}else if(a > 5){
    cat("5 < a < 10 \n")
}else if(a > 2.5){
    cat("2.5 < a < 5 \n")
}else if(a > 1.25){
    cat("1.25 < a < 2.5 \n")
}else{
    cat("a < 1.25")
}

1.25 < a < 2.5 

x <- 0
if (x < 0) {
   print("Negative number")
} else if (x > 0) {
   print("Positive number")
} else
   print("Zero")


# 12/100
(x <- c(2:-1))
sqrt(x)
sqrt(ifelse(x >= 0, x, NA))
ifelse(x >= 0, sqrt(x), NA)

(yes <- 5:6)
(no <- pi^(0:2))
ifelse(NA, yes, no)
ifelse(TRUE, yes, no)
ifelse(FALSE, yes, no)


# 13/100
x <- c(24, 13, 26, 21, 7, 9, 2, 1, 30, 14, 20, 16, 6, 4, 012, 8, 11, 22, 18, 3)
x
ifelse(x <= 10, 1, ifelse(x <= 20, 2, 3))

set.seed(12345)
age <- sample(1:100, 20)
age
# category age data 1~20 to A, 21~40 to B, 41~60 to C, else D
ifelse(age <= 20, "A", ifelse(age <= 40, "B", ifelse(age <= 60, "C", "D")))

set.seed(12345)
code <- sample(LETTERS[1:5], 20, replace=T)
code
# category code A and E to 1, B and D to 3, C to 2
ifelse(code %in% c("A", "E"), 1, ifelse(code %in% c("B", "D"), 3, 2))

# 14/100
set.seed(12345)
score <- sample(0:100, 10, replace=T)
score

gpa.table <- data.frame(grade=c("A", "B", "C", "D", "E"),
                        pscore=c("80-100", "70-79", "60-69", "50-59", "49-0"),
                        GPA=c(4, 3, 2, 1, 0))
gpa.table
gpa.table[1:5,]

set.seed(12345)
sample(0:100, 10, replace=T)
score <- sample(0:100, 10, replace=T)

score_to_gpa <- function(x){
  
    group.id <- ifelse(x >= 80, 1,
                     ifelse(x >= 70, 2,
                            ifelse(x >= 60, 3,
                                   ifelse(x >= 50, 4, 5))))
    return (data.frame(score=x, gpa.table[group.id,], row.names = LETTERS[1: length(x)]))
}

score_to_gpa(score)

score_to_gpa_with_frame <- function(x, myFrame, myRowNames = 1: length(x)) {
  
  group.id <- ifelse(x >= 80, 1,
                     ifelse(x >= 70, 2,
                            ifelse(x >= 60, 3,
                                   ifelse(x >= 50, 4, 5))))
  return (data.frame(score=x, myFrame[group.id,], row.names = myRowNames))
}

score_to_gpa_with_frame(score, gpa.table, LETTERS[1: length(score)])
score_to_gpa_with_frame(score, gpa.table)

# input parameter check, only with it passed in
cylinder.volume <- function(height, radius)
{
  if (height < 0) stop("\n'height' must be >= 0")
  if (radius < 0) stop("\n'radius' must be >= 0")
  pi * radius^2 * height  
}

cylinder.volume(height = 1, 
                radius = -4)

# 20/100
my.dist <- function(x1, y1, x2, y2){
  d <- sqrt((x1-x2)^2 + (y1-y2)^2)
  d
}

score <- sample(0:100, 50, replace = TRUE)

ratio_checker <- function(x) {
  # score
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  lower = (m - s)
  upper = (m + s)
  result <- x[(lower < x) && (x < upper)]
  ratio <- length(result) / length(x)
  
  list(down = lower, up = upper, result = result, size = length(result), ratio = ratio)
}

ratio_checker(score)

my.dist2 <- function(x1, y1, x2=0, y2=0){
  d <- sqrt((x1-x2)^2 + (y1-y2)^2)
  list(points.a=c(x1, y1), points.b=c(x2, y2), dist.ab=d)
}

my.dist(1, 2, 4, 7)

my.dist2(1, 2, 4, 7) 

my.dist2(1, 2) 


# 21/100
my.dist <- function(a, b){
   sqrt(sum((a-b)^2))
}

my.dist(a=c(1, 2), b=c(4, 7))

f <- function(x){
  x^2+1
}
 
x <- 1:5
y <- f(x)
y

x <- 1:5
y <- x^2+1
y


# 22/100
min(5:1, pi)
pmin(5:1, pi)

parmax <- function(a, b){
	c <- pmax(a,b)
	median(c)
}
x <- c(1,9,2,8,3,7)
y <- c(9,2,8,3,7,2)
parmax(x,y)

data.ratio <- function(x){
    x.number <- length(x)
    x.up <- mean(x) + sd(x)
    x.down <- mean(x) - sd(x)
    x.n <- length(x[x.down < x & x < x.up])
    x.p <- x.n/x.number
    list(number=x.n, percent=x.p)
}


data.ratio(iris[,1])


# 23/100
compute <- function(a, b=0.5){

    sum <- a+b
    diff <- a-b
    prod <- a*b
    if(b!=0){
      div <- a/b
    }else{
      div <- "divided by zero"
    }
    list(sum=sum, diff=diff, product=prod, divide=div)    
}

norm <- function(x) sqrt(x%*%x)
norm(1:4)

compute(2, 5)

compute(2)

compute(2, 0)


# 24/100
two.sample.test <- function(y1, y2){
    n1 <- length(y1); n2 <- length(y2);
    m1 <- mean(y1); m2 <- mean(y2);
    s1 <- var(y1); s2 <- var(y2);
    v <- ((n1-1)*s1 + (n2-1)*s2)/(n1+n2-2);
    s <- sqrt(((n1-1)*s1 + (n2-1)*s2)/(n1+n2-2));
    stat <- (m1-m2)/sqrt(v*(1/n1+1/n2));
    
    list(means=c(m1, m2), pool.var=v, pool.std=s, stat=stat);
}
t.stat <- two.sample.test(iris[,1], iris[,2]) 
t.stat 
t.stat 

t.test(iris[,1], iris[,2]);
my.studentT <- function(x, y) {
  x.length <- length(x);  y.length <- length(y);
  x.mean <- mean(x);  y.mean <- mean(y);
  x.var <- var(x);  y.var <- var(y);
  pool.std <- sqrt(((x.length-1)*x.var + (y.length-1)*y.var) / (x.length+y.length-2));
  t <- (x.mean - y.mean) / (pool.std * sqrt(1/x.length + 1/y.length));
  #???
  list(x.length=x.length, y.length=y.length, x.mean=x.mean, y.mean=y.mean, pool.std=pool.std, t=t);
}
my.studentT(iris[,1], iris[,2]) 

# 25/100
rm(list=ls())
my.sqrt.sum <- function(x, y){
    a <- sqrt(x)
    b <- sqrt(y)
    c <- a+b
    c
}

a <- 4
b <- 9
my.sqrt.sum(a, b)
a
b

rm(list=ls())
my.sqrt.sum <- function(x, y){
    a <- sqrt(x)
    b <- sqrt(y)
    c <- a+b
    c
}
my.sqrt.sum(4, 9)
a
b


# 26/100
rm(list=ls())
y <- 9
my.sqrt.sum <- function(x){
    a <- sqrt(x) 
    b <- sqrt(y)
    y <- sqrt(y)
    c <- a+b
    c
}
my.sqrt.sum(4)
a
b
y

rm(list=ls())
Y.VALUE <- 9
my.sqrt.sum <- function(x){
    a <- sqrt(x) 
    b <- sqrt(Y.VALUE)
    c <- a+b
    c
}
my.sqrt.sum(4)

rm(list=ls())
my.sqrt.sum <- function(x, y){
    x <- sqrt(x)
    y <- sqrt(y)
    c <- x+y
    c
}

x <- 4
y <- 9
x <- my.sqrt.sum(x, y)
x
y


# 27/100
myfun1 <- function(x){   
   y <- x + 5
   cat("y: ", y, "\n")
}

myfun2 <- function(x){   
   y <<- x + 5
   cat("y: ", y, "\n")
}

y <- 5; cat("y: ", y, "\n")
myfun1(3)
cat("y: ", y, "\n")

y <- 5; cat("y: ", y, "\n")
myfun2(3)
cat("y: ", y, "\n")

myfun1 <- function(x){   
   y <- x + 5
   cat("y: ", y, "\n")
}
 
myfun2 <- function(x){   
   y <<- x + 5
   cat("y: ", y, "\n")
}
 
y <- 5; cat("y: ", y, "\n")
myfun1(3)
cat("y: ", y, "\n")
 

y <- 5; cat("y: ", y, "\n")
myfun2(3)
cat("y: ", y, "\n")


# 28/100
my.stat <- function(x){
    x.number <- length(x)
    x.mean <- mean(x)
    x.sd <- sd(x)
    list(number=x.number, mean=x.mean, sd=x.sd)
}

my.stat(iris[,1])


# 29/100
lm

myfun <- function(x, ...){   
    y <- mean(...) + x
    y
}
 
data <- rnorm(40)
myfun(6, data)


# 30/100
many.means <- function(...){

    #use [[]] subscripts in addressing its elements.
    data <- list(...) 
    print(class(data))
    n <- length(data)
    print(length(data))
    means <- numeric(n)
    print(means)
    vars  <- numeric(n)
    print(vars)
    for(i in 1:n){
        means[i] <- mean(data[[i]])
	      vars[i] <- var(data[[i]])
    }

    print(means)
    print(vars)
}

x <- rnorm(100, mean=1); y <- rnorm(200, mean=2); z <- rnorm(300, mean=2)
many.means(x,y,z)


# 31/100
data.kratio <- function(x, k=1){
   x.length <- length(x)
   x.mean <- mean(x)
   x.sd <- sd(x)
   x.up <- x.mean + k*x.sd;
   x.down <- x.mean - k*x.sd;
   x.n <- length(x[(x.down < x) & (x < x.up)])
   x.p <- x.n/x.length
   list(number=x.n, percent=x.p)
}
library(MASS)
data.kratio(drivers, 1)
data.kratio(drivers, 2)
data.kratio(drivers, 3)

library(MASS)
data.kratio(drivers, 1)

data.kratio(drivers, 2)

data.kratio(drivers, 3)


# 33/100
for(i in 1:5){
    cat("loop: ", i, "\n")
}

for(k in c(1, 17, 3, 56, 2)){
    cat(k, "\t")
}

for(bloodType in c("A", "AB", "B", "O")){
    cat(bloodType, "\t")
}


# 34/100
rm(list=ls())
y <- round(rnorm(10), 2)
z <- y
y
i
for(i in 1:length(y)){
	if(y[i] < 0) 
	y[i] <-0
}
y
i

z[z<0] <- 0
z

rm(list=ls())
y <- round(rnorm(10), 2)
z <- y
y
i
for(i in 1:length(y)){
if(y[i] < 0) 
y[i] <-0
}
y
i
[1] 10

z[z<0] <- 0
z


# 35/100
a <- numeric(5)
for(i in 1:5){
  a[i]<- i^2
}
a


m <- 3
n <- 4
for(i in 1:m){
   for(j in 1:n){
     cat("loop: (", i, ",", j, ")\n")
   }
}

a <- matrix(0,2,4)
for(i in 1:2){
    for(j in 1:4){ 
       a[i,j]<- i+j
    }
}
a


# 36/100
m <- 3
n <- 4
for(i in 1:m){
   for(j in 1:n){

     if(i==2){
       cat("before next:", i,",",j, "\n")
       next
       cat("after next:", i,",",j, "\n")
     }else{
       cat("loop: (", i, ",", j, ")\n")
     }
   }
}


# 37/100
m <- 3
n <- 4
for(i in 1:m){
   for(j in 1:n){

     if(i==2){
       cat("before break:", i,",",j, "\n")
       break
       cat("after break:", i,",",j, "\n")
     }else{
       cat("loop: (", i, ",", j, ")\n")
     }
   }
}


# 38/100
check.prime <- function(num){
  
  isPrime <- FALSE
  
  if(num == 2){
    isPrime <- TRUE

  } else if(num > 2) {
    
    isPrime <- TRUE
    for(i in 2:(num-1)) {
        if ((num %% i) == 0) {
          isPrime <- FALSE
            break
        }
    }
  } 
  
  if(isPrime) {
    cat(num, "is a prime number. \n")
  } else {
    cat(num, "is not a prime number. \n")
  }
}

check.prime(2)
check.prime(13)
check.prime(25)


# 40/100
a <- 5
while(a > 0){  
    cat(a,"\n")
    a <- a-1  
    if(a==2){
        cat("before next:", a, "\n")
        next
        cat("after next:", a, "\n")
    }
}

a <- 5
while(a > 0){  
    cat(a,"\n")

    if(a == 2){
        cat("before break:", a, "\n")
        break
    }
    a <- a-1  
}

a <- 5
while(a > 0){  
    cat(a,"\n")
    if(a==2){
        cat("before break:", a, "\n")
        next
        cat("after break:", a, "\n")
    }
    a <- a-1  
}


# 41/100
factorial.for <- function(n){
    f <- 1
    if(n < 2) return(1)
    for(i in 2:n){
        f <- f*i
    }
    f
}
factorial.for(5)

factorial.while <- function(n){
    f <- 1
    t <- n
    while(t > 1){
        f <- f*t
        t <- t-1
    }
    return(f)
}
factorial.while(5)

factroial.repeat <- function(n){
    f <- 1
    t <- n
    repeat{
        if(t < 2) break
        f <- f*t
        t <- t-1
    }
    return(f)
}
factroial.repeat(5)

factorial.call <- function(n, f){     
    
    if(n <= 1){
      return(f)
    }
    else{ 
      factorial.call(n-1, n*f)
    }
}
factorial.call(5, 1)

factorial.myRecursive <- function(x) {
  if(x <= 1) {
    return(1)
  } else {
    return(x * factorial.myRecursive(x-1))
  }
}

factorial.myRecursive(4)


factorial.cumprod <- function(n) max(cumprod(1:n))
factorial.cumprod(5)
factorial(5)


# 42/100
x <- 3
switch(x, 
         cat("2+2\n"), 
         cat("mean(1:10)\n"), 
         cat("sd(1:10)\n"))

switch(3, 2+2, mean(1:10), sd(1:10))

switch(2, 2+2, mean(1:10), sd(1:10))

switch(6, 2+2, mean(1:10), sd(1:10))


my.lunch <- function(y){
    switch(y, 
           fruit="banana", 
	   vegetable="broccoli", 
	   meat="beef",
     stop(paste(y, "is not in lunch list!")))
}
my.lunch("fruit")
my.lunch("fruitssssssssssss")
my.lunch(fruit)


# 43/100
x.center <-  function(x, type){
    switch(type,
           mean = mean(x), 
           median = median(x), 
           trimmed = mean(x, trim = 0.1),
           stop("Measure is not included!"))
}

 x <- rnorm(20)
 x.center(x, "mean")
 x.center(x, "median")
 x.center(x, "trimmed")
 x.center(x, "mode")



# 44/100
my.median.1 <- function(x){
    odd.even <- length(x)%%2
    if(odd.even==0){
         (sort(x)[length(x)/2] + sort(x)[1+length(x)/2])/2
    }else{
         sort(x)[ceiling(length(x)/2)]
    }
}

my.median.2 <- function(x){
    odd.even <- length(x)%%2
    s.x <- sort(x)
    n <- length(x)
    if(odd.even==0){
        median <- (s.x[n/2] + s.x[1+n/2])/2
    }else{
        median <- s.x[ceiling(n/2)]
    }    
    return(median)
}

 x <- rnorm(30)
 my.median.1(x) 
 my.median.2(x) 
 median(x)


# 45/100
(x <- matrix(1:24, nrow=4))
apply(x, 1, sum)  
apply(x, 2, sum)
apply(x, 1, sqrt) 
apply(x, 2, sqrt)


# 46/100
math <- sample(1:100, 50, replace=T)
english <- sample(1:100, 50, replace=T)
algebra <- sample(1:100, 50, replace=T)
ScoreData <- cbind(math, english, algebra)
head(ScoreData, 5)
myfun <- function(x){
     sqrt(x)*10
}
sdata1 <- apply(ScoreData, 2, myfun)
head(sdata1, 5)

head(apply(ScoreData, 2, function(x) sqrt(x)*10), 5)
myfun2 <- function(x, attend){
    y <- sqrt(x)*10 + attend
    ifelse(y > 100, 100, y)
}
sdata2 <- apply(ScoreData, 2, myfun2, attend=5)
head(sdata2, 5)


# 47/100
tapply(iris$Sepal.Width, iris$Species, mean)
set.seed(12345)
scores <- sample(0:100, 50, replace=T)
grade <- as.factor(sample(c("?j?@", "?j?G", "?j?T", "?j?|"), 50, replace=T))
bloodtype <- as.factor(sample(c("A","AB","B","O"), 50, replace=T))
tapply(scores, grade, mean)
tapply(scores, bloodtype, mean)
tapply(scores, list(grade, bloodtype), mean)


# 48/100
n <- 20
(my.factor <- factor(rep(1:3, length = n), levels = 1:5))
table(my.factor)
tapply(1:n, my.factor, sum)

tapply(1:n, my.factor, range)

tapply(1:n, my.factor, quantile)

# not run
# > by(iris[,1:4] , iris$Species , mean)
by(iris[,1:4] , iris$Species , colMeans)

varMean <- function(x, ...) sapply(x, mean, ...)
by(iris[, 1:4], iris$Species, varMean)


# 49/100
a <- c("a", "b", "c", "d")
b <- c(1, 2, 3, 4, 4, 3, 2, 1)
c <- c(T, T, F)
 
list.object <- list(a,b,c)
 
my.la1 <- lapply(list.object, length)
my.la1

my.la2 <- lapply(list.object, class)
my.la2


# 50/100
rep(5.6, 3)
replicate(3, 5.6)
rep(rnorm(1), 3)
replicate(3, rnorm(1))
replicate(3, mean(rnorm(10)))

dice1 <- sample(1:6, 1)
dice2 <- sample(1:6, 1)
dice1 + dice2

my.dice <- function(n){
   dice.no <- sample(1:6, n)
   dice.sum <- sum(dice.no)
   output <- c(dice.no, dice.sum)
   names(output) <- c(paste0("dice", 1:n), "sum")
   output
 }
my.dice(3)
replicate(5, my.dice(2))


# 52/100
(select.num <- sapply(iris, is.numeric))  
iris[1:2, select.num]
select.fac <- sapply(iris, is.factor)
select.fac
iris[1:5, select.fac]
apply(iris, 2, is.numeric)
unique(iris$Species)
table(iris$Species)


# 53/100
wf <- read.table("worldfloras.txt", header=TRUE)
attach(wf)
names(wf)
dim(wf)


# 54/100
index <- grep("R", as.character(Country))
as.vector(Country[index])
as.vector(Country[grep("^R", as.character(Country))])
as.vector(Country[grep(" R", as.character(Country))])
as.vector(Country[grep(" ", as.character(Country))])
as.vector(Country[grep("y$", as.character(Country))])


# 55/100
my.pattern <- "[C-E]" 
index <- grep(my.pattern, as.character(Country))
as.vector(Country[index]) 

as.vector(Country[grep("^[C-E]", as.character(Country))])

as.vector(Country[-grep("[a-t]$", as.character(Country))])

as.vector(Country[-grep("[A-T a-t]$", as.character(Country))])


# 56/100
as.vector(Country[grep("^.y", as.character(Country))])

as.vector(Country[grep("^..y", as.character(Country))])

as.vector(Country[grep("^.{5}y", as.character(Country))])

as.vector(Country[grep("^.{,4}$", as.character(Country))]) 

as.vector(Country[grep("^.{15,}$", as.character(Country))])

strtrim{base}, substr{base}, substring{base}
strsplit{base}


# 57/100
text <- c("arm", "leg", "head", "foot", "hand", "hindleg", "elbow")
text
gsub("h", "H", text)
gsub("o", "O", text)
sub("o", "O", text)
gsub("^.", "O", text)

replace {base}: Replace Values in a Vector
replace(x, list, values)

x <- c(3, 2, 1, 0, 4, 0)
replace(x, x==0, 1)

replace(text, text=="leg", "LEG")
replace(text, text %in% c("leg", "foot"), "LEG")


# 58/100
text <- c("arm", "leg", "head", "foot", "hand", "hindleg", "elbow")
regexpr("o", text)
grep("o", text)
text[grep("o", text)]
gregexpr("o", text)

charmatch("m", c("mean","median","mode"))
charmatch("med", c("mean","median","mode"))


# 59/100
stock <- c("car", "van")
requests <- c("truck", "suv", "van", "sports", "car", "waggon", "car")
requests %in% stock
index <- which(requests %in% stock)
requests[index]

x <- round(rnorm(10), 2)
x
index <- which(x < 0)
index
x[index]
x[x<0]


# 60/100
x <- matrix(sample(1:12), ncol=4, nrow=3)
x
which(x %% 3 == 0)
which(x %% 3 == 0, arr.ind = T)

x <- c(45, 3, 50, 41, 14, 50, 3)
which.min(x)
which.max(x)
x[which.min(x)]
x[which.max(x)]
which(x == max(x))

match(1:10, 4)
match(1:10, c(4, 2))
x
match(x, c(50, 3))


# 61/100
setA <- c("a","b","c", "d", "e")
setB <- c("d", "e", "f", "g")

union(setA, setB)
intersect(setA, setB)
setdiff(setA, setB)
setdiff(setB, setA)
setA %in% setB
setB %in% setA
setA[setA %in% setB] 


# 62/100
myFun <- function(n){
  x <- 0
  for(i in 1:n){
    x <- x + i
  }
  x
}

system.time({
     ans <- myFun(10000)
 })

start.time <- proc.time()
for(i in 1:50) mad(runif(500))
proc.time() - start.time

start.time <- Sys.time()
ans <- myFun(10000)
end.time <- Sys.time()
end.time -start.time


# 63/100
city <- read.table("city.txt", header=TRUE, row.names=NULL, sep="\t")
attach(city)
names(city)

rank.price <- rank(price)
sorted.price <- sort(price)
ordered.price <- order(price)

sort(price, decreasing=TRUE)
rev(sort(price))


# 64/100
city

(view1 <- data.frame(location, price, rank.price))

(view2 <- data.frame(sorted.price, ordered.price)) 

view3 <- data.frame(location[ordered.price], price[ordered.price])) 

# 65/100
y <- 1:20
sample(y)
sample(y)
sample(y, 5)
sample(y, 5)
sample(y, 5, replace=T)

substr("this is a test", start=1, stop=4)
substr(rep("abcdef",4),1:4,4:5)

x <- c("asfef", "qwerty", "yuiop[", "b", "stuff.blah.yech")
substr(x, 2, 5)
substring(x, 2, 4:6)
substring(x, 2) <- c("..", "+++")
x


# 66/100
Triangular <- function(u){
	s <- ifelse(abs(u) <= 1, 1, 0)
	ans <- (1-abs(u))*s
	return(ans)
}
Gaussian <- function(u){
	ans <- exp((-1/2)*(u^2))/sqrt(2*pi)
	return(ans)
}
Epanechnikov <- function(u){
	s <- ifelse(abs(u) <= sqrt(5) , 1, 0)
	ans <- 3*(1-((u^2)/5))/(4*sqrt(5))*s
	return(ans)
}

par(mfrow=c(1,3))
x <- seq(-3, 3, 0.1)
plot(x, Triangular(x), main="Triangular Kernel", type="l")
plot(x, Gaussian(x), main="Gaussian Kernel", type="l")
plot(x, Epanechnikov(x), main="Epanechnikov Kernel", type="l")


# 67/100
fh <- function(xi, x, h, kernel, n=150){
	ans <- sum(kernel((x-xi)/h))/(n*h)
	return(ans)
}

x <- iris[, 1]
fh(x, 7, 0.2736, Triangular)
fh(x, 7, 0.2736, Gaussian)
fh(x, 7, 0.2736, Epanechnikov)


# 68/100
binomial <- function(k, n, p){
  factorial(n)/(factorial(k) * factorial(n - k)) * (p^k) * ((1-p)^(n-k))    
}

compute.mu.sigma <- function(pmf, parameter){

  mu <- 0
  sigma2 <- 1
  
  pmf.name <- deparse(substitute(pmf))
  cat("Input is", pmf.name, "distribution.\n")
  if(pmf.name ==  "binomial"){
    k <- parameter[[1]]
    n <- parameter[[2]]
    p <- parameter[[3]]
    mu <- sum(k * pmf(k, n, p))
    sigma2 <- sum((k - mu)^2 * pmf(k, n, p))
  }  
  cat("mu: ", mu, "\n")
  cat("sigma2: ", sigma2, "\n")
}

compute.mu.sigma(pmf=binomial, parameter=c(4, 10, 0.5))


# 69/100
binomial <- function(k, n, p){
  factorial(n)/(factorial(k) * factorial(n - k)) * (p^k) * ((1-p)^(n-k))    
}

poisson <- function(k, lambda){
  exp(-lambda) * (lambda^k)/(factorial(k))   
}

geometric <- function(k, p){
  (1 - p)^k * p  
}

compute.mu.sigma <- function(pmf, parameter){
  pmf.name <- deparse(substitute(pmf))
  mu <- sum(parameter$k * (do.call("pmf", parameter)))
  sigma2 <- sum((parameter$k - mu)^2 * do.call("pmf", parameter))
  cat("distribution:?@", pmf.name, "\n")
  cat("mu: ", mu, "\t sigma2:", sigma2, "\n" )
}

my.par <- list(k = c(0:10), n = 10, p = 0.6)
compute.mu.sigma(pmf = binomial, parameter = my.par)
distribution:?@ binomial 
mu:  6   sigma2: 2.4 
my.par <- list(k = c(0:100), lambda = 4)
compute.mu.sigma(pmf = poisson, parameter = my.par)
distribution:?@ poisson 
mu:  4   sigma2: 4 
my.par <- list(k = c(0:10000), p = 0.4)
compute.mu.sigma(pmf = geometric, parameter = my.par)


# 70/100
as.numeric(factor(c(??a??, ??b??, ??c??)))
as.numeric(c(??a??, ??b??, ??c??)) #don??t work


# 71/100
(x <- sample(1:42, 6))
(y <- letters)
get("x")
get("y")[1:5]
 
for(i in 1:5){
     x.name <- paste("x", i, sep=".")
     assign(x.name, 1:i)
     cat(x.name, ": \t")
     cat(get(x.name), "\n")
 }

a <- 100
(my.math <- c("3+4", "a/5"))
eval(my.math)
eval(parse(text=my.math[1]))
plot.type <- c("plot", "hist", "boxplot")
x <- rnorm(100)
my.plot <- paste(plot.type, "(x)", sep="")
eval(parse(text=my.plot))


# 72/100
library(e1071)
fclustIndex
plot
methods(plot)
plot.lm


# 73/100
plot.table
?plot.table
graphics:::plot.table

anova
methods(anova)
stats:::anova.nls
stats:::anova.loess

svm
?svm
methods(svm)
e1071:::svm.default

princomp 
methods(princomp) 
getAnywhere('princomp.default') # or
stats:::princomp.default


# 89/100
cat("?Ĥ@?D")
string <- "((1+2)*(3+4)*(5+6))/(7+8)" 
gregexpr("[(]", string)[[1]]
length(gregexpr("[(]", string)[[1]])


# 90/100
cat("?Ĥ@?D\n")
string <- "((1+2)*(3+4)*(5+6))/(7+8)" 
left.num <- length(gregexpr("[(]", string)[[1]])
cat("left.num: ", left.num, "\n")
right.num <- length(gregexpr("[)]", string)[[1]])
cat("right.num: ", right.num, "\n")
if(left.num== right.num){
   cat("OK")
} else{
   cat("Not OK")
}


# 91/100
ex1 <- function(){
    cat("?Ĥ@?D\n")

    #string <- "((1+2)*(3+4)*(5+6))/(7+8)" 
    cat("???J?]?t???k?p?A?????r??(?̪???40?r??)?A?ЧP?_?O?_???k?p?A???t?勵?T")    
    string <- scan(what="character", nmax=1, quiet=TRUE)

    left.num <- length(gregexpr("[(]", string)[[1]])
    #cat("left.num: ", left.num, "\n")
    right.num <- length(gregexpr("[)]", string)[[1]])
    #cat("right.num: ", right.num, "\n")

    if(left.num== right.num){
       cat("OK")
    }else{
       cat("Not OK")
    }
}

ex1()

# 92/100
ex1 <- function(){
   cat("?Ĥ@?D\n")
   cat("########################################\n")
   cat("# ???J?]?t???k?p?A?????r??(?̪???40?r??)?A   #\n")
   cat("# ?ЧP?_?O?_???k?p?A???t?勵?T              #\n")
   cat("# ?Ҧp???J?G {\tt ((1+2)-3)*(4/5)}       #\n")
   cat("########################################\n")

   ##???J
   string <- scan(what="character", nmax=1, quiet=TRUE)

   ##???X"(" ")"?A?íp??
   left.num <- length(gregexpr("[(]", string)[[1]])
   right.num <- length(gregexpr("[)]", string)[[1]])

   ##?P?_?O?_?۵?
   if(left.num== right.num){
     ##?O???ܡA???XOK
     cat("OK")
   }
   else{
     ##???O???ܡA???XNOT OK
     cat("Not OK")
   }
}
Y.or.N <- "y"

while(Y.or.N=="y"){
   ex1()
   cat("?~???m?߳o?@?D(Y/N): ")
   Y.or.N <- scan(what="character", nmax=1, quiet=TRUE)
   if(Y.or.N!=??y" & Y.or.N!=??n"){
      cat("???J???~?A?A???J?@?? ")
   }
}


# 94/100
source("http://www.hmwu.idv.tw/web/R/Rscript/ex1.R")
# source("ex1.R")






