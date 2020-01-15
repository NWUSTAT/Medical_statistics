#第二章 例2-1某地120名正常成年男子的红细胞计数值
tab1=read.table("https://gitee.com/nwumed/medical_statistics/raw/master/nwutab02.txt", header=TRUE)#网站读取
rbc=tab1$rbc
#划分组段
b=c(3.20,3.50,3.80,4.10,4.40,4.70,5.00,5.30,5.60,5.90,6.20)
#组段区间标签
names=c("3.20-","3.50-","3.80-","4.10-","4.40-","4.70-","5.00-","5.30-","5.60-","5.90-6.20")
#组段频数,左侧闭区间,例如第1组 3.20<=x<3.50
rbcg=cut(rbc,breaks=b,labels=names, right = F) 
#展示频数表
t(table(rbcg))
#展示两幅图        
par(mfrow=c(1,2)) 
#查看直方图,左侧闭区间
hist(rbc,breaks=b,col="green",labels=names,right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 
#直方图（含标题、标目）
hist(rbc,freq=TRUE, breaks=b,col="gray",right = F, main ="某地120名正常成年男子红细胞数",xlim = c(3,6.5), ylim =c(0,25),xlab = "红细胞数", ylab="频数") 