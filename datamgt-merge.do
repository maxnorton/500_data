* Append 1970 data to 1965 data
append using "data-1970.dta"

* Save data as merged file
save "data-2periods.dta", replace
