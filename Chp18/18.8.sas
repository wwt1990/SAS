DATA ONE;
INPUT @1 ID $11.
@12 NAME $15.;
DATALINES;
123-45-6789Jeff Smith
111-22-3333Stephen King
999-88-7777Jan Chambliss
;

DATA TWO;
INPUT @1 ID 9.
@11 SCORE 3.;
DATALINES;
999887777 100
123456789 65
111223333 59
;

data newone;
 set one(rename=(id=ch_id));
 id = input(compress(ch_id, "-"), 9.);
 drop ch_id;

proc sort data= newone;
 by id;
run;

proc sort data= two;
 by id;
run;

data both;
 merge newone two;
 by id;
run;

proc print;
 id id;
run; 