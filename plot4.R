data=read_data()
png("plot4.png", height=480, width=480)
#letting the canvas
par(mfcol=c(2,2))
#plot 1
with(data, plot(Time, Global_active_power, type="l",ylab="Global Active Power", xlab=" "))
#plot2
with(data, plot(Time, Sub_metering_1, type="l",ylab="Energy sub metering", xlab=" ", col="black"))
with(data, lines(Time, Sub_metering_2, col="red"))
with(data, lines(Time, Sub_metering_3, col="blue"))
legend(x="topright", lwd=1, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), box.lwd=0)
#plot3
with(data, plot(Time, Voltage, type="l",ylab="Global Active Power", xlab="datetime"))
#plot4
with(data, plot(Time, Global_reactive_power, type="l",ylab="Global_reactive_power", xlab="datetime"))
dev.off()
