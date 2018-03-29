data SALARY;
   input EMPID $   SALARY   JCLASS $;
if JCLASS = "1" then BONUS = 0.10*SALARY;
else if JCLASS = "2" then BONUS = 0.15*SALARY;
else if JCLASS = "3" then BONUS = 0.20*SALARY;
NEW_SALARY = BONUS + SALARY;

datalines;
137   28000  1
214   98000  3
199  150000  3
355   57000  2
;

proc print;
run;
