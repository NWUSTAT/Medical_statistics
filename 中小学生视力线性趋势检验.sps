* Encoding: GBK.
*��8-9 ��Сѧ������.
DATA LIST LIST  /X(F1.0) Y(F1.0) f(F5.0).
VARIABLE LABELS X '�꼶' Y '�����ȼ�' f 'Ƶ��' .
VALUE LABELS X 1 'Сѧ1-3�꼶' 2 'Сѧ4-6�꼶' 3 '��ѧ' 4 '����' /Y 0 '��������' 1 '��Ƚ���' 2 '�жȽ���' 3 '�ضȽ���'.
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
*��Ȩ.
WEIGHT BY f.
*���㿨��ֵ.
CROSSTABS
  /TABLES=X BY Y
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.
