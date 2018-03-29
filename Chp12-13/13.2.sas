data _NULL_;
  infile 'c:\My SAS Homework\input.dat' dlm=',' missover;
  input x y z;
  if x = 9999 then x = . ;
  if y = 9999 then y = . ;
  if z = 9999 then z = . ;
  file "c:\My SAS Homework\output.dat" dlm= ',';
  put x y z;
run;
