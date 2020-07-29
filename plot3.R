emission<-readRDS(file.choose())
##choose rds file summarySCC_PM25.rds
factortype<-aggregate(emissionbaltimore$Emissions,list(type=emissionbaltimore$type,year=emissionbaltimore$year),sum)
library(ggplot2)
png(filename = "plot3.png")
qplot(year, x, data = factortype, color = type, geom = "line") +
  ggtitle("Total Emissions of PM2.5 in Baltimore City By pollutant type") + 
  ylab("Total Emissions (tons)") + 
  xlab("Year") 
dev.off()
