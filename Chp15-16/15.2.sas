data TEMPERATURE;
 input TF1-TF10;
 array TF[10];
 array TC[10];
 do count = 1 to 10;
    TC[count]=5/9*(TF[count]-32);
 end;
 drop count;

datalines;
32 212 -40 10 20 30 40 50 60 70
-10 0 10 20 30 40 50 60 70 80
;

proc print;
 title 'Problem 15.2  Listing of Data Set TEMPERATURE';
run;