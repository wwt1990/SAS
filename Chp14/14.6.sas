DATA TEMP;
   INPUT T @@;
   IF _N_ = 1 THEN DATE = '01JAN2004'D;
   ELSE DATE + 1;
   FORMAT DATE MMDDYY10.;
DATALINES;
30 32 28 26 25 12 18 20 22 24 36 38 38 39 44 
;

DATA MI;
   IF _N_ = 1 THEN DATE = '01JAN2004'D;
   ELSE DATE + 1;   
   FORMAT DATE MMDDYY10.;
   INPUT NUMBER @@;
DATALINES;
9 7 11 12 15 23 20 18 8 9 13 12 14 13 14
;

proc sort data=TEMP;
 by DATE;
run;

proc sort data=MI;
 by DATE;
run;

data BOTH;
 merge TEMP MI;
 by DATE;
run;

proc print data=BOTH;
 title 'Problem 14.6';
 id DATE;
run;