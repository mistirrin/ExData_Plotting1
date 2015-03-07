hpc <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings = c("NA", "NULL", "?"))
data <- hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]

dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
png(filename="plot3.png")
par(bg="transparent")
plot(dateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(dateTime, data$Sub_metering_2, col="red")
lines(dateTime, data$Sub_metering_3, col="blue")
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lty='solid')
dev.off()