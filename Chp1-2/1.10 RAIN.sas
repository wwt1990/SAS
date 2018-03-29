data RAIN;
   input CITY $   RAIN_JUNE  RAIN_JULY  RAIN_AUGUST;
AVERAGE = (RAIN_JUNE + RAIN_JULY + RAIN_AUGUST)/3;
PERCENT_JUNE = 100* RAIN_JUNE / AVERAGE;
PERCENT_JULY = 100* RAIN_JULY / AVERAGE;
PERCENT_AUGUST = 100* RAIN_AUGUST / AVERAGE;

datalines;
Trenton  23 25 30
Newark   18 27 22
Albany   22 21 27
;

proc sort;
 by CITY;
run;

proc print;
run;

proc means maxdec=2 mean std clm alpha= 0.05;
 var RAIN_JUNE  RAIN_JULY  RAIN_AUGUST;
run;