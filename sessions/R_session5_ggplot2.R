##install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

## first make an assignment to p (a ggplot2 object) 
p <- ggplot(gDat, aes(x = gdpPercap, y = lifeExp))
p

p + geom_point()

p + geom_point() + scale_x_log10()

p <- p + scale_x_log10()

p + geom_point()

p + geom_point(aes(color = continent))

## make points transparent
p + geom_point(alpha = 1/3) ## three points on top of each other make it opaque

## make larger points
p + geom_point(alpha = 1/2, size = 3)

p + geom_point(alpha = 1/2, size = 3) + geom_smooth()

p + geom_point(alpha = 1/2, size = 3) + 
  geom_smooth(lwd = 3, se = FALSE)

p + geom_point(alpha = 1/2, size = 3) + 
  geom_smooth(lwd = 3, se = FALSE, method = "lm")

ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_point()

## spread points out
ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_jitter()

## get points more narrow
ggplot(gDat, aes(x = continent, y = lifeExp)) + 
  geom_jitter(position = position_jitter(width = 0.1), alpha = 1/4)

## make box plots
ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_boxplot()

## make histogram
ggplot(gDat, aes(x = continent, y = lifeExp)) + geom_histogram()

## make densitty plot
ggplot(gDat, aes(x = continent)) + geom_density()

## make multiple small plots
p + geom_point() + facet_wrap(~continent)




