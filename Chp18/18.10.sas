data WT;
 input subj weight $ @@;
 weight=upcase(weight);
 num_weight=input(compress(weight, "KGLBS."), 8.);
 if index(weight, "K") > 0 then num_weight = num_weight * 2.2;
 keep subj num_weight;

datalines;
1 50kg 2 120 3 121Lbs. 4 88KG. 5 200
6 80kG 7 250lb
;

proc print;
run;
