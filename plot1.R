png(filename = "./plot1.png", width=480, height=480)
proj1 = read.table("./household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?"))
# Read a subset for the two days of interest
proj_sub = subset(proj1, Date=="1/2/2007" | Date=="2/2/2007")
# Plot the histogram
hist(proj_sub$Global_active_power, na.rm=TRUE, col="red", 
     xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
