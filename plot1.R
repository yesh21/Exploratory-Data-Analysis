emission<-readRDS(file.choose())
##choose rds file summarySCC_PM25.rds
factoryear<-aggregate(emission$Emissions,list(year=emission$year),sum)
 png(filename = "plot1.png")
 plot(factoryear$year, factoryear$x, type = "l", 
       main = "Total Emissions of PM2.5",
       ylab = "Total emissions of PM2.5 (tons)",
       xlab = "Year")
dev.off()