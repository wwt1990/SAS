DATA ADDRESS;
INPUT #1 @1 LINE1 $50.
#2 @1 LINE2 $50.
#3 @1 LINE3 $50.;
DATALINES;
Mr. Jason Simmons
123 Sesame Street
Madison, WI
Dr. Justin Case
78 River Road
Flemington, NJ
Ms. Marilyn Crow
777 Jewell Place
San Jose, CA
;

data change;
 set address;
 line1=compbl(line1);
 line1=tranwrd(line1, "Mr.", "");
 line1=tranwrd(line1, "Dr.", "");
 line1=tranwrd(line1, "Mrs.", "");
 line1=tranwrd(line1, "Ms.", "");
 line1=left(line1);

 line2=compbl(line2);
 line2=tranwrd(line2, "Street", "St.");
 line2=tranwrd(line2, "Road", "Rd.");
 line2=tranwrd(line2, "Place", "Pl.");
 line2=left(line2);

 line3=compbl(line3);
 line3=left(line3);


proc print;
run;




