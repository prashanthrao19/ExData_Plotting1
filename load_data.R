load_data<- function(){
        #load data in to R
        power_data<- read.table("./household_power_consumption.txt",sep = ";",header = T,na= "?",
                                colClasses = c("character","character",rep("numeric",7)))
        #changes variables Date & Time classes to Date/time 
        power_data$Time <- strptime(paste(power_data$Date,power_data$Time),"%d/%m/%Y %H:%M:%S")
        power_data$Date <- as.Date(power_data$Date,"%d/%m/%Y")
        dates<- as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d")
        #subset records of dates 2007-02-01,2007-02-02
        df<- subset(power_data,Date %in% dates)
        
        return(df)
        
                                
}