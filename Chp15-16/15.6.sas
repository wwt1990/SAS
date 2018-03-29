data ANSWERS;
 ***Passing grades:65,70,60,75,66;
 input ID $  SCORE1-SCORE5;
 
 datalines;
 001 50 70 62 78 85
 002 90 86 87 91 94
 003 63 72 58 73 68
 ;

data PASS;
 set ANSWERS;
 array pscore[5] _temporary_(65 70 60 75 66);
 array score[5];
 pass = 0;
 do i = 1 to 5;
   if score[i] >= pscore[i] then pass= pass+1;
 end;
 drop i;


proc print data=PASS noobs;
 title 'Problem 15.6 Listing of # of Passing Tests';
run;