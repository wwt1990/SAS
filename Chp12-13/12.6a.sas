data prob12_6a;
  input NAME $1-10 GENDER $12  DOB $13-22;

datalines;
Cody       M05/11/1981
McMaster   F11/11/1967
Bill Smith M12/25/1999
;

proc print;
  title 'problem 12.6a';
run;