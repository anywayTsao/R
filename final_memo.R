# normal distribution plot
xv <- seq(-3, 3, 0.01)
yv <- dnorm(xv)
plot(xv, yv, type="l")

polygon(c(-1 , xv[xv>=-1 & xv<=1], 1), c(yv[xv==-3], yv[xv>=-1 & xv<=1], yv[xv==-3]), col="blue")
abline(v = 0, col = "gray60")

polygon(c(xv[xv<=-1.96], -1.96), c(yv[xv<=-1.96], yv[xv==-3]), col="red")
polygon(c(xv[xv>=1.96], 1.96), c(yv[xv>=1.96], yv[xv==3]), col="red")

segments(-2, 0.0, -2, 0.1, col = "red")
segments(2, 0.0, 2, 0.1, col = "red")

arrows(-2, yv[xv==-2], 2, yv[xv==2])
arrows(2, yv[xv==2], -2, yv[xv==-2])

text("95%", x = 0, y = yv[xv==--2])

# multi plot
(my.mat <- matrix(c(0, 1, 1, 0, 2, 3, 3, 4, 0, 5, 5, 0) , 3, 4, byrow = T))
layout(my.mat, widths=c(1, 2, 1), heights=c(1, 2, 1))

attach(iris)

hist(Sepal.Length)
boxplot(Sepal.Length)
plot(Sepal.Length, Sepal.Width)
hist(Sepal.Width)
boxplot(Sepal.Width, horizontal = F)

detach(iris)

#
x <- seq(-3, 3, by = 0.1)
y <- dnorm(x)
plot(x, y, type = "l", ylab = "density", xlab = "", xaxt = "n")
arrows(...
arrows(...
text(...
abline(v=-3:3, lty=2)
axis(1, at=c(-3), labels=c(expression(mu-3*sigma)))

x.function <- function(alpha, x) {
  return (alpha * ((x^2)-1)^(0.5))
}    

x.function(1, 0.5)

vx <- seq(-4, 4, by = 0.1)
vy1 <- x.function(1, vx)
vy2 <- x.function(2, vx)

vy1[vx<1]

plot(vx, vy1, col="red", type="l", xlim = c(-4, 4), ylim = c(-2, 8))
lines(vx, vy2, col="blue", type="l")

# plot3D
# install.packages("plot3D")
library("plot3D")
par(mfrow = c(1,1), mai = c(0.3, 0.3, 0.3, 0.3)) 

x <- iris$Sepal.Length
y <- iris$Sepal.Width
z <- iris$Petal.Length
w <- iris$Petal.Width
s <- iris$Species

scatter3D(x, y, z, 
          pch = 18, 
          clab = c("Sepal", "Width (cm)"), 
          main = "Iris data", 
          xlab = "Sepal.Length", 
          zlab = "Petal.Length", 
          ylab = "Sepal.Width")

# Weibull
my.function <- function(x, a, b){
  return(a*b^(-a)*x^(a-1)*exp(-(x/b)^a))
}
x <- seq(0, 5, 0.1)
my.function(x, 1, 2)
y1 <- my.function(x, 1, 2)
y2 <- my.function(x, 2, 2)
y3 <- my.function(x, 5, 2)
plot(x, y1, xlim=c(0,5), ylim=c(0.0, 1.5), type="l")
lines(x, y2, type="l")
lines(x, y3, type="l")
