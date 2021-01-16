##plot1 - FREQUENCY and GLOBAL ACTIVE POWER

##read CSV

data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="",quote='\"')
#Clean DATA - 2007-02-01 and 2007-02-01
mydata<-subset(data_full,Date %in% c("1/2/2007","2/2/2007"))
mydata$Date <- as.Date(mydata$Date, format="%d/%m/%Y")

#PLOT1

png("plot1.png", width=480, height=480)
hist(mydata$Global_active_power, main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.off()