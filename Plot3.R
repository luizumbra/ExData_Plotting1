## Peer Graded Assignment: Course Project 1
## ========================================
## Author:
## ======
##  Luiz Antonio Marques Ferreira

# Create plot
source("./ReadFileData.R")
plot(dateTime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dateTime, subMetering2, type="l", col="red")
lines(dateTime, subMetering3, type="l", col="blue")

# Make the legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

# Save as PNG file
dev.copy(device = png, file = "plot3.png")
dev.off()