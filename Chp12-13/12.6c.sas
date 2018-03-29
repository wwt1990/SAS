data prob12_6c;
  input NAME $1-10 GENDER $12  DOB mmddyy10.;
  AGE = int(yrdif(DOB,today(),'actual'));
  format DOB mmddyy10.;

datalines;
Cody       M05/11/1981
McMaster   F11/11/1967
Bill Smith M12/25/1999
;

proc print;
  title 'problem 12.6c';
run;