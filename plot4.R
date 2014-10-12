household_power_consumption <- read.table("D:/Coursera Data/Exploratory Data Analysis/household_power_consumption.txt", sep=";", quote="\"")
#read the data
library("dplyr")
household_power<-filter(household_power_consumption,V1=="1/2/2007"|V1=="2/2/2007")
#creat new subset household_power only using data from the dates 2007-02-01 and 2007-02-02

household_power$V1<-as.character(household_power$V1)
household_power$V2<-as.character(household_power$V2)
date_time<-paste(household_power$V1,household_power$V2)
date_time<-strptime(date_time, "%d/%m/%Y %H:%M:%S")

par(mfcol=c(2,2))
par(mar=c(2,2,1,1))
plot(date_time,household_power$V3,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)",cex.axis=0.7)

plot(date_time,household_power$V7,type = "l",xlab="",ylab = "Energy sub metering",cex.axis=0.7)
lines(date_time,household_power$V8,col="red")
lines(date_time,household_power$V9,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.6)

plot(date_time,household_power$V5,type = "l",xlab = "datetime",ylab = "Voltage",cex.axis=0.7)

plot(date_time,household_power$V4,type = "l",xlab = "datetime",ylab = "Global Reactive Power",cex.axis=0.7)

