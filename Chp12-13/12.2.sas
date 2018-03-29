data prob12_2;
  infile datalines dsd;
  informat DOB mmddyy10. VD date9. GENDER $1. NAME $11.;
  input DOB VD GENDER NAME;
  format DOB VD mmddyy10.;

datalines;
10/21/1950,03MAY2004,M,Schneider
11/12/1944,05DEC2004,F,Strawderman
01/01/1960,25APR2004,M,Smith
;

proc print;
  title 'Problem 12.2';
run;