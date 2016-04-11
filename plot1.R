plot1 <- function() {
    
    #Get the Data
    power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors = FALSE)
    power_consumption$newdate <- with(power_consumption, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))      
    power_date <- power_consumption[power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007",]
    
    #plot 1
    png(file="plot1.png")
    hist(power_date$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
    dev.off()
    
    
    
    
}

