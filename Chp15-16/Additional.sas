data birth;
 array birth_number[12] _temporary_;
 array birth_proportion[12];
 ***Put your SAS statements here;
 
 do i = 1 to 12;
  input birth_number[i]@;
  sum + birth_number[i];
 end;

 do i = 1 to 12;
  birth_proportion[i] = birth_number[i] / sum;
 end;

drop i sum;
 
datalines;
356 338 350 346 355 349 376 373 369 359 325 351
;

proc print data=birth;
 title'Addtional Problem';
 var  birth_proportion1 - birth_proportion12;
 format birth_proportion1 - birth_proportion12 percent10.2;
run;