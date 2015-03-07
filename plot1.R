hpc <- read.csv(file="household_power_consumption.txt", header=TRUE, sep=";", na.strings = c("NA", "NULL", "?"))
data <- hpc[hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007",]

png(filename="plot1.png")
par(bg="transparent")
hist(data$Global_active_power,breaks=12, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", cex.lab=1)
dev.off()