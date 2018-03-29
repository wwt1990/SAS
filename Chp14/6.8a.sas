proc format;
 value trt 0 ='Placebo'
           1 ='Drug';
run;


data TREATMENT; 
 do Sub = 1 to 48;
    random_number = ranuni(1234);
    output;
 end;
 
run;

proc rank groups=2;
 var random_number;
 label random_number = 'Treatment';
run;

proc print label;
 title'Problem 6.8a';
 format random_number trt.;
 var random_number;
 ID Sub;
run;