data MIXED;
 informat A1-A3 B C $5.;
 input X1-X3 Y Z A1-A3 B C;
 array numeric[10] X1-X3 Y Z LX1-LX3 LY LZ;
 array text[5] A1-A3 B C;
  do i=1 to 5;
    numeric[i+5]=LOG(numeric[i]);
	if text[i]='?' then text[i]=' ';
  end;
 drop i;

datalines;
10 20 30 40 50 ONE TWO THREE ? ?
11 22 33 44 55 ? LLL MMM ? VVV
;
proc print;
 title 'Problem 15.4 Listing of Data Set MIXED';
run;
