DATA THIN;
 INPUT ID $ TIME X @@;
DATALINES;
001 1 10 001 2 12 001 3 15
004 1 17
003 1 14 003 2 18 003 3 22 003 4 28
002 1 18 004 2 28
;

proc sort data=THIN;
 by ID TIME;
run;

data Last_X;
 array Last[4];
 retain Last1-Last4;
 set THIN;
 by ID;
 Last[TIME]= X;
 if last. ID then output;
run;

proc print data=Last_X;
 title'Problem 16.4a';
 var ID X;
run;

data WIDE;
 array s[4];
 retain s1-s4;
 set THIN;
 by ID;
 if first. ID then do i = 1 to 4;
   s[i] = . ;
 end;
 s[TIME]=X;
 if last. ID then output;
run;

proc print data=WIDE label noobs;
 title'Listing of Data Set WIDE';
 label s1 = X1 s2 = X2 s3 = X3 s4 = X4;
 var ID s1 - s4;
run;