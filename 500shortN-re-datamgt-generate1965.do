* Aim of file: rewrite primary regression vars to 1965 values and output to new data file.

* Set time period to 0.
replace time=0

* Set state of residence to state of residence 5 years ago.
replace statefip=migplac5

* Set present state income to 1965 value.
replace state_inc_present=state_inc_1965

* Subtract five years from everyone's age and rewrite the agesqr variable.
replace age=age-5
replace agesqr=age*age

* If person is not married yet, assume they have no children, even if they have children later.
replace children=0 if (age<agemarr)

* Set dependent index values to those from 1965.
replace occscore=occscore5yr
replace sei=sei5yr
replace presgl=presgl5yr
replace erscor50=erscor505yr

save "data-1965.dta", replace
