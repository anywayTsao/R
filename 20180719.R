# 20180719
# ctrl + enter => execute

rm(list = ls())

1 + 3

x <- sum(1:10)

cat("Hello R users! \n")
cat("3 + 5 = ", 3 + 5, "\n")

head(iris)
tail(iris)
View(iris)

plot(iris[,1], iris[,2], col=iris[,5])

#install.packages("installr")
library(installr)
installr()

# R package directory
# C:\Users\lab-156\AppData\Local\Temp\RtmpQTvEny\downloaded_packages

# package for excel
library(readxl)
library(writexl)

# ctrl + shift + A => format short cut
# ctrl + shift + C => comment short cut
x <- 123