data one;  /*输入数据，三个变量名r，c，n 分别代表二维表的行、列和频数*/
input r c n @@;
cards;
1 1 15
1 2 12
2 1 23
2 2 12
3 1 24
3 2 21
;
proc freq data=one;  /*调用SAS/freq过程，计算卡方值*/
weight n;
tables r*c/chisq;
run;