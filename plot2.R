# Read in data and subset
setwd("~/Google Drive/Data Science/04. Exploratory Data Analysis/datascience04_project01/")
power <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
sub_power <- power[power$Date == "1/2/2007" | power$Date == "2/2/2007", ]
attach(sub_power)
rm(power)

# open png device
png(filename="plot2.png", bg="transparent", width=480, height=480)

# combine date and time and format correctly (call lubricate)
formatDate <- as.Date(Date, format="%d/%m/%Y")
require("lubridate") 
DT <- ymd_hms(paste(formatDate, Time, sep = "_"))

# Set locale so Thu, Fri and Sat (Eng) are displayed
Sys.setlocale("LC_TIME", "C")

# Do the final plotting
plot(DT, Global_active_power, type="l", xlab='', ylab='Global Active Power (kilowatts)')

# close the device
dev.off()