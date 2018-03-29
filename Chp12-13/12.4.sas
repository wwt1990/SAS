data prob12_4;
  infile datalines dsd;
  informat NAME $20.;
  input NAME AGE HEIGHT WEIGHT;

datalines;
Bradley,35,68,155
"Bill Johnson",,70,200
"Smith,Jeff",27,70,188
;

proc print;
  title 'Problem 12.4';
run;