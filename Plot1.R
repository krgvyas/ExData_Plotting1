#Reading the household power consumption data.
household_power_consumption <- read.table("household_power_consumption.txt",skip=1,sep=";")

# Naming the household power consumption data.
names(household_power_consumption) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

# Subsetting the household power consumption data.
subpower <- subset(household_power_consumption,household_power_consumption$Date=="1/2/2007" | household_power_consumption$Date =="2/2/2007")

# Opening a png file.
png("plot1.png", width=480, height=480)

#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

# Closing the png file.
dev.off()