## Peer Graded Assignment: Course Project 1
## ========================================
## Author:
## ======
##  Luiz Antonio Marques Ferreira

# Read and Separete Data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
newData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#make subsets
dateTime <- strptime(paste(newData$Date, newData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(newData$Global_active_power)
globalReactivePower <- as.numeric(newData$Global_reactive_power)
voltage <- as.numeric(newData$Voltage)
subMetering1 <- as.numeric(newData$Sub_metering_1)
subMetering2 <- as.numeric(newData$Sub_metering_2)
subMetering3 <- as.numeric(newData$Sub_metering_3)