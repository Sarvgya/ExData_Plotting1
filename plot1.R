library(dplyr)

#Reading txt file 
data <- "./household_power_consumption.txt"
table_EPC <- read.table(data, sep = ";", header = TRUE)
subset_Data <- table_EPC[table_EPC$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subset_Data$Global_active_power)

#Generating plot1.png
png("plot1.png", width=480, height=480)

#Type
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()