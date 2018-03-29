DATA DOSE_RESPONSE;
   INPUT DOSE  SBP DBP;

DATALINES;
4  180 110
4  190 108
4  178 100
8  170 100
8  180  98
8  168  88
16 160  80
16 172  86
16 170  86
32 140  80
32 130  72
32 128  70
;

proc reg;
  title'Problem 5.8';
  model SBP = DOSE;
  plot (SBP residual.) * DOSE;
  model DBP = DOSE;
  plot (DBP residual.) * DOSE;
quit;
