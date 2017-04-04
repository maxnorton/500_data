* Select "Black/Negro" only
drop if race!=2

* Age screen: Must turn 19 no later than 1965, must not turn 60 before 1971. Hence in range 18-60 throughout 1965-70 study period.
drop if birthyr<1911 | birthyr>1946

* Birthplace screen: drop if not born in some Southern state.
drop if (bpl!=01 & bpl!=05 & bpl!=12 & bpl!=13 & bpl!=21 & bpl!=22 & bpl!=28 & bpl!=37 & bpl!=40 & bpl!=45 & bpl!=47 & bpl!=48 & bpl!=51)

* Work factors screen: drop if not reporting as in labor force in 1970, if in military or college in 1965.
drop if labforce!=2 | milit5yr==2 | coll5yr==2

* Generate children, var representing number of children. 
* Logic: 	1. children=0. 
*			2. Replace children with (chborn-1) if chborn is not ., 0, or 1 (applies to all women). 
*			3. Replace children with chborn_sp if male, chborn_sp exists, and chborn_sp indicates at least one child.
*			NOTE: Assumes N/A = 0 children. 12 indicates 12 or more children.
generate children = 0
replace children = (chborn-1) if (!missing(chborn) & chborn>1)
replace children = (chborn_sp-1) if (!missing(chborn_sp) & chborn_sp>1)

* Generate gender dummy: male base, 1 = female.
generate dSex = (sex - 1)

* Generate migration treatment and treatment group dummies.
* Logic: MToNorth, MWithinNorth, MWithinSouth, MReturn are migrant groups. MToNorth = MWithinNorth (all long-term migrants) + long-term northern migrants who don't change states + MShortN (migrants who go from South to North in the study period) + MReturn.
*		 MToNorth = 1 if residing in Northern state in either 1965 or 1970. Even if someone returns to the South in the study period, they should still be counted as having selected into migrating North.
* 		 MWithinNorth = 1 if residing in Northern state in 1970 and residing in different state in 1965 and that state is in the North.
*		 MWithinSouth = 1 if residing in different states in 1965 and 1970 and both are in the South.
*		 MReturn = 1 if residing in Northern state in 1965 and residing in Southern state in 1970.
*		 MShortN = 1 if residing in Southern state in 1965 and Northern state in 1970.
generate MToNorth = statefip==002  | statefip==004 | statefip==006 | statefip==008 | statefip==009 | statefip==010 | statefip==011 | statefip==015 | statefip==016 | statefip==017 | statefip==018 | statefip==019 | statefip==020 | statefip==023 | statefip==024 | statefip==025 | statefip==026 | statefip==027 | statefip==029 | statefip==030 | statefip==031 | statefip==032 | statefip==033 | statefip==034 | statefip==035 | statefip==036 | statefip==038 | statefip==039 | statefip==041 | statefip==042 | statefip==044 | statefip==046 | statefip==049 | statefip==050 | statefip==053 | statefip==054 | statefip==055 | statefip==056 | migplac5==002  | migplac5==004 | migplac5==006 | migplac5==008 | migplac5==009 | migplac5==010 | migplac5==011 | migplac5==015 | migplac5==016 | migplac5==017 | migplac5==018 | migplac5==019 | migplac5==020 | migplac5==023 | migplac5==024 | migplac5==025 | migplac5==026 | migplac5==027 | migplac5==029 | migplac5==030 | migplac5==031 | migplac5==032 | migplac5==033 | migplac5==034 | migplac5==035 | migplac5==036 | migplac5==038 | migplac5==039 | migplac5==041 | migplac5==042 | migplac5==044 | migplac5==046 | migplac5==049 | migplac5==050 | migplac5==053 | migplac5==054 | migplac5==055 | migplac5==056
generate MWithinNorth = ( (statefip==002  | statefip==004 | statefip==006 | statefip==008 | statefip==009 | statefip==010 | statefip==011 | statefip==015 | statefip==016 | statefip==017 | statefip==018 | statefip==019 | statefip==020 | statefip==023 | statefip==024 | statefip==025 | statefip==026 | statefip==027 | statefip==029 | statefip==030 | statefip==031 | statefip==032 | statefip==033 | statefip==034 | statefip==035 | statefip==036 | statefip==038 | statefip==039 | statefip==041 | statefip==042 | statefip==044 | statefip==046 | statefip==049 | statefip==050 | statefip==053 | statefip==054 | statefip==055 | statefip==056) & statefip!=migplac5 & (migplac5==002  | migplac5==004 | migplac5==006 | migplac5==008 | migplac5==009 | migplac5==010 | migplac5==011 | migplac5==015 | migplac5==016 | migplac5==017 | migplac5==018 | migplac5==019 | migplac5==020 | migplac5==023 | migplac5==024 | migplac5==025 | migplac5==026 | migplac5==027 | migplac5==029 | migplac5==030 | migplac5==031 | migplac5==032 | migplac5==033 | migplac5==034 | migplac5==035 | migplac5==036 | migplac5==038 | migplac5==039 | migplac5==041 | migplac5==042 | migplac5==044 | migplac5==046 | migplac5==049 | migplac5==050 | migplac5==053 | migplac5==054 | migplac5==055 | migplac5==056))
generate MWithinSouth = statefip!=migplac5 & (statefip==01 | statefip==05 | statefip==12 | statefip==13 | statefip==21 | statefip==22 | statefip==28 | statefip==37 | statefip==40 | statefip==45 | statefip==47 | statefip==48 | statefip==51) & (migplac5==01 | migplac5==05 | migplac5==12 | migplac5==13 | migplac5==21 | migplac5==22 | migplac5==28 | migplac5==37 | migplac5==40 | migplac5==45 | migplac5==47 | migplac5==48 | migplac5==51)
generate MReturn = (migplac5==002  | migplac5==004 | migplac5==006 | migplac5==008 | migplac5==009 | migplac5==010 | migplac5==011 | migplac5==015 | migplac5==016 | migplac5==017 | migplac5==018 | migplac5==019 | migplac5==020 | migplac5==023 | migplac5==024 | migplac5==025 | migplac5==026 | migplac5==027 | migplac5==029 | migplac5==030 | migplac5==031 | migplac5==032 | migplac5==033 | migplac5==034 | migplac5==035 | migplac5==036 | migplac5==038 | migplac5==039 | migplac5==041 | migplac5==042 | migplac5==044 | migplac5==046 | migplac5==049 | migplac5==050 | migplac5==053 | migplac5==054 | migplac5==055 | migplac5==056) & (statefip==01 | statefip==05 | statefip==12 | statefip==13 | statefip==21 | statefip==22 | statefip==28 | statefip==37 | statefip==40 | statefip==45 | statefip==47 | statefip==48 | statefip==51)
generate MShortN = (statefip==002  | statefip==004 | statefip==006 | statefip==008 | statefip==009 | statefip==010 | statefip==011 | statefip==015 | statefip==016 | statefip==017 | statefip==018 | statefip==019 | statefip==020 | statefip==023 | statefip==024 | statefip==025 | statefip==026 | statefip==027 | statefip==029 | statefip==030 | statefip==031 | statefip==032 | statefip==033 | statefip==034 | statefip==035 | statefip==036 | statefip==038 | statefip==039 | statefip==041 | statefip==042 | statefip==044 | statefip==046 | statefip==049 | statefip==050 | statefip==053 | statefip==054 | statefip==055 | statefip==056) & (migplac5==01 | migplac5==05 | migplac5==12 | migplac5==13 | migplac5==21 | migplac5==22 | migplac5==28 | migplac5==37 | migplac5==40 | migplac5==45 | migplac5==47 | migplac5==48 | migplac5==51)

* Join each record to a state_inc_1970 and state_inc_1965 variable (state per-capita income in respective year).
joinby statefip using "inc70bystate.dta"
joinby migplac5 using "migplac_incomes.dta"

* Join generates occscore5yr, erscor505yr, sei5yr, presgl5yr to compare to 1970 values.
label drop occ5yr95_lbl
joinby occ5yr95 using "occ-indices.dta"

* Drop if erscor50 is N/A in either year.
drop if erscor50>=999
drop if erscor505yr>=999

* Generate age-square variable.
generate agesqr=age*age

* Generate person id for linking across periods.
egen id = group(serial pernum)

* Create change in state income variable as empty value.
generate DeltaOriginStateInc=.
generate DeltaIncAcrossStates=.
