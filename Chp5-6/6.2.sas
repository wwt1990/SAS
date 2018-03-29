data read_speed;
  input program $ @;
  input speed @@;

datalines;
Cody 500 Cody 450 Cody 505 Cody 404 Cody 555 Cody 567 Cody 588
Cody 577 Cody 566 Cody 644 Cody 511 Cody 522 Cody 543 Cody 578
Smith 355 Smith 388 Smith 440 Smith 600 Smith 510 Smith 501 Smith 502 
Smith 489 Smith 499 Smith 489 Smith 515 Smith 520 Smith 520 Smith 480
;

proc ttest;
  title 'Problem 6.2';
  class program;
  var speed;
run;

 



