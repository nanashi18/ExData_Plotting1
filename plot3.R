powerdata <- read.csv("household_power_consumption.txt",header = TRUE, sep=";")
subpowerdata <- powerdata[powerdata$Date=="2/2/2007" | powerdata$Date=="1/2/2007",]
dt <- strptime(paste(subpowerdata$Date, subpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(dt, subpowerdata$Sub_metering_1,type="n",ylab="Energy sub metering",xlab="")
lines(dt, subpowerdata$Sub_metering_1)
lines(dt, subpowerdata$Sub_metering_2, col="red")
lines(dt, subpowerdata$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"), lty=1, lwd=2)
dev.off()
