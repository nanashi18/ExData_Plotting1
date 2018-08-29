powerdata <- read.csv("household_power_consumption.txt",header = TRUE, sep=";")
subpowerdata <- powerdata[powerdata$Date=="2/2/2007" | powerdata$Date=="1/2/2007",]
pwr <- (as.numeric(as.character(subpowerdata$Global_active_power)))
dt <- strptime(paste(subpowerdata$Date, subpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(dt, pwr, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()