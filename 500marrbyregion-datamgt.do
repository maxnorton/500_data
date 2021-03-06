* Select "Black/Negro" only
drop if race!=2

* Age screen: Must turn 19 no later than 1965, must not turn 60 before 1971. Hence in range 18-60 throughout 1965-70 study period.
drop if birthyr<1911 | birthyr>1946

* Birthplace screen: drop if born anywhere other than Southern states.
drop if bpl==002  | bpl==004 | bpl==006 | bpl==008 | bpl==009 | bpl==010 | bpl==011 | bpl==015 | bpl==016 | bpl==017 | bpl==018 | bpl==019 | bpl==020 | bpl==023 | bpl==024 | bpl==025 | bpl==026 | bpl==027 | bpl==029 | bpl==030 | bpl==031 | bpl==032 | bpl==033 | bpl==034 | bpl==035 | bpl==036 | bpl==038 | bpl==039 | bpl==041 | bpl==042 | bpl==044 | bpl==046 | bpl==049 | bpl==050 | bpl==053 | bpl==054 | bpl==055 | bpl==056

* Work factors screen: drop if not reporting as in labor force in 1970, or if in military or college in 1965.
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
* Logic: MToNorth and MWithinSouth are migrant groups.
*		 MToNorth = 1 if residing in Northern state in 1970.
*		 MWithinSouth = 1 if residing in Southern state in 1970 that is different from Southern state of residence in 1965.
* 		 TO-DO [scheduled later]: Revise logic of MWithinSouth and MToNorth so that it doesn't assume 1965 Southern residence, since I will be looking at longer-term migrants.
generate MToNorth = (statefip==002  | statefip==004 | statefip==006 | statefip==008 | statefip==009 | statefip==010 | statefip==011 | statefip==015 | statefip==016 | statefip==017 | statefip==018 | statefip==019 | statefip==020 | statefip==023 | statefip==024 | statefip==025 | statefip==026 | statefip==027 | statefip==029 | statefip==030 | statefip==031 | statefip==032 | statefip==033 | statefip==034 | statefip==035 | statefip==036 | statefip==038 | statefip==039 | statefip==041 | statefip==042 | statefip==044 | statefip==046 | statefip==049 | statefip==050 | statefip==053 | statefip==054 | statefip==055 | statefip==056)
generate MWithinNorth = (MToNorth==1 & (migplac5==002  | migplac5==004 | migplac5==006 | migplac5==008 | migplac5==009 | migplac5==010 | migplac5==011 | migplac5==015 | migplac5==016 | migplac5==017 | migplac5==018 | migplac5==019 | migplac5==020 | migplac5==023 | migplac5==024 | migplac5==025 | migplac5==026 | migplac5==027 | migplac5==029 | migplac5==030 | migplac5==031 | migplac5==032 | migplac5==033 | migplac5==034 | migplac5==035 | migplac5==036 | migplac5==038 | migplac5==039 | migplac5==041 | migplac5==042 | migplac5==044 | migplac5==046 | migplac5==049 | migplac5==050 | migplac5==053 | migplac5==054 | migplac5==055 | migplac5==056))
generate MWithinSouth = (MToNorth!=1 & statefip!=migplac5)
* Treatment dummies currently set to match treatment group dummies.
* TO-DO [scheduled later]: Check logic where they are updated to reflect treatment status, consolidate in a single place.
generate tMToNorth=MToNorth
generate tMWithinNorth=MWithinNorth
generate tMWithinSouth=MWithinSouth

* Join each record to a state_inc_1970 and state_inc_1965 variable (state per-capita income in respective year).
joinby statefip using "inc70bystate.dta"
joinby migplac5 using "inc65bystate.dta"

* Join generates occscore5yr, erscor505yr, sei5yr, presgl5yr to compare to 1970 values.
label drop occ5yr95_lbl
joinby occ5yr95 using "occ-indices.dta"

* Generate age-square variable.
generate agesqr=age*age
