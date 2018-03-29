data Diet_Program;
   input SUSJ $1-3 HEIGHT 4-5 WT_INIT 6-8 WT_FINAL 9-11;
BMI_INIT = (WT_INIT/2.2)/( 0.0254*HEIGHT)**2;
BMI_FINAL = (WT_FINAL /2.2)/( 0.0254*HEIGHT)**2;
BMI_DIFF = BMI_FINAL - BMI_INIT;

datalines;
00768155150
00272250240
00563240200
00170345298
;

proc sort;
   by SUSJ;
run;

proc print;
   id SUSJ;
   var HEIGHT BMI_INIT BMI_FINAL BMI_DIFF;
run;