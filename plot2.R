png(filename = "./plot2.png", width=480, height=480)
proj1 = read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?"))
proj_sub = subset(proj1, Date=="1/2/2007" | Date=="2/2/2007")
# Add a new column by pasting Date and Time for easy reference
proj_sub$DateTime<-paste(proj_sub$Date, proj_sub$Time)
# Use strptime to get the day
with(proj_sub, plot(strptime(DateTime, "%d/%m/%Y %H:%M:%S"), Global_active_power, 
                    type="l", xlab="", ylab="Global Active Power (kilowatts)", 
                    main = "Plot 2"))
dev.off()