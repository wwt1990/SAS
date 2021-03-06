data CLINIC;
   input ID $1-3  GENDER $4   RACE $5   HR 6-8   SBP 9-11   DBP 12-14   N_PROC 15-16;
AVE_BP = DBP + (SBP-DBP)/3;

datalines;
001MW08013008010
002FW08811007205
003MB05018810002
004FB   10806801
005MW06812208204
006FB101   07404
007FW07810406603
008MW04811207006
009FB07719011009
010FB06616410610
;

proc print;
run;

proc means mean std clm alpha= 0.05 median;
 var SBP DBP AVE_BP;
run;

proc freq;
 tables gender/nocum nopercent;
run;

proc chart;
 vbar gender;
run;

proc univariate plot;
 var SBP DBP;
run;

proc chart;
 vbar gender / group=race;
run;

proc chart;
 vbar HR / group=gender  midpoints=50 to 100 by 10;
run;

proc plot;
 plot SBP*HR;
quit;

proc plot;
 plot SBP*DBP=gender;
quit;

proc plot;
 plot SBP*DBP=race;
quit;

