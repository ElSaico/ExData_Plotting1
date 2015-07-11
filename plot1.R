source("getpower.R")
power <- getpower()
ping("plot1.png", 480, 480)
hist(power$ActivePower, breaks=12, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency",
     col="red", border="black")
dev.off()