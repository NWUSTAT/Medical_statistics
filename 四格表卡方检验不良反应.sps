* Encoding: GBK.
*N��8-1.
DATA LIST LIST  /g(F1.0) x(F1.0) f(F3.0).
VARIABLE LABELS g '����' x '������Ӧ' f 'Ƶ��' .
VALUE LABELS g 1 '������' 2 '������' /x 1 '��' 2 '��'.
BEGIN DATA
1 1 2
1 2 15
2 1 7
2 2 9
END DATA.
WEIGHT BY f.
CROSSTABS
  /TABLES=g BY x
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT EXPECTED
  /COUNT ROUND CELL.
