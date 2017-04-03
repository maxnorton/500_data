*TO-DO: check justification for use of robust standard errors
*TO-DO: check that lincom is working correctly

regress erscor50  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc, r
est store er_all
lincom tWillMarryN-tWillMarryS

regress occscore_real  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc, r
est store occ_all
lincom tWillMarryN-tWillMarryS

regress presgl  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc, r
est store sgl_all
lincom tWillMarryN-tWillMarryS

regress sei  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc, r
est store sei_all
lincom tWillMarryN-tWillMarryS


regress erscor50  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==0, r
est store er_m
lincom tWillMarryN-tWillMarryS

regress occscore_real  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==0, r
est store occ_m
lincom tWillMarryN-tWillMarryS

regress presgl  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==0, r
est store sgl_m
lincom tWillMarryN-tWillMarryS

regress sei  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==0, r
est store sei_m
lincom tWillMarryN-tWillMarryS


regress erscor50  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==1, r
est store er_f
lincom tWillMarryN-tWillMarryS

regress occscore_real  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==1, r
est store occ_f
lincom tWillMarryN-tWillMarryS

regress presgl  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==1, r
est store sgl_f
lincom tWillMarryN-tWillMarryS

regress sei  tMToNorth tMWithinSouth MToNorth MWithinSouth tWillMarryN tWillMarryS willMarryN willMarryS time age agesqr dSex education children state_inc_1965 deltaStateInc if dSex==1, r
est store sei_f
lincom tWillMarryN-tWillMarryS

outreg2 [er_all occ_all sgl_all sei_all] using output-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_m occ_m sgl_m sei_m] using output-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_f occ_f sgl_f sei_f] using output-f, replace alpha(.02, .10, .20)  nonotes
