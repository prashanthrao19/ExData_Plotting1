source("./load_data.R")

plot3<- function(data=NULL){
        if(is.null(data)){
                data <- load_data()
        }
        par(mfrow = c(1,1))
        plot(data$Time,data$Sub_metering_1,type="l",xlab = "",
             ylab = "Energy sub metering")
        lines(data$Time,data$Sub_metering_2,col = "red",type ="l")
        lines(data$Time,data$Sub_metering_3,col = "blue",type ="l")
        legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
               col = c("black","red","blue"),lty= 1)
        
        
        dev.copy(png,file = "plot3.png",width = 480,height =480)
        dev.off()
}