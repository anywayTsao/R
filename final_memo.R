# normal distribution plot
xv <- seq(-3, 3, 0.01)
yv <- dnorm(xv)
plot(xv, yv, type="l")

polygon(c(-1 , xv[xv>=-1 & xv<=1], 1), c(yv[xv==-3], yv[xv>=-1 & xv<=1], yv[xv==-3]), col="blue")
abline(v = 0, col = "gray60")

# plot3D
install.packages("plot3D")
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
