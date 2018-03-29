DATA BLOOD;
   DO I = 1 TO 500;
      WBC = INT(RANNOR(1368)*2000 + 5000);
      X = RANUNI(0);
      IF X LT .05 THEN WBC = .;
      ELSE IF X LT .1 THEN WBC = WBC - 3000;
      ELSE IF X LT .15 THEN WBC = WBC + 4000;
      OUTPUT;
   END;
   DROP I X;
RUN;

data prob3_4_a;
   set blood;
   length GROUP$ 15;
   if WBC ^= .  and WBC LT 3000 then GROUP = 'Abnormally Low';
   else if WBC GE 3000 and WBC LE 4000 then GROUP = 'Low';
   else if  WBC GE 4001 and WBC LE 6000 then GROUP = 'Medium';
   else if  WBC GE 6001 and WBC LE 12000 then GROUP = 'High';
   else if  WBC GT 12000 then GROUP = 'Abnormally High';
   else GROUP = 'Not Available';
run;

proc print;
 title 'Problem 3.4';
run;

proc freq;
 tables GROUP/MISSING NOCUM;
run;

proc format;
  value class low-3000   = 'Abnormally Low'
              3000-4000  = 'Low'
              4001-6000  = 'Medium'
              6001-12000 = 'High'
              12000-high = 'Abnormally High'
                       . = 'Not Available'; 

proc freq;
 format WBC class.;
 tables WBC/MISSING NOCUM;
RUN;
