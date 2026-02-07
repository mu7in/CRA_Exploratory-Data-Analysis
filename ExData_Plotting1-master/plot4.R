source("load_data.R")
d <- load_power_data()

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

# 1 (top-left)
plot(d$DateTime, d$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

# 2 (top-right)
plot(d$DateTime, d$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# 3 (bottom-left)
plot(d$DateTime, d$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(d$DateTime, d$Sub_metering_2, col = "red")
lines(d$DateTime, d$Sub_metering_3, col = "blue")
legend("topright",
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col    = c("black","red","blue"),
       lty = 1, bty = "n")

# 4 (bottom-right)
plot(d$DateTime, d$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
