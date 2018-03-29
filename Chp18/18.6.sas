DATA GOOD_BAD;
INPUT STRING $40.;
DATALINES;
1324AcB876acccCCC
123 456
aabbccAABBCC123123
abcde12345
invalid
;

data valid invalid;
 set good_bad;
 if verify(trim(string), "ABCabc0123456789") = 0 then output valid;
 else output invalid;
run;

proc print data=valid;
run;

proc print data=invalid;
run;