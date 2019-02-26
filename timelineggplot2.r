# creaing a timeline in ggplot from scratch
library(ggplot2)

rm(list=ls())
time <- read.csv("C://Data/timelinegg_2.csv")
time$start <- as.Date(time$start)
time$end <- as.Date(time$end)
time$eventdate <- as.Date(time$eventdate)
str(time)

labs <- time$labels[which(time$labels!="")]
#time$group <- as.character(time$group)
labx <- time$start
laby <- time$line
labtext <- as.character(time$content)
evtext <- as.character(time$event)

png(filename="C://Data/timelineggplot.png", type="cairo",units="in", width=20, height=15, pointsize=12,res=300)
ggplot(time, aes(colour=person, group= id)) + 
  geom_segment(aes(x=start, xend=end, y=line, yend=line), size=3) +
  xlab("Date")+
  geom_point(aes(x=eventdate,y=eventline),size=3)+
  annotate("text",x = time$start, y = time$line, label=labtext,size=2,hjust=0)+
  scale_y_continuous(labels = labs, breaks = c(1,3,4,10,15,16,17,18,19,20,21))
dev.off()
 

## https://www.molecularecologist.com/2019/01/simple-gantt-charts-in-r-with-ggplot2-and-the-tidyverse/
