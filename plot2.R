hpc <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings = c("NA", "NULL", "?"))
data <- hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]

dateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
par(bg="transparent")
plot(dateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()