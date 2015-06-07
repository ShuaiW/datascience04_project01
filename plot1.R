# Read in data and subset
setwd("~/Google Drive/Data Science/04. Exploratory Data Analysis/datascience04_project01/")
power <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
sub_power <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007", ]
attach(sub_power)
rm(power)

# open png device
png(filename="plot1.png", bg="transparent", width=480, height=480)

# do the plotting
hist(Global_active_power, col='red', main='Global Active Power',xlab='Global Active Power (kilowatts)')

# close the device
dev.off()
