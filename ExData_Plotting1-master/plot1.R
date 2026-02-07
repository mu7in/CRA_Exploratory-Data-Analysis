source("load_data.R")          # or paste the helper code here
d <- load_power_data()

png("plot1.png", width = 480, height = 480)
hist(d$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
