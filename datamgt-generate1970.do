* Aim of file: output 1970 values as distinct data file.

* Generate binary time indicator.
generate time=1

* Create present state income variable. Populate with 1970 value.
generate state_inc_present = state_inc_1970

save "data-1970.dta", replace
