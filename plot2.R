data=read_data()
png("plot2.png", height=480, width=480)
with(data, plot(Time, Global_active_power, type="l",ylab="Global Active Power (kilowatts)", xlab=" "))
dev.off()
