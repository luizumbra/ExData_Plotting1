## Peer Graded Assignment: Course Project 1
## ========================================
## Author:
## ======
##  Luiz Antonio Marques Ferreira

# Create plot
source("./ReadFileData.R")
plot(dateTime, globalActivePower, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

# Save as PNG file
dev.copy(device = png, file = "plot2.png")
dev.off()