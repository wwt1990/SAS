data surveys;
  input Study $   group $   result $   count;

datalines;
One    MgSO4    Survived  20
One    Placebo  Survived  25
One    MgSO4    Died      100
One    Placebo  Died      155
Two    MgSO4    Survived  25
Two    Placebo  Survived  21
Two    MgSO4    Died      150
Two    Placebo  Died      150
Three  MgSO4    Survived  30
Three  Placebo  Survived  28
Three  MgSO4    Died      200
Three  Placebo  Died      240
;

proc freq;
 title 'Problem 3.18';
 tables Study * group * result / all;
 weight count;
run;