DATA STUDENT;
   INPUT ID NAME & $30. @@;

DATALINES;
1 John Torres  5 Alex Antoniou  3 Thomas Friend  
2 Sheldon Goldstein  11 Joanne Dipietro  12 Bill Murray
21 Janet Reno  4 Deborah Smith  6 Don Dubin  7 Alice Ford
8 Diane Farley  9 Laura Easton  10 Brian Fishmann
13 Eric Garrett  14 James Galt  15 Toni Gilman
;


DATA TEST;
   INPUT ID SCORE @@;

DATALINES;
15 95  1 80  3 98  21 75  4 87  14 67  13 91  11 85  12 57 
29 93
;

proc sort data=STUDENT;
 by ID;
run;

proc sort data=TEST;
 by ID;
run;

data roster;
 merge STUDENT (in=in_student_file) TEST (in=in_test_file);
 by ID;
 if not in_student_file then NAME='Not in Student File';
run;

data new_roster;
 merge STUDENT (in=in_student_file) TEST (in=in_test_file);
 by ID;
 if in_test_file;
 if not in_student_file then do;
    NAME='Not in Student File';
    last='ZZZ';
 end;
 else last=scan(NAME, -1);
run;

proc sort data=new_roster;
 by last;
run;

proc print data=roster;
 title'Problem 14.8a';
 id NAME;
run;

proc print data=new_roster;
 title'Problem 14.8b';
 id NAME;
 var ID SCORE;
run;

