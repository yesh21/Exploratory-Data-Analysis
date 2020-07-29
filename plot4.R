
emission<- readRDS("summarySCC_PM25.rds")
class <- readRDS("Source_Classification_Code.rds")

coal <- class[grepl("Coal", class$Short.Name), ]
coaldata <- emission[emission$SCC %in% coal$SCC, ]

## sum up emissions by year
coalyear <- aggregate(coaldata$Emissions, 
                                 by=list(year=coaldata$year),sum)
png(filename = "plot4.png")
plot(coalyear$year, coalyear$x, type = "o",
     xlab = "Year",
     ylab = "Total Emissions (tons)",
     main = "Coal Related Emissions of PM2.5 in US from 1999-2008")
dev.off()
