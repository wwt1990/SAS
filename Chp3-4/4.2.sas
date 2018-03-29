data ABC_CORP;
  do SUBJ = 1 to 10;
     DOB = int(RANUNI(1234)*15000);
	 VISIT_DATE = int(RANUNI(0)*1000) + '01JAN2000'D;
	 output;
  end;
  format DOB VISIT_DATE DATE9.;
run;

data AGES;
  set ABC_CORP;
   AGE_ACTUAL = yrdif(DOB,'15JAN2005'D,'actual');
   AGE_TODAY = round(yrdif(DOB,today(),'actual'),.1);
   AGE = int(yrdif(DOB,VISIT_DATE,'actual'));
run;

proc print data=AGES;
 title 'Problem 4.2';
run;