proc format;
 value trt 0 ='Placebo'
           1 ='Drug';
run;

data TREATMENT; 
 do block = 1 to 6;
    do count = 1 to 8;
       Sub + 1;
       random_number = ranuni(1234);
       output;
    end;
 end;
run;

proc rank groups=2;
 by block;
 var random_number;
 label random_number = 'Treatment';
run;

proc print label;
 title'Problem 6.8b';
 format random_number trt.;
 var random_number;
 ID Sub;
run;