getpower <- function() {
    filename <- tempfile()
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", filename, method="libcurl")
    read.csv(unz(filename, "household_power_consumption.txt"), skip=24*60*46+60*6+36, nrows=24*60*2, sep=";",
             col.names=c("Date", "Time", "ActivePower", "ReactivePower", "Voltage", "Intensity", "Sub1", "Sub2", "Sub3"))
}
