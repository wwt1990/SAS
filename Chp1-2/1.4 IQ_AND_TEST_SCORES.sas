data IQ_AND_TEST_SCORES;
   input ID $1-3 IQ 4-6 MATH 7-9 SCIENCE 10-12;
OVERALL = (IQ + MATH + SCIENCE)/(3*500);
if IQ GE 0 and IQ LE 100 then GROUP = 1;
else if IQ GE 101 and IQ LE 140 then GROUP = 2;
else if IQ GT 140 then GROUP = 3;

datalines;
001128550590
002102490501
003140670690
004115510510
;

proc sort;
   by IQ;
run;

proc freq;
   tables GROUP;
run;

proc print;
   id IQ;
run;
