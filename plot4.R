# Plot 4

# Uncomment line below if data subset for plots not already
# in working directory:
# source(get_data.R)

df = read.csv("subset_power_consumption.csv")

timestamp = paste(as.character(df$Date), as.character(df$Time))
df$timestamp = strptime(timestamp, format="%d/%m/%Y %H:%M:%S")

png(filename="plot4.png")

# Set up for 2x2 plot
par("mfrow"= c(2,2))

plot(df$timestamp, df$Global_active_power,type="l",
     ylab="Global Active Power", xlab="")
plot(df$timestamp, df$Voltage, type="l",
     ylab="Voltage", xlab="datetime")
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
       col=c("black","red","blue"),
       bty="n")
plot(df$timestamp, df$Global_reactive_power, type="l",
     ylab="Global_reactive_power", xlab="datetime")

dev.off()