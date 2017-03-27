generate MWithinMarrAAInt = 0
generate MWithinMarrNInt = 0
generate tMWithinMarrAAInt = 0
generate tMWithinMarrNInt = 0
replace MWithinMarrAAInt = MWithinNorth*willMarryAtAll if MToNorth==1
replace MWithinMarrAAInt = MWithinSouth*willMarryAtAll if MToNorth==0
replace MWithinMarrNInt = MWithinNorth*willMarryN if MToNorth==1
replace MWithinMarrNInt = MWithinSouth*willMarryN if MToNorth==0
replace tMWithinMarrAAInt = tMWithinNorth*tWMAA1 if MToNorth==1
replace tMWithinMarrAAInt = tMWithinSouth*tWMAA1 if MToNorth==0
replace tMWithinMarrNInt = tMWithinNorth*tWMN1 if MToNorth==1
replace tMWithinMarrNInt = tMWithinSouth*tWMN1 if MToNorth==0
