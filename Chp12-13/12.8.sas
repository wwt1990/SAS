data prob12_8;
  infile datalines firstobs=2 missover;
  informat ID $3. GENDER $1. DOB mmddyy10.;
  input  ID GENDER DOB SCORE1 SCORE2;
  format DOB date9.;

datalines;
***Header line: ID GENDER DOB SCORE1 SCORE2
001 M 10/10/1976 100 99
002 F 01/01/1960 89
003 M 05/07/2001 90 98
;


proc print;
  title 'Problem 12.8';
run;
