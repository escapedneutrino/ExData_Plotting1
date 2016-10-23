# Uncomment line below if data subset for plots not already
# in working directory:
# source(get_data.R)

df = read.csv("subset_power_consumption.csv")

# Base plotting
# Plot 1 - histogram ofGlobal Active Power
png(filename="plot1.png") # default size is correct, so not changing
hist(df$Global_active_power, 
     xlab="Global Active Power (kilowatts)", 
     col = "red",
     main = "Global Active Power")
dev.off()

