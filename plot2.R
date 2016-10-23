# Plot 2

# Uncomment line below if data subset for plots not already
# in working directory:
# source(get_data.R)

df = read.csv("subset_power_consumption.csv")

timestamp = paste(as.character(df$Date), as.character(df$Time))
df$timestamp = strptime(timestamp, format="%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png") # default dimension match assignment
plot(df$timestamp, df$Global_active_power, pch="", type="l",
    xlab="", ylab="Global Active Power (kilowatts)")
dev.off()