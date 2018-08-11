###############################################################################
# Name: 範例主程式                                                            #
# Author: Han-Ming Wu                                                         #
# Date: 2008/11/05                                                            #
###############################################################################

#############################
# ex1                       #
#############################
ex1 <- function() {
  cat("######################################################\n")
  cat("# 第一題                                             #\n")
  cat("# 輸入包含左右小括號之字串(最長為40字元)            #\n")
  cat("# 請判斷是否左右小括號配對正確                      #\n")
  cat("# 例如輸入: ((1+2)-3)*(4/5)                          #\n")
  cat("######################################################\n")
  
  gregexpr("[(]{1}\\w*", "string(aaa)(bbb)(ccc)(ddd)")[[1]]
  
  repeat {
    ##輸入
    cat("請輸入包含左右小括號之字串(最長為40字元): ")
    string <- scan(what = "character",
                   nmax = 1,
                   quiet = TRUE)
    if (nchar(string) < 40) {
      ##找出"(" ")"，並計數
      left.count <- length(gregexpr("[(]", string)[[1]])
      right.count <- length(gregexpr("[)]", string)[[1]])
      cat("左小括號個數為: ", left.count, "\n")
      cat("右小括號個數為: ", right.count, "\n")
      
      ##判斷是否相等
      if (left.count == right.count) {
        ##是的話，輸出"配對正確"
        cat("括號配對正確!\n")
      }
      else{
        ##不是的話，輸出"配對不正確"
        cat("括號配對不正確!\n")
      }
      break
    }
    else{
      cat("輸入錯誤!\n")
    }
  }
}


#############################
# 是否繼續                  #
#############################
ask <- function(){
  cat("繼續練習這一題(y/n): ")
  Y.or.N <- scan(what="character", nmax=1, quiet=TRUE)
  return(Y.or.N)
}

#############################
# 檢查Input                 #
#############################
input.check <- function(answer){
  
  if(answer=="N" || answer=="n"){
    cat("謝謝練習，再會!\n")   
  }
  else if(!(answer=="Y" || answer=="y")){
    cat("輸入錯誤!\n")
    Y.or.N <- ask()
    Y.or.N <- input.check(Y.or.N)
  }
  else{  
    Y.or.N <- answer
  }
  return(Y.or.N)
}

#############################
# Example                   #
#############################
Y.or.N <- "y"
while(Y.or.N=="y" || Y.or.N=="Y"){
  ex1()
  Y.or.N <- ask()
  Y.or.N <- input.check(Y.or.N)  
}


