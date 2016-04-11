plot3 <- function() {
    
    #Get the Data
    power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors = FALSE)
    power_consumption$newdate <- with(power_consumption, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))      
    power_date <- power_consumption[power_consumption$Date == "1/2/2007" | power_consumption$Date == "2/2/2007",]
    
    
    #plot 3
    png(file="plot3.png")
    plot(power_date$newdate,power_date$Sub_metering_1, type="l",xlab="",ylab="Energy sub metering")
    lines(power_date$newdate,power_date$Sub_metering_2, type="l",col="red")
    lines(power_date$newdate,power_date$Sub_metering_3, type="l",col="blue")
    legend("topright",lwd=1,col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))      
    dev.off()
    
    
    
}