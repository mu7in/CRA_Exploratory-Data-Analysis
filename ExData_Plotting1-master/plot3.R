source("load_data.R")
d <- load_power_data()

png("plot3.png", width = 480, height = 480)
plot(d$DateTime, d$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(d$DateTime, d$Sub_metering_2, col = "red")
lines(d$DateTime, d$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col    = c("black","red","blue"),
       lty = 1, bty = "n")
dev.off()
