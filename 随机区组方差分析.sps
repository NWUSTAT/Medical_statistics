* Encoding: GBK.
*例10-4.
DATA LIST LIST /x(F5.2) b t.
VARIABLE LABELS  x '总DNA得率' b '区组' t "提取方法" .
VALUE LABELS t 1 '甲方法' 2 '乙方法' 3 '丙方法' .
BEGIN DATA
43.24	1	1
27.07	2	1
28.21	3	1
36.09	4	1
42.35	5	1
38.17	6	1
28.83	1	2
26.49	2	2
27.16	3	2
30.22	4	2
31.57	5	2
28.94	6	2
19.74	1	3
11.45	2	3
13.72	3	3
15.92	4	3
16.84	5	3
14.51	6	3
END DATA.
*统计描述+方差分析表.
  UNIANOVA x BY b t
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /PRINT DESCRIPTIVE
  /CRITERIA=ALPHA(.05)
  /DESIGN=b t.
