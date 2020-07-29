emission<-readRDS(file.choose())
##choose rds file summarySCC_PM25.rds
factoryear<-aggregate(emissionbaltimore$Emissions,list(year=emissionbaltimore$year),sum)
 png(filename = "plot2.png")
 plot(factoryear$year, factoryear$x, type = "l", 
          main = "Total Emissions of PM2.5 in Baltimore City",
          ylab = "Total emissions of PM2.5 (tons)",
          xlab = "Year")
dev.off()