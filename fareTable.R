my.fare <- function() {
  dist <- c(25, 49, 95, 178, 264, 327, 373)
  dist.rep <- matrix(rep(dist, times = 7), nrow = 7)
  dist.matrix <- apply(dist.rep, 1, function(x) abs(x - dist))
  
  charge.caculator <- function(x) {
    if (x <= 50) {
      return(100)
    } else if (x > 50 & x <= 300) {
      return(100+(x-50))
    } else {
      return(400)
    }
  }
  
  fare.table <- matrix(mapply(charge.caculator, dist.matrix), nrow=7, dimnames=list(LETTERS[1:7],LETTERS[1:7]))
  
  print(fare.table)
}

my.fare()


(dist <- c(25, 49, 95, 178, 264, 327, 373))
(dist.rep <- matrix(rep(dist, times = 7), nrow = 7))
(dist.matrix <- apply(dist.rep, 1, function(x) abs(x - dist)))
