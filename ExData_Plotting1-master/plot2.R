source("load_data.R")
d <- load_power_data()

png("plot2.png", width = 480, height = 480)
plot(d$DateTime, d$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()