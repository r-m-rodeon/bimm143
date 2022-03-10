#Class 05 Data Visualization

#This is the "base" R plot
plot(cars)

#Get package ggplot2
#install.packages("ggplot2")

#Load package ggplot2
library("ggplot2")

#Plot the data
ggplot(cars)

#data + AESthetics + GEOMetries
gg <- ggplot(data=cars) + aes(x=dist, y=speed) + geom_point()
gg

#Fit a line to the data (lm = linear model)
gg2 <- gg + geom_smooth(method="lm")
gg2

#Make b/w & Add labels
gg3 <- gg2 + theme_bw() + labs(title = "Stopping Distance of Cars", y = "Speed (mph)", x = "Stopping Distance (ft)" )
gg3

#Change size of point, color of point, point transparency
gg4 <- gg3 + geom_point(size = 2, color = "red", alpha = 10)
gg4

#Work with an actual data file
url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

#Fit this data to a graph
genes1 <- ggplot(data=genes) + aes(x = Condition1, y = Condition2) + geom_point(color = "red") + geom_smooth(method="loess", color = "green") + labs(title = "Competency of a Drug Under Two Different Conditions", x = "Condition 1", y = "Condition 2")
genes1
