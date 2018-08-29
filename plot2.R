powerdata <- read.csv("household_power_consumption.txt",header = TRUE, sep=";")
subpowerdata <- powerdata[powerdata$Date=="2/2/2007" | powerdata$Date=="1/2/2007",]
pwr <- as.numeric(subpowerdata$Global_active_power)
pwr1 <- lapply(pwr, (function(x) (as.numeric(x)/1000)))
pwr11 <- unlist(pwr1, use.names=FALSE)
dt <- strptime(paste(subpowerdata$Date, subpowerdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(dt, pwr11, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
