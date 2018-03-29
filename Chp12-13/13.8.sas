filename datain "C:\My SAS Homework\datain.txt";
filename dataout "C:\My SAS Homework\dataout.txt";
libname myfiles "C:\My SAS Homework";
options fmtsearch = (myfiles);

proc format library = myfiles;
     value $GENDFORM
	        "M" = "Male"
			"F" = "Female";
     value QUES
	        1 = 'yes'
			0 = 'no';
run;

data "C:\My SAS Homework\SURVEY";
  format GENDER $GENDFORM. Q1-Q5 QUES.;
  infile datain firstobs = 2;
  input GENDER $ Q1-Q5;
  file dataout;
  put GENDER Q1-Q5;
run;

proc print;
  title "Problem 13.8";
run;
