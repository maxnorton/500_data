* Aim of file: rewrite primary regression vars to 1965 values and output to new data file.

* Set time period to 0.
replace time=0

* Since logic in datamgt drops people who'd already migrated pre-65, assume no one has migrated yet and set 65 value treatment value to 0.
* TO-DO [working]: Update logic to permit investigation of long-term migration.
replace tMToNorth=0 if (migplac5==01 | migplac5==05 | migplac5==12 | migplac5==13 | migplac5==21 | migplac5==22 | migplac5==28 | migplac5==37 | migplac5==40 | migplac5==45 | migplac5==47 | migplac5==48 | migplac5==51)
replace tMWithinSouth=0 if migplac5!=bpl

* Set state of residence to state of residence 5 years ago.
replace statefip=migplac5

* Set present state income to 1965 value.
replace state_inc_present=state_inc_1965

* Subtract five years from everyone's age and rewrite the agesqr variable.
replace age=age-5
replace agesqr=age*age

* If new age is less than the age at which the person was married, then rewrite their marriage dummy to 0.
* TO-DO [scheduled later]: 1. Check logic, refactor with newer logic in rev-marr-vars. 
*		 2. Update logic to accommodate long, short-term gains to marriage.
replace marriedNortherner=0 if (age<agemarr)
replace marriedSoutherner=0 if (age<agemarr) 

* If person is not married yet, assume they have no children, even if they have children later.
replace children=0 if (age<agemarr)

* Set dependent index values to those from 1965.
replace occscore=occscore5yr
replace sei=sei5yr
replace presgl=presgl5yr
replace erscor50=erscor505yr

save "data-1965.dta", replace
