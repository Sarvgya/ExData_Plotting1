library(dplyr)

#Reading txt file 
data <- "./household_power_consumption.txt"
table_EPC <- read.table(data, sep = ";", header = TRUE)
subset_Data <- table_EPC[table_EPC$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subset_Data$Global_active_power)

#str(subSetData)
datetime <- strptime(paste(subset_Data$Date, subset_Data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset_Data$Global_active_power)
png("plot2.png", width=480, height=480)

#Type
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()