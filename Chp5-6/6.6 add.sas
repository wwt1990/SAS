data read_speed;
  input status $ @;
  input weight @@;

datalines;
before 300 before 350 before 190 before 400 before 244 before 321 
before 330 before 250 before 190 before 160 before 260 before 240 
after 290 after 331 after 200 after 395 after 240 after 300 
after 332 after 242 after 185 after 158 after 256 after 220 
;

proc ttest;
  title 'Problem 6.6 add';
  class status;
  var weight;
run;
