data prob12_10;
  input @1 (GROUP1-GROUP3) ($1. +4)
        @2 (SCORE1-SCORE3) (3. +2);

datalines;
A100 B 90 C 76
C 87 A 86 B 88
C 93 B 92 A 90
;

proc print;
  title 'Problem 12.10';
run;