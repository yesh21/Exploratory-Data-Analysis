
emission<- readRDS("summarySCC_PM25.rds")
class <- readRDS("Source_Classification_Code.rds")

motordata <- subset(emission, (emission$fips=="24510" |emission$fips=="06037") & emission$type=="ON-ROAD")


motoryear <- aggregate(motordata$Emissions, 
                       by=list(area=motordata$fips,year=motordata$year),sum)
library(ggplot2)
png(filename = "plot6.png")
qplot(year, x, data =  motoryear, color = area, geom = "line") +
  ggtitle("Emissions of PM2.5 in Baltimore(24510) and LA (06037)") + 
  ylab("Total Emissions from motor vehicles(tons)") + 
  xlab("Year") 
dev.off()