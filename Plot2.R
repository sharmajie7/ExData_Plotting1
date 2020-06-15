datasource <- "./household_power_consumption.txt"
dataval <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
date_time <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActpwr <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, globalActpwr, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()