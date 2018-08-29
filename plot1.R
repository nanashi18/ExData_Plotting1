powerdata <- read.csv("household_power_consumption.txt",header = TRUE, sep=";")
subpowerdata <- powerdata[powerdata$Date=="2/2/2007" | powerdata$Date=="1/2/2007",]
pwr <- as.numeric(subpowerdata$Global_active_power)
pwr1 <- lapply(pwr, (function(x) (as.numeric(x)/1000)))
pwr11 <- unlist(pwr1, use.names=FALSE)
png("plot1.png", width=480, height=480)
hist(pwr11,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
