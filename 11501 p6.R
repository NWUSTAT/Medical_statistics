
#第1次周期模拟（2018年9月）dm，n1=宿舍人数,n2=模拟次数（最多10万次）
dm1=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)
 m=mean(d)
 d=data.frame(d)
 f6=(abs(d[1,1]-m)+abs(d[2,1]-m)+abs(d[3,1]-m)+abs(d[4,1]-m)+abs(d[5,1]-m)+abs(d[6,1]-m))/6
 result_vector= c(result_vector, f6)
}
return(result_vector)
}
#第1次周期模拟（距离）
dis1=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)
 ds=mean(dist(d))
 result_vector= c(result_vector,ds)
}
return(result_vector)
}
m1=dm1(6,100000)
d1=dis1(6,100000)
day1=cbind(m1,d1)
summary(day1)
install.packages("psych")#加载程序包
library(psych)#调用程序包
describe(m1)
hist(m1)
boxplot(m1)
describe(d1)
hist(d1)

#第2次周期模拟（2018年10月）dm，n1=宿舍人数,n2=模拟次数（最多10万次），周期=30天，标准差=2天
dm2=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 p1= runif(1, min=1, max=30)+rnorm(1,31,4.5)
 p2= runif(1, min=1, max=30)+rnorm(1,31.38,2.45)
 p3= runif(1, min=1, max=30)+rnorm(1,27.71,3.1)
 p4= runif(1, min=1, max=30)+rnorm(1,29.43,5.06)
 p5= runif(1, min=1, max=30)+rnorm(1,30.56,2.01)
 p6= runif(1, min=1, max=30)+rnorm(1,29.43,5.06)
 m=(p1+p2+p3+p4+p5+p6)/n1
 md=(abs(p1-m)+abs(p3-m)+abs(p3-m)+abs(p4-m)+abs(p5-m)+abs(p6-m))/6
 result_vector= c(result_vector, md)
}
return(result_vector)
}
m2=dm2(6,100000)
describe(m2)

#第2次周期模拟（距离）
dis2=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)+rnorm(n1,30,2)
 ds=mean(dist(d))
 result_vector= c(result_vector,ds)
}
return(result_vector)
}
m2=dm2(6,100)
d2=dis2(6,100)
day2=cbind(m2,d2)
summary(day2)
hist(m2)
hist(d2)

#第3次周期模拟（均差）dm，n1=宿舍人数,n2=模拟次数（最多10万次），周期=30天，标准差=2天
dm3=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)+rnorm(n1,30,2)+rnorm(n1,30,2)
 m=mean(d)
 d=data.frame(d)
 f6=(abs(d[1,1]-m)+abs(d[2,1]-m)+abs(d[3,1]-m)+abs(d[4,1]-m)+abs(d[5,1]-m)+abs(d[6,1]-m))/6
 result_vector= c(result_vector, f6)
}
return(result_vector)
}
#第3次周期模拟（距离）
dis3=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)+rnorm(n1,30,2)+rnorm(n1,30,2)
 ds=mean(dist(d))
 result_vector= c(result_vector,ds)
}
return(result_vector)
}
m3=dm3(6,100)
d3=dis3(6,100)
day3=cbind(m3,d3)
summary(day3)
hist(m3)
hist(d3)
#第4次周期模拟（均差）dm，n1=宿舍人数,n2=模拟次数（最多10万次），周期=30天，标准差=2天
dm4=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)+rnorm(n1,30,2)+rnorm(n1,30,2)+rnorm(n1,30,2)
 m=mean(d)
 d=data.frame(d)
 f6=(abs(d[1,1]-m)+abs(d[2,1]-m)+abs(d[3,1]-m)+abs(d[4,1]-m)+abs(d[5,1]-m)+abs(d[6,1]-m))/6
 result_vector= c(result_vector, f6)
}
return(result_vector)
}
#第4次周期模拟（距离）
dis4=function(n1,n2){
result_vector= NULL
for (i in 1:n2)
{
 d= runif(n1, min=1, max=30)+rnorm(n1,30,2)+rnorm(n1,30,2)+rnorm(n1,30,2)
 ds=mean(dist(d))
 result_vector= c(result_vector,ds)
}
return(result_vector)
}
m4=dm4(6,100)
d4=dis4(6,100)
day4=cbind(m3,d3)
summary(day4)
hist(m4)
hist(d4)


