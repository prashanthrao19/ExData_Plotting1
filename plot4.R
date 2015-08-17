source("./load_data.R")

plot4<- function(data=NULL){
        if(is.null(data)){
                data <- load_data()
        }
        par(mfrow = c(2,2))
        
        plot(data$Time,data$Global_active_power,type = "l",xlab= "",ylab = "Global Active Power")
        
        plot(data$Time,data$Voltage,type = "l",xlab = "datatime",ylab = "voltage")
        
        plot(data$Time,data$Sub_metering_1,type="l",xlab = "",
             ylab = "Energy sub metering")
        lines(data$Time,data$Sub_metering_2,col = "red",type ="l")
        lines(data$Time,data$Sub_metering_3,col = "blue",type ="l")
        legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col = c("black","red","blue"),lty= 1,bty = "n",cex= 0.5,y.intersp = 0.25)
        
        plot(data$Time,data$Global_reactive_power,type = "l",xlab = "datatime",ylab = "Global_reactive_power")
        dev.copy(png,file = "plot4.png",width = 480,height =480)
        dev.off()
}