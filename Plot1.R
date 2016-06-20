## Peer Graded Assignment: Course Project 1
## ========================================
## Author:
## ======
##  Luiz Antonio Marques Ferreira

# Creat the histagram
source("./ReadFileData.R")
hist(globalActivePower, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

# Save as PNG file
dev.copy(device = png, file = "plot1.png")
dev.off()