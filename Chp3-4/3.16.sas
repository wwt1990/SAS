data results;
 input GROUP $   RESULT $ count;

datalines;
ASPIRIN   strokes      65
ASPIRIN   no_strokes   935
PLACEBO   strokes      165
PLACEBO   no_strokes   1835
;
run;

proc freq;
  title 'Problem 3.16';
  tables GROUP * RESULT / chisq;
  weight count;
run;