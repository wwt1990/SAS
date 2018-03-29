data EXPER;
 input TIME0-TIME4;
datalines;
100 200 300 400 500
55 110 130 150 170
;

data MINUTES;
 set EXPER;
 array TIME[0:4] TIME0-TIME4;
 do i = 0 to 4;
   TIME[i]= round(TIME[i]/60,0.1); 
 end;
 drop i;

proc print data=MINUTES;
 title'Problem 15.8 Listing of Time Measured in Minutes';
run;