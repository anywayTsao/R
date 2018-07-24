rm(list = rm())
continue <- TRUE
while (continue) {
  print("please input your sequence number")
  x <- scan()
  
  for (myNumber in x) {
    print(myNumber)
  }
  
  print("Want to play again?")
  choice <- scan(skipNul = TRUE);
  if (is.nan(choice) || length(choice) == 0 ) {
    continue <- FALSE
    print("Stopping the game...")
  }
}

