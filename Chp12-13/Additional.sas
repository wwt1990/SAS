proc import
  out = work.GradeRecord
  datafile = "c:\My SAS Homework\GradeRecord.xlsx"
  DBMS = xlsx
  replace;
  getnames = yes;
run;

data Grade;
  set GradeRecord;
  drop HW1 HW2;
  if HW1 < 80 and HW2 < 80 then Grade = "Fail";
  else Grade = "Pass"; 

proc export
  data = Grade
  outfile = "c:\My SAS Homework\Grade.xlsx"
  DBMS = xlsx
  replace;
run;
