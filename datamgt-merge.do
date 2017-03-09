* Append 1970 data to 1965 data
append using "data-1970.dta"

* Create change in state income variable.
generate deltaStateInc=(state_inc_present-state_inc_1965)/state_inc_65

* Save data as merged file
save "data-2periods.dta"
