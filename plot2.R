household_power_consumption <- read.table("D:/Coursera Data/Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"")
#read the data
library("dplyr")
household_power<-filter(household_power_consumption,V1=="1/2/2007"|V1=="2/2/2007")
#creat new subset household_power only using data from the dates 2007-02-01 and 2007-02-02

household_power$V1<-as.character(household_power$V1)
household_power$V2<-as.character(household_power$V2)
date_time<-paste(household_power$V1,household_power$V2)
date_time<-strptime(date_time, "%d/%m/%Y %H:%M:%S")

plot(date_time,household_power$V3,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")
png("plot2.png",width=480,height=480)     
