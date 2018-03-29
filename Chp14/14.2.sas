DATA BLOOD;
   LENGTH GROUP $ 1;
   INPUT ID GROUP $ TIME WBC RBC @@;

DATALINES;
1 A 1 8000 4.5 1 A 2 8200 4.8 1 A 3 8400 5.2
1 A 4 8300 5.3 1 A 5 8400 5.5
2 A 1 7800 4.9 2 A 2 7900 5.0
3 B 1 8200 5.4 3 B 2 8300 5.4 3 B 3 8300 5.2
3 B 4 8200 4.9 3 B 5 8300 5.0
4 B 1 8600 5.5
5 A 1 7900 5.2 5 A 2 8000 5.2 5 A 3 8200 5.4
5 A 4 8400 5.5 
;

data TIME_ONE;
 set BLOOD;
 where TIME=1;
run;

proc print data=TIME_ONE;
 title 'Problem 14.2(a)';
run;

data HIGH;
 set BLOOD;
 where GROUP = 'A' and ( WBC >= 8000 or RBC >=5 );
run;

proc print data=HIGH;
 title 'Problem 14.2(b)';
run;
