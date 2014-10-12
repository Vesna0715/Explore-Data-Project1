household_power_consumption <- read.table("D:/Coursera Data/Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"")
#read the data
library("dplyr")
household_power<-filter(household_power_consumption,V1=="1/2/2007"|V1=="2/2/2007")
#creat new subset household_power only using data from the dates 2007-02-01 and 2007-02-02
V10 <- as.numeric(as.character(household_power$V3))
#change datatype of "Globle Active Power" from factor to numeric
library(datasets)
hist(V10,col="red",main=paste("Global Active Power"),xlab="Global Active Power(Kilowatts)")
png("plot1.png",width=480,height=480)