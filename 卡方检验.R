matrix(c(15,23,24,12,12,21),nc=2)->c1  #2行矩阵
chisq.test(c1,correct=TRUE) #correct校正

matrix(c(22,10,32,1),nc=2)->c2  
chisq.test(c2,correct=TRUE) 
fisher.test(c2) #Fisher检验

matrix(c(34,32,27,20,21,26),nc=2)->c3
c3
chisq.test(c3,correct=TRUE) 
fisher.test(c3) 
matrix(c(32,24,34,22,29,19),nc=2)->c4
c4
chisq.test(c4,correct=TRUE)
fisher.test(c4)