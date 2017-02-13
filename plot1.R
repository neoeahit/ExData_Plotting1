data=read_data()
png("plot1.png", height=480, width=480)
with(data , hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency"))
dev.off()
