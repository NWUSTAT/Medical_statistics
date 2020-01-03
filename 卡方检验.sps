* Encoding: UTF-8.
 *三个变量名r，c，n 分别代表二维表的行、列和频数

DATA LIST Free/r c n. 
Begin data.
1 1 15
1 2 12
2 1 23
2 2 12
3 1 24
3 2 21
End data.
 *二维表频数加权

WEIGHT BY n.  
 *计算卡方值

CROSSTABS   
/TABLES=r BY c
/FORMAT=AVALUE TABLES
/STATISTICS=CHISQ
/CELLS=COUNT
/COUNT ROUND CELL.
