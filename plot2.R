plot2 <- function() {
    
    #Get the Data
    power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors = FALSE)
    power_consumption$newdate <- with(power_consumption, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))      
    power_date <- power_consumption[power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007",]
    
    
    #plot 2
    png(file="plot2.png")
    plot(power_date$newdate,power_date$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")
    dev.off()
    
    
    
    
}