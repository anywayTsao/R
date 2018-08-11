exchange.money <- function() {
  #totalAmount <- 478
  cat("Please tell me how much money do you have?")
  totalAmount <- scan(what=integer(), nmax = 1)
  
  money_type <- c(1000, 500, 100, 50, 10, 5, 1)
  money_count <- numeric(length(money_type))
  
  for (money in money_type) {
    money_count[money_type==money] <- totalAmount %/% money
    totalAmount <- totalAmount %% money
  }
  data.frame(money_type, money_count)
}

exchange.money()
