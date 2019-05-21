install.packages("HistData")
library(HistData)
data(Galton)
head(Galton)
data(Wheat)

data(Cholera)
head(Cholera)
# plot cholera deaths vs. elevation
plot(cholera_drate ~ elevation, data=Cholera, 
	pch=16, cex.lab=1.2, cex=1.2,
	xlab="Elevation above high water mark (ft)",
	ylab="Deaths from cholera in 1849 per 10,000")
# Farr's mortality ~ 1/ elevation law
elev <- c(0, 10, 30, 50, 70, 90, 100, 350)
mort <- c(174, 99, 53, 34, 27, 22, 20, 6)
lines(mort ~ elev, lwd=2, col="blue")

U5 <- read.csv("U5China.csv")
summary(U5)

# plot 5岁 vs 年
plot(Rate ~ Year, data=U5, 
	pch=16, cex.lab=1.2, cex=1.2,
	xlab="年代",ylab="死亡率1/1000）")

#5岁以下儿童死亡率 vs 1980年
U1980 <- read.csv("U5China1980.csv")
head(U1980)
plot(Rate ~ Year, data=U1980,xlim=c(1980,2030),ylim=c(0,65), 
	pch=16, cex.lab=1.2, cex=1.2,
	xlab="年代",ylab="中国5岁以下儿童死亡率(1/1000）")
# 2030控制目标
elev <- c(2015,2020,2015,2030)
mort <- c(6, 6, 6,6)
lines(mort ~ elev, lwd=2, col="blue")
legend(x=2000,y=10,legend=c("2030目标"),col=c("blue"),lty=0)

install.packages("HistData")
library(HistData)
data(peas)
head(peas)
