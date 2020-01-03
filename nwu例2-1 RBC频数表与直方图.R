#输入120名正常成年男子红细胞数
rbc=c(
5.12, 5.13 ,4.58,4.31,4.09,4.41,4.33,4.58,4.24,	5.45,	4.32, 4.84,4.91, 5.14,5.25,4.89,4.79,4.90, 5.09,4.64,5.14,	5.46,	4.66,	4.20,
4.21,3.73,5.17,5.79,5.46,4.49,4.85,	5.28,	4.78,	4.32,	4.94,	5.21,4.68,5.09,4.68,4.91,5.13,5.26,3.84,	4.17,	4.56,	3.52,	6.00,	4.05,
4.92,4.87,4.28,4.46,5.03,5.69,5.25,	4.56,	5.53,	4.58,	4.86,	4.97,4.70,4.28,4.37,5.33,4.78,4.75,5.39,	5.27,	4.89,	6.18,	4.13,	5.22,
4.44,4.13,4.43,4.02,5.86,5.12,5.36,	3.86,	4.68,	5.48,	5.31,	4.53,4.83,4.11,3.29,4.18,4.13,4.06,3.42,	4.68,	4.52,	5.19,	3.70,	5.51,
4.64,4.92,4.93,4.90,3.92,5.04,4.70,	4.54,	3.95,	4.40,	4.31,	3.77,4.16,4.58,5.35,3.71,5.27,4.52,5.21,	4.37,	4.80,	4.75,	3.86,	5.69
)
#划分组段
b=c(3.20,3.50,3.80,4.10,4.40,4.70,5.00,5.30,5.60,5.90,6.20)
#组段区间标签
names=c("3.20-","3.50-","3.80-","4.10-","4.40-","4.70-","5.00-","5.30-","5.60-","5.90-6.20")
#组段频数,左侧闭区间,例如第1组 3.20<=x<3.50
rbcg=cut(rbc,breaks=b,labels=names, right = F) 
#展示频数表
t(table(rbcg))
#一页两幅图
par(mfrow=c(1,2)) 
#查看直方图,左侧闭区间
hist(rbc,breaks=b,col="green",labels=names,right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 
#直方图（含标题、标目）
hist(rbc,freq=TRUE, breaks=b,col="gray",right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 

#正态分布曲线
par(mfrow=c(1,2))  #1页2图 
hist(rbc,freq=F, breaks=b,col="lightblue",right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,0.8),xlab = "红细胞数", ylab="频率") 
hist(rbc,freq=FALSE, col="lightgreen",xlab="红细胞数",ylab="概率密度", main="某地120名正常成年男子红细胞数", xlim=c(3,6.50),ylim=c(0, 0.8))
curve(dnorm(x, mean=mean(rbc), sd=sd(rbc)), add=TRUE, col="darkblue", lwd=2)

#表1-1数据
X1=c("刘慧颖","李辉","陈晓婷","胡海明","赵长辉")
X2=rep(1:5)
X3=c(55,39,43,60,62)
X4=c("女","男","女","男","男")
X5=c("试验组","试验组","试验组","对照组","对照组")
X6=c(128,145,130,160,150)
X7=c(85,98,90,116,108)
X8=c("正常","正常","异常","异常","正常")
X9=c("尚好","好","好","差","尚好")
X=data.frame(X1,X2,X3,X4,X5,X6,X7,X8,X9)
print(X)
summary(X)
cor(X6,X7)
cov(X6,X6)
cov(X7,X7)
cov(X6,X7)
matrix(c(185,170,170,160),ncol=2)

#表1-1全部数据
set.seed(20200102)
X2=rep(1:95)
X3=ceiling(runif(95, min=35, max=78))
X4 = runif(95, min=0, max=1)
X4 =ifelse(X4>0.6,"男","女")
X5 = runif(95, min=0, max=1)
X5 =ifelse(X5>0.5,"试验组","对照组")
install.packages("MASS")      # Install MASS package
library("MASS")               # Load MASS package
BP=mvrnorm(n = 95, mu =c(142,98), Sigma = matrix(c(185,170,170,160),ncol=2))  # Random sample from bivariate normal distribution
X6=ceiling(BP[,1])
X7=ceiling(BP[,2])
X8 = runif(95, min=0, max=1)
X8 =ifelse(X8>0.3,"正常","异常")
X9 =ceiling(runif(95, min=0, max=100))
X9 =ifelse(X9<30,30+X9,X9)
X10 =cut(X9,breaks=c(0,60,75,100),labels=c("差","尚好","好")) 
X=data.frame(X1,X2,X3,X4,X5,X6,X7,X8,X9,X10)
print(X)
summary(X)
plot(X7,X6)
#分组描述统计量

#第一章表1-1
tab1=read.table("https://gitee.com/nwumed/medical_statistics/raw/master/nwutab01.txt", header=TRUE)#网站读取
tab2=read.table("C:\\R数据\\nwutab01.txt", header=TRUE) #本地读取
attach(tab1)
#install.packages("doBy")#加载程序包
library(doBy)#调用程序包
summaryBy(X6+X7~X5,data=X,FUN=c(length,mean,sd))
#install.packages("psych")#加载程序包
library(psych)#调用程序包
describeBy(X6,X5,mat=TRUE) #矩阵表示
describeBy(X6,list(X4,X5),mat=TRUE,digits=2) 
plot(X7,X6)
detach(tab1)

#第二章 例2-1某地正常成年男子120名的红细胞计数值
tab1=read.table("https://gitee.com/nwumed/medical_statistics/raw/master/nwutab02.txt", header=TRUE)#网站读取
tab2=read.table("C:\\R数据\\nwutab02.txt", header=TRUE) #本地读取
#划分组段
b=c(3.20,3.50,3.80,4.10,4.40,4.70,5.00,5.30,5.60,5.90,6.20)
#组段区间标签
names=c("3.20-","3.50-","3.80-","4.10-","4.40-","4.70-","5.00-","5.30-","5.60-","5.90-6.20")
#组段频数,左侧闭区间,例如第1组 3.20<=x<3.50
rbcg=cut(rbc,breaks=b,labels=names, right = F) 
#展示频数表
t(table(rbcg))
#两幅图
par(mfrow=c(1,2)) 
#查看直方图,左侧闭区间
hist(rbc,breaks=b,col="green",labels=names,right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 
#直方图（含标题、标目）
hist(rbc,freq=TRUE, breaks=b,col="gray",right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 


