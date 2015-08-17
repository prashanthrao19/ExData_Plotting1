source("./load_data.R")

plot1<- function(data=NULL){
        if(is.null(data)){
                data <- load_data()
        }
        hist(data$Global_active_power,xlab = "Global Active Power(kilowatts)",
             main = "Global Active Power",col = "red")
        dev.copy(png,file = "plot1.png",width = 480,height =480)
        dev.off()
}