hpc <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings = c("NA", "NULL", "?"))
data <- hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]

dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
png(filename="plot4.png")
par(bg="transparent",mfcol=c(2,2))
#TOP LEFT
plot(dateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#BOT LEFT
plot(dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTime, data$Sub_metering_2, col="red")
lines(dateTime, data$Sub_metering_3, col="blue")
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid')
#TOP RIGHT
plot(dateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
#BOT RIGHT
plot(dateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()