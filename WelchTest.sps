* Encoding: GBK.
*例9-7 Welch t 检验.
DATA LIST FREE /g(F1.0) x(F5.2).
VARIABLE LABELS g '分组' x '小鼠白细胞数'.
VALUE LABELS g 1 "试验组" 2 "对照组".
BEGIN DATA
1 0.90 1 4.81 1 5.78	1 5.93 1 3.95 1 5.86	1 2.47 1 1.36 1 6.22	1 1.38
2 1.97 2 2.27 2 1.46	2 2.77 2 1.56 2 .78	2 3.03 2 2.95 2
END DATA.
*正态检验+方差齐性检验.
EXAMINE VARIABLES=x BY g
  /PLOT SPREADLEVEL(1)
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /NOTOTAL.
*Studengt 与 Welch t 检验.
T-TEST GROUPS=g(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=x
  /CRITERIA=CI(.95).

