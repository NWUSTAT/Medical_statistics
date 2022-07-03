* Encoding: GBK.
*第八章习题 老慢支疗效 .
DATA LIST FREE  /X(F1.0) Y(F1.0) f(F5.0).
VARIABLE LABELS X '治疗方法' Y '疗效等级' f '频数' .
VALUE LABELS X 1 'A' 2 'B' 3 'C' /Y 4 '治愈' 1 '好转' 2 '好转' 3 '无效' 4 '加重'.
BEGIN DATA
1 4 12 1 3 23 1 2 9  1 1 14
2 4 12 2 3 25 2 2 12 2 1 8
3 4 26 3 3 21 3 2 4  3 1 4
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
