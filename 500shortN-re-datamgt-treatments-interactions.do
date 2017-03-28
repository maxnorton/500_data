* Set up migration treatment groups. (Marriage treatment groups are in marriage do file.)
* Logic:
*	tMToNorth = 1 if current state is Northern.
*	tMWithinNorth = 1 if residing in N in 1970 and residing in different state in 1965 and that state is in the North and time of observation is 1970
*	tMWithinSouth = 1 if residing in different state in 1965 and 1970 and both are in the South and time of observation is 1970
*	tMReturn = 1 if residing in Northern state in 1965 and Southern state in 1970 and time of observation is 1970
*	tMShortN = 1 if residing in Southern state in 1965 and Northern state in 1970 and time of observation is 1970
* Treatment dummies blank set to match treatment group dummies, adjusted in treatments-interactions do file.
generate tMToNorth=0
generate tMWithinNorth=0
generate tMWithinSouth=0
generate tMReturn=0
generate tMShortN=0

replace tMToNorth = (statefip==002  | statefip==004 | statefip==006 | statefip==008 | statefip==009 | statefip==010 | statefip==011 | statefip==015 | statefip==016 | statefip==017 | statefip==018 | statefip==019 | statefip==020 | statefip==023 | statefip==024 | statefip==025 | statefip==026 | statefip==027 | statefip==029 | statefip==030 | statefip==031 | statefip==032 | statefip==033 | statefip==034 | statefip==035 | statefip==036 | statefip==038 | statefip==039 | statefip==041 | statefip==042 | statefip==044 | statefip==046 | statefip==049 | statefip==050 | statefip==053 | statefip==054 | statefip==055 | statefip==056)
replace tMWithinNorth = (MWithinNorth==1 & time==1)
replace tMWithinSouth = (MWithinSouth==1 & time==1)
replace tMReturn= (MReturn==1 & time==1)
replace tMShortN = (MShortN==1 & time==1)

generate MW_WMAA = 0
generate MW_WMN = 0
generate MR_WMAA = 0
generate MR_WMN = 0
generate MSN_WMAA = 0
generate MSN_WMN = 0

generate tMW_tWMAA = 0
generate tMW_tWMN = 0
generate tMR_tWMAA = 0
generate tMR_tWMN = 0
generate tMSN_tWMAA = 0
generate tMSN_tWMN = 0

replace MW_WMAA = MWithinNorth*WMAA if MToNorth==1
replace MW_WMAA = MWithinSouth*WMAA if MToNorth==0
replace MW_WMN = MWithinNorth*WMN if MToNorth==1
replace MW_WMN = MWithinSouth*WMN if MToNorth==0
replace tMW_tWMAA = tMWithinNorth*tWMAA if MToNorth==1
replace tMW_tWMAA = tMWithinSouth*tWMAA if MToNorth==0
replace tMW_tWMN = tMWithinNorth*tWMN if MToNorth==1
replace tMW_tWMN = tMWithinSouth*tWMN if MToNorth==0

replace MR_WMAA = MReturn*WMAA
replace MR_WMN = MReturn*WMN
replace tMR_tWMAA = tMReturn*tWMAA
replace tMR_tWMN = tMReturn*tWMN

replace MSN_WMAA = MShortN*WMAA
replace MSN_WMN = MShortN*WMN
replace tMSN_tWMAA = tMShortN*tWMAA
replace tMSN_tWMN = tMShortN*tWMN
