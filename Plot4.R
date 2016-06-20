## Peer Graded Assignment: Course Project 1
## ========================================
## Author:
## ======
##  Luiz Antonio Marques Ferreira

# Create plot
source("./ReadFileData.R")

# Separete the plots
par(mfrow = c(2, 2))

# First Plot
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

#Second Plot
plot(dateTime, voltage, type="l", xlab="datetime", ylab="Voltage")

#Third Plot
plot(dateTime, subMetering1, type="l", xlab="", ylab="Energy Submetering")
lines(dateTime, subMetering2, type="l", col="red")
lines(dateTime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

# Forth Plot
plot(dateTime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

# Save as PNG file
dev.copy(device = png, file = "plot4.png")
dev.off()