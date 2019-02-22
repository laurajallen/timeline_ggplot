task <-  c("one","two","three","a","b","c")
group <- c(1,1,2,1,2,2)
start <- as.Date(c("2019-01-01","2019-02-01","2019-01-15","2019-03-01","2019-02-01","2019-01-01"))
end<- as.Date(c("2019-02-01","2019-04-01","2019-03-15","2019-05-01","2019-03-01","2019-05-01"))
person <- c("john","anna","joe","sara","laura","may")


df <- as.data.frame(cbind(task,group,start,end,person))

library(ggplot2)
ggplot(df, aes(colour=person)) + 
  geom_segment(aes(x=start, xend=end, y=task, yend=task), size=3) +
  xlab("Date")

## https://www.molecularecologist.com/2019/01/simple-gantt-charts-in-r-with-ggplot2-and-the-tidyverse/
