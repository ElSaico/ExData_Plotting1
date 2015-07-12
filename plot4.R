source("getpower.R")
power <- getpower()
png("plot4.png", 480, 480)
par(mfrow=c(2,2))

plot(power$ActivePower, type='l', xaxt='n', xlab=NA, ylab='Global Active Power')
axis(1, seq(1, nrow(power), length.out=3), c('Thu', 'Fri', 'Sat'))

plot(power$Voltage, type='l', xaxt='n', xlab='datetime', ylab='Voltage')
axis(1, seq(1, nrow(power), length.out=3), c('Thu', 'Fri', 'Sat'))

plot(power$Sub1, type='l', xaxt='n', xlab=NA, ylab='Energy sub metering')
lines(power$Sub2, col='red')
lines(power$Sub3, col='blue')
legend('topright', lty=1, col=c('black', 'red', 'blue'),
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
axis(1, seq(1, nrow(power), length.out=3), c('Thu', 'Fri', 'Sat'))

plot(power$ReactivePower, type='l', xaxt='n', xlab='datetime', ylab='Global_reactive_power')
axis(1, seq(1, nrow(power), length.out=3), c('Thu', 'Fri', 'Sat'))

dev.off()