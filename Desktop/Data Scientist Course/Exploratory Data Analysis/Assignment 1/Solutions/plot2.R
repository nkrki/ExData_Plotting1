setwd("C:/Users/565864/Desktop/Data Scientist Course/Exploratory Data Analysis/Assignment 1")
EPCData <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
EPC <- EPCData[EPCData$Date == "1/2/2007" | EPCData$Date == "2/2/2007", ]
EPCDateTime <- paste(EPC$Date, EPC$Time)
EPC$DateTime <- strptime(EPCDateTime, "%d/%m/%Y %H:%M:%S")
png("plot2.png", width = 480, height = 480, units = "px")
plot(EPC$DateTime, EPC$Global_active_power, type = "l", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()