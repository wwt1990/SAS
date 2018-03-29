DATA CLINICAL;
   *Use LENGTH statement to control the order of
    variables in the data set;
   LENGTH PATIENT VISIT DATE_VISIT 8;
   RETAIN DATE_VISIT WEIGHT;
   DO PATIENT = 1 TO 25;
      IF RANUNI(135) LT .5 THEN GENDER = 'Female';
      ELSE GENDER = 'Male';
      X = RANUNI(135);
      IF X LT .33 THEN GROUP = 'A';
      ELSE IF X LT .66 THEN GROUP = 'B';
      ELSE GROUP = 'C';
      DO VISIT = 1 TO INT(RANUNI(135)*5);
         IF VISIT = 1 THEN DO;
             DATE_VISIT = INT(RANUNI(135)*100) + 15800;
             WEIGHT = INT(RANNOR(135)*10 + 150);
         END;
         ELSE DO;
            DATE_VISIT = DATE_VISIT + VISIT*(10 + INT(RANUNI(135)*50));
            WEIGHT = WEIGHT + INT(RANNOR(135)*10);
         END;
         OUTPUT;
         IF RANUNI(135) LT .2 THEN LEAVE;
      END;
   END;
   DROP X;
   FORMAT DATE_VISIT DATE9.;
RUN;

proc means data = CLINICAL noprint;
  class patient;
  var weight;
  output out = SUMMARY_PROB4_8
  mean = 
  median = 
  min = 
  max = / autoname;
run;
     
proc print data = SUMMARY_PROB4_8;
  title 'Problem 4.8 - Individual Information';
run;