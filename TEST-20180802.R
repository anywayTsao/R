
#1.
#a.
letters[sequence(c(5,4,3,2,1)) + rep(0:5, 5:0)]
#b.
seq(1,19, by = 3)

#2.
set.seed(12345)
n <- sample(5:20, 1)
mydata <- sample(letters, n, replace=T)
summary(factor(mydata))

#3
set.seed(12345)
score <- c(NA, 0:100)
math <- sample(score, 50, replace=T)
english <- sample(score, 50, replace=T)
chinese <- sample(score, 50, replace=T)
#a.
my.socre <- data.frame(math=math, english=english, chinese=chinese, row.names = paste("s", 1:50, sep = ""))
my.socre
#b.
my.socre[(my.socre$math<60) & (my.socre$english<60)& (my.socre$chinese<60),]
#c.
as.list(my.socre)

#4.
lm.obj <- lm(airquality$Wind ~ airquality$Temp)
lm.anova <- anova(lm.obj)
lm.summary <- summary(lm.obj)
#a.
class(lm.anova)
str(lm.anova)
lm.anova$`Pr(>F)`
#b.
str(lm.summary)
lm.summary$r.squared

#5.
A <- matrix(c(2, 5, 4, 8, -1, 0), nrow = 2)
B <- matrix(c(2, 4, -3, -5, 2, 1, 1, 0, 2, 4, 0, 3), nrow = 3)
C <- matrix(c(2, 8, -6, -1, -3, 2), nrow = 3)
#a.
A%*%B
#b.
2*A + 3*t(C)

#6.
my_score <- c(30, 49, 95, NA, 54, NA, 61, 85, 51, 22, 0, 0)
my_gender <- c("m", "f", "f", "m", "f", "m", "f", "m", "m", "f", "f", "m")
#a.
length(my_gender)
summary(factor(my_gender))
#b.
max(my_score[!is.na(my_score)])
min(my_score[!is.na(my_score)])
#c.
mean(my_score[!is.na(my_score)])
sd(my_score[!is.na(my_score)])

remove_na_score <- my_score[!is.na(my_score)]
remove_na_gender <- my_gender[!is.na(my_score)]

mean(remove_na_score[remove_na_gender == "m"])
mean(remove_na_score[remove_na_gender == "f"])
#d.
set_zero_na_score <- my_score
set_zero_na_score[!is.na(set_zero_na_score)] <- set_zero_na_score[!is.na(set_zero_na_score)] + 10
set_zero_na_score[set_zero_na_score>100] <- 100
set_zero_na_score[is.na(set_zero_na_score)] <- 0

#e.
sum(set_zero_na_score>=60)
