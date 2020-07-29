
emission<- readRDS("summarySCC_PM25.rds")
class <- readRDS("Source_Classification_Code.rds")

motordata <- subset(emission, emission$fips=="24510" & emission$type=="ON-ROAD")

motoryear <- aggregate(motordata$Emissions, 
                      by=list(year=motordata$year),sum)
png(filename = "plot5.png")
plot(motoryear$year, motoryear$x, type = "o",
     xlab = "Year",
     ylab = "Total Emissions (tons)",
     main = "Coal Related Emissions of PM2.5 in US from 1999-2008")
dev.off()
