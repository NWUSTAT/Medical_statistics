#饼图
x=structure(c(0.031, 0.163, 0.714, 0.092),
    names =c("t0  (3.1%)", "t1  (16.3%)", "t3  (71.4%)", "t4  (9.2%)"))
x
#绘图
pie(x,labels = names(x), clockwise=T,col = c("green","yellow","red","black"),
     main="图2-4 98例肠道恶性肿瘤患者的病理分期");segments(0,0,0,0.5, col= "blue", lwd = 2)
#保存
png(file = "pie.png")#图文件名
pie(x,labels = names(x), clockwise=T,col = c("green","yellow","red","black"),
     main="图2-4 98例肠道恶性肿瘤患者的病理分期");segments(0,0,0,0.5, col= "blue", lwd = 2)
dev.off()#保存图