DATA STRING;
INPUT STRING $10.;
DATALINES;
123nj76543
892NY10203
876pA83745
;

data creat;
 set string;
 length state $2;
 x=input(substr(string, 1, 2), 2.);
 y=input(substr(string, 3, 1), 1.);
 state= upcase(substr(string, 4, 2));
 array N[5];
  do i = 1 to 5;
   N[i]=input(substr(string, 5+i, 1), 1.);
  *output;
 end; 
 drop i;

proc print;
run;