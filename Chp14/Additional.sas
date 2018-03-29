proc format;
 value prize 4='first prize'
             2,3='second prize'
             0,1='not a winner';
run;


data PRIZE; 
 random_number = ranuni(1111);
 input name $;
 
datalines;
A
B
C
D
E
;
proc rank groups=5;
 var random_number;
run;

proc print label;
 format random_number prize.;
 title'Additional Problem';
 var name random_number;
 label random_number = 'result';
run;