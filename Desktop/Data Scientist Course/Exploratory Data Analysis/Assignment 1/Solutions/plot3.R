setwd("C:/Users/565864/Desktop/Data Scientist Course/Exploratory Data Analysis/Assignment 1")
EPCData <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
EPC <- EPCData[EPCData$Date == "1/2/2007" | EPCData$Date == "2/2/2007", ]
EPCDateTime <- paste(EPC$Date, EPC$Time)
EPC$DateTime <- strptime(EPCDateTime, "%d/%m/%Y %H:%M:%S")
png("plot3.png", width = 480, height = 480, units = "px")
plot(EPC$DateTime, EPC$Sub_metering_1, type = "l", 
     ylab = "Energy Sub Metering", xlab = "", col = "black")
points(EPC$DateTime, EPC$Sub_metering_2, type = "l", col = "red")
points(EPC$DateTime, EPC$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()