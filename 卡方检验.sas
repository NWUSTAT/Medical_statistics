data one;   /*�������ݣ�����������r��c��n �ֱ�����ά����С��к�Ƶ��
input r c n @@;
cards;
1 1 15
1 2 12
2 1 23
2 2 12
3 1 24
3 2 21
;
proc freq data=one;  /*����SAS/freq���̣����㿨��ֵ
weight n;
tables r*c/chisq;
run;