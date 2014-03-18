gdURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(gdURL)
gDat  <- read.delim("gapminderDataFiveYear.txt")
str(gDat)
gDat
head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
length(gDat)
summary(gDat)
head(gDat)
gDat$lifeExp
hist(gDat$lifeExp)
class(gDat$country)
levels(gDat$country)
subset(gDat, subset = country == "Cambodia")
subset(gDat, subset = country %in% c("Cambodia", "Afghanistan"))
subset(gDat, subset = year == 1952, select = c(year, country))
## get data for which life exüectnacy is less than 32 years
## assing it to an object
## how many rows? how many observations per continent?
subset(gDat, subset = lifeExp <= 32)
smallLifeExp <- (subset(gDat, subset = lifeExp < 32))
nrow(smallLifeExp)
summary(smallLifeExp$continent)
table(smallLifeExp$continent)

plot(lifeExp ~ year, gDat)
plot(lifeExp ~ year, gDat, subset = country == "Rwanda")
lm(lifeExp ~ year, gDat, subset = country == "Rwanda")
mean(gDat$lifeExp)
with(gDat, mean(lifeExp))
with(subset(gDat, country == "Cambodia"), mean(lifeExp))
X  <- 1:4
dev.print(png, "session2", width = 480)
