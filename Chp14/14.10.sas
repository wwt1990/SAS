DATA PRICES;
   INPUT PART_NUMBER QUANTITY PRICE @@;

DATALINES;
100 23 29.95  102 12 9.95  103 21 15.99  123 9 119.95  113 40 56.66
111 55 39.95  105 500 .59
;

proc sort data=PRICES;
   by PART_NUMBER;
run;


data new;
   input PART_NUMBER QUANTITY PRICE @@;

datalines;
103 . 18.99 111 45 29.95 113 35 . 123 . 129.96
;

proc sort data=new;
   by PART_NUMBER;
run;

data PRICES;
   update PRICES new;
   by PART_NUMBER;
run;

proc print data=PRICES;
   title'Problem 14.10';
run;