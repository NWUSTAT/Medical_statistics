* Encoding: GBK.
*�ڰ���ϰ�� ����֧��Ч .
DATA LIST FREE  /X(F1.0) Y(F1.0) f(F5.0).
VARIABLE LABELS X '���Ʒ���' Y '��Ч�ȼ�' f 'Ƶ��' .
VALUE LABELS X 1 'A' 2 'B' 3 'C' /Y 4 '����' 1 '��ת' 2 '��ת' 3 '��Ч' 4 '����'.
BEGIN DATA
1 4 12 1 3 23 1 2 9  1 1 14
2 4 12 2 3 25 2 2 12 2 1 8
3 4 26 3 3 21 3 2 4  3 1 4
END DATA.
*��Ȩ.
WEIGHT BY f.
*���㿨��ֵ.
CROSSTABS
  /TABLES=X BY Y
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.
