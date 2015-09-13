setwd("C:/Users/565864/Desktop/Data Scientist Course/Exploratory Data Analysis/Assignment 1")
EPCData <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE)
EPC <- EPCData[EPCData$Date == "1/2/2007" | EPCData$Date == "2/2/2007", ]
png("plot1.png", width = 480, height = 480, units = "px")
hist(EPC$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()