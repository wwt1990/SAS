data diet;
  input sub 1-2 before 3-5 after 6-8;

datalines;
01300290
02350331
03190200
04400395
05244240
06321300
07330332
08250242
09190185
10160158
11260256
12240220
;

proc ttest;
  title 'Problem 6.6';
  paired before * after;
run;
