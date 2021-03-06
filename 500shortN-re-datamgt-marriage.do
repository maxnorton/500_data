* Set up marriage vars. See marriage-vars-map.xlsx for logic.
gen WMAA = 0
gen WMN = 0
gen WMS = 0
gen tWMAA = 0
gen tWMN = 0
gen tWMS = 0

replace WMAA = ( agemarr != 0 )
replace tWMAA = agemarr != 0 & agemarr<=age

replace WMN = (bpl_sp==002  | bpl_sp==004 | bpl_sp==006 | bpl_sp==008 | bpl_sp==009 | bpl_sp==010 | bpl_sp==011 | bpl_sp==015 | bpl_sp==016 | bpl_sp==017 | bpl_sp==018 | bpl_sp==019 | bpl_sp==020 | bpl_sp==023 | bpl_sp==024 | bpl_sp==025 | bpl_sp==026 | bpl_sp==027 | bpl_sp==029 | bpl_sp==030 | bpl_sp==031 | bpl_sp==032 | bpl_sp==033 | bpl_sp==034 | bpl_sp==035 | bpl_sp==036 | bpl_sp==038 | bpl_sp==039 | bpl_sp==041 | bpl_sp==042 | bpl_sp==044 | bpl_sp==046 | bpl_sp==049 | bpl_sp==050 | bpl_sp==053 | bpl_sp==054 | bpl_sp==055 | bpl_sp==056)
replace tWMN = (bpl_sp==002  | bpl_sp==004 | bpl_sp==006 | bpl_sp==008 | bpl_sp==009 | bpl_sp==010 | bpl_sp==011 | bpl_sp==015 | bpl_sp==016 | bpl_sp==017 | bpl_sp==018 | bpl_sp==019 | bpl_sp==020 | bpl_sp==023 | bpl_sp==024 | bpl_sp==025 | bpl_sp==026 | bpl_sp==027 | bpl_sp==029 | bpl_sp==030 | bpl_sp==031 | bpl_sp==032 | bpl_sp==033 | bpl_sp==034 | bpl_sp==035 | bpl_sp==036 | bpl_sp==038 | bpl_sp==039 | bpl_sp==041 | bpl_sp==042 | bpl_sp==044 | bpl_sp==046 | bpl_sp==049 | bpl_sp==050 | bpl_sp==053 | bpl_sp==054 | bpl_sp==055 | bpl_sp==056) & agemarr<=age

replace WMS = (bpl_sp==01 | bpl_sp==05 | bpl_sp==12 | bpl_sp==13 | bpl_sp==21 | bpl_sp==22 | bpl_sp==28 | bpl_sp==37 | bpl_sp==40 | bpl_sp==45 | bpl_sp==47 | bpl_sp==48 | bpl_sp==51)
replace tWMS = (bpl_sp==01 | bpl_sp==05 | bpl_sp==12 | bpl_sp==13 | bpl_sp==21 | bpl_sp==22 | bpl_sp==28 | bpl_sp==37 | bpl_sp==40 | bpl_sp==45 | bpl_sp==47 | bpl_sp==48 | bpl_sp==51) & agemarr<=age

*Save data
save "data-2periods-marriage.dta", replace
