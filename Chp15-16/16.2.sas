DATA QUES;
 INPUT ID $ REASON1-REASON4;
DATALINES;
001 3 6 13 17
002 8 3 4 .
003 20 2 . .
004 8 4 20 19
;

data freq;
 set QUES;
 array question[4] REASON1-REASON4;

 do i = 1 to 4;
  if not missing (question[i]) then do;
   reason = question[i];
   output;
  end;
 end;
run;

proc freq data=freq;
 title 'Frequency Table of Reasons';
 tables reason / nocum nopercent;
run;