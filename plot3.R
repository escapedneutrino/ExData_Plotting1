# Plot 3

# Uncomment line below if data subset for plots not already
# in working directory:
# source(get_data.R)

df = read.csv("subset_power_consumption.csv")

timestamp = paste(as.character(df$Date), as.character(df$Time))
df$timestamp = strptime(timestamp, format="%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png") # default dimension match assignment
plot(df$timestamp, df$Sub_metering_1, pch="", type="l",
     xlab="", ylab="Energy sub metering",
     col="black")
lines(df$timestamp, df$Sub_metering_2, 
     col="red")
lines(df$timestamp, df$Sub_metering_3,
      col="blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       pch="", lty=1, 
       col=c("black","red","blue"))
dev.off()
