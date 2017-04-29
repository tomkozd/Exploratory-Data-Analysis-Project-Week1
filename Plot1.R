fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric" ))
consumption <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
remove(data)
png(filename = "./data/plot1.png", width = 480, height = 480)
with(consumption, hist(Global_active_power, col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency"))
dev.off()