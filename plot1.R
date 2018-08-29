powerdata <- read.csv("household_power_consumption.txt",header = TRUE, sep=";")
subpowerdata <- powerdata[powerdata$Date=="2/2/2007" | powerdata$Date=="1/2/2007",]
pwr <- (as.numeric(as.character(subpowerdata$Global_active_power)))
png("plot1.png", width=480, height=480)
hist(pwr,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()