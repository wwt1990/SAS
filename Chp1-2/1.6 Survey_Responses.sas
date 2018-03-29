data Survey_Responses;
   input QUES1 $1 QUES2 $2 QUES3 $3 QUES4 $4  QUES5 $5;

datalines;
ABCDE
AACCE
BBBBB
CABDA
DDAAC
CABBB
EEBBB
ACACA
;

proc freq;
   tables  QUES1 - QUES5 / nocum;
run;
