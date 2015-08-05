png(filename = "./plot4.png", width=480, height=480)
proj1 = read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?"))
proj_sub = subset(proj1, Date=="1/2/2007" | Date=="2/2/2007")
proj_sub$DateTime<-paste(proj_sub$Date, proj_sub$Time)
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
with(proj_sub, {plot(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), 
                     Global_active_power, type="l", xlab="", 
                     ylab="Global active power")})
with(proj_sub, plot(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Voltage, type="l", 
                    xlab="datetime", ylab="Voltage"))
with(proj_sub, plot(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Sub_metering_1, 
                    type="l", xlab="", ylab="Energy sub metering"))
with(proj_sub, points(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Sub_metering_2, 
                      col="red", type="l", xlab="", ylab="Energy sub metering"))
with(proj_sub, points(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Sub_metering_3, col="blue", 
                      type="l", xlab="", ylab="Energy sub metering"))
legend("topright", lty=1, col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(proj_sub, plot(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Global_reactive_power, type="l", 
                    xlab="datetime", ylab="Global_reactive_power"))
mtext("Plot 4", outer=TRUE, cex=1.5)
dev.off()