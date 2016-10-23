# get_data.R

Url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
Local="./household_power_consumption.zip"

download.file(Url, Local)
unzip(Local)

df = read.csv(file="./household_power_consumption.txt",
                header = TRUE,
                sep=";",
                na.strings="?")

df = subset(df, df$Date=="2/2/2007" | df$Date=="1/2/2007")

write.csv(df, file="subset_power_consumption.csv")
