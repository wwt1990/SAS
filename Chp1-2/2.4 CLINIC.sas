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

proc freq;
 tables gender/nocum nopercent;
run;

proc chart;
 vbar gender;
run;

proc print;
run;