# ---- shared loader: read only 2007-02-01 and 2007-02-02 ----
load_power_data <- function(path = "household_power_consumption.txt") {
  # read as character first to filter quickly
  raw <- read.table(path, header = TRUE, sep = ";", na.strings = "?",
                    colClasses = "character")
  keep <- raw$Date %in% c("1/2/2007", "2/2/2007")
  d <- raw[keep, ]
  # convert types
  d$DateTime <- strptime(paste(d$Date, d$Time), "%d/%m/%Y %H:%M:%S")
  numcols <- c("Global_active_power","Global_reactive_power",
               "Voltage","Global_intensity",
               "Sub_metering_1","Sub_metering_2","Sub_metering_3")
  d[numcols] <- lapply(d[numcols], \(x) as.numeric(x))
  d
}
