householdData<-read.table("Exploratory Data Analysis/household_power_consumption.txt",head=TRUE,sep=";",na.strings="?",stringsAsFactors=FALSE)
householdData$DateTime<-paste(householdData$Date,householdData$Time)
householdData$DateTime<-strptime(householdData$DateTime,format="%d/%m/%Y %H:%M:%S")
householdData$Date<-as.Date(householdData$DateTime)
plotData<-householdData[which(householdData$Date=="2007-02-01" | householdData$Date=="2007-02-02"),]
png(file="plot2.png",width=480,height=480,units="px")
plot(plotData$DateTime,plotData$Global_active_power,pch=".",type="o",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()