proc format;
  value GENDER 1 = 'male' 2= 'female';
  value $ SES L = 'Low' M = 'Medium' H = 'High';
  value AGEGROUP low-20 = '<= 20' 21-40 = '21-40' 41-high = '41 and older';
run;

data QUES2;
  input ID $   GENDER   SES $   DRUG $   AGE;
  format GENDER GENDER. SES $SES.;
  label SES = 'Socioeconomic Status'
        DRUG = 'Drug Group'
        AGE = 'Age of SubJect';
  if DRUG = 'A' or DRUG = 'C' or DRUG = 'F' or DRUG = 'B'
  then COST = 'LOW';
  else if DRUG NE ' ' then COST = 'HIGH';

DATALINES;
001 1 L B 15
002 2 M Z 35
003 2 H F 76
004 1 L C 21
005 2 H . 58
;
  
run;

proc print;
 title 'Problem 3.2';
run;

proc freq;
 tables SES COST AGE;
 format AGE AGEGROUP.; 
run;