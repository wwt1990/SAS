proc reg data = SCORES;
  title 'Problem 5.6.a';
  model SCIENCE = MATH;
  plot (SCIENCE residual.) * MATH;
quit;



proc reg data = SCORES;
  title 'Problem 5.6.b';
  model SCIENCE = MATH / alpha = 0.1;
  plot SCIENCE * MATH / conf;
quit;
