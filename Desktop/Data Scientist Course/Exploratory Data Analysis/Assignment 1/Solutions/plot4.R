setwd("C:/Users/565864/Desktop/Data Scientist Course/Exploratory Data Analysis/Assignment 1")
EPCData <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
EPC <- EPCData[EPCData$Date == "1/2/2007" | EPCData$Date == "2/2/2007", ]
EPCDateTime <- paste(EPC$Date, EPC$Time)
EPC$DateTime <- strptime(EPCDateTime, "%d/%m/%Y %H:%M:%S")
png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))
plot(EPC$DateTime, EPC$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
plot(EPC$DateTime, EPC$Voltage, type = "l", 
     ylab = "Voltage", xlab = "datetime")
plot(EPC$DateTime, EPC$Sub_metering_1, type = "l", 
     ylab = "Energy Sub Metering", xlab = "", col = "black")
points(EPC$DateTime, EPC$Sub_metering_2, type = "l", col = "red")
points(EPC$DateTime, EPC$Sub_metering_3, type = "l", col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), lty = 1, cex = 0.5, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(EPC$DateTime, EPC$Global_reactive_power, type = "l",  
     ylab = "Global_reactive_power", xlab = "datetime")
dev.off()