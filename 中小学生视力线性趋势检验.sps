* Encoding: GBK.
*例8-9 中小学生视力.
DATA LIST LIST  /X(F1.0) Y(F1.0) f(F5.0).
VARIABLE LABELS X '年级' Y '视力等级' f '频数' .
VALUE LABELS X 1 '小学1-3年级' 2 '小学4-6年级' 3 '中学' 4 '高中' /Y 0 '视力正常' 1 '轻度近似' 2 '中度近视' 3 '重度近视'.
BEGIN DATA
1 0 137
2 0 126
3 0 47
4 0 21
1 1 43
2 1 52
3 1 97
4 1 109
1 2 11
2 2 17
3 2 35
4 2 45
1 3 2
2 3 4
3 3 15
4 3 21
END DATA.
*加权.
WEIGHT BY f.
*计算卡方值.
CROSSTABS
  /TABLES=X BY Y
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.
