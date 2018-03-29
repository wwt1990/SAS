data LOG_DOSE;
  set DOSE_RESPONSE;
  log_dose = log(DOSE);

proc reg data=LOG_DOSE;
  title'Problem 5.10';
  model SBP = log_dose;
  plot (SBP residual.) * log_dose;
  model DBP = log_dose;
  plot (DBP residual.) * log_dose;
quit;