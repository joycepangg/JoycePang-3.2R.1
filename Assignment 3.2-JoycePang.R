## Assignment 3.2  - 2022 Programming in Psychological Science
#
# Record of Revisions
#
# Date            Programmer              Descriptions of Change
# ====         ================           ======================
# 26-Jan-22        Joyce Pang              Original code

#Q3.2.1

remind_me <- function(){
  return("my birthday is 26/10")
}


cheat<- function(number){
  schiphol <- read.csv("https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv")
  plot(schiphol$DATE, schiphol$TAVG, main = "Scatterplot", xlab = "time", ylab = "average temperature")
  if (number == 1){
    return(boxplot(rnorm(n = 100, mean = 3, sd = 1)))
  } else {
    if (number == 2){ 
      return(plot(schiphol$DATE, schiphol$TAVG, main = "Scatterplot", xlab = "time", ylab = "average temperature"))
    } else if (number == 6){
      return(ggplot(data = Orange, aes(x = factor(Tree, levels = c("1", "2", "3", "4", "5")), y = circumference)) +
               stat_summary(fun = "max", geom = "bar") +
               labs(x = "Tree", y = "max_circumfrence"))
    } else if (number == 7){
      return(ggplot(data = Orange) +
        geom_smooth(mapping = aes(x = age, y = circumference), formula = y ~ x, method = "lm") +
        labs(x = "age", y = "circumference"))
    }else 
      print("please type a number that is either 1,2,6 or 7")
  }
}

