/* Model: 	regress y A*t A X 
			regress y tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==? & (MToNorth==0 | MShortN==1), r */


regress erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==1 & (MToNorth==0 | MShortN==1), r
est store er_f

regress occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==1 & (MToNorth==0 | MShortN==1), r
est store occ_f

regress presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==1 & (MToNorth==0 | MShortN==1), r
est store sgl_f

regress sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==1 & (MToNorth==0 | MShortN==1), r
est store sei_f


regress erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==0 & (MToNorth==0 | MShortN==1), r
est store er_m

regress occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==0 & (MToNorth==0 | MShortN==1), r
est store occ_m

regress presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==0 & (MToNorth==0 | MShortN==1), r
est store sgl_m

regress sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children state_inc_present DeltaOriginStateInc DeltaIncAcrossStates if dSex==0 & (MToNorth==0 | MShortN==1), r
est store sei_m


outreg2 [er_m occ_m sgl_m sei_m] using stage1-output-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_f occ_f sgl_f sei_f] using stage2-output-f, replace alpha(.02, .10, .20)  nonotes
