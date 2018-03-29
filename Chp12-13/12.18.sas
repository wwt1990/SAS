data prob12_18;
  input DATE mmddyy10. GENDER $11 AGE 12-13 SCORE 14-16;
  format DATE mmddyy10.;
  if GENDER = 'F';

datalines;
04/04/2004M15 90
05/12/2004F16 95
07/23/2004M18 88
01/20/2004F17100
;

proc print;
  title 'Problem 12.18';
run;