/* Model: 	xtreg y A*t A X 
			xtreg y tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==? & (MToNorth==0 | MShortN==1), re */


xtreg erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store er_f

xtreg occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store occ_f

xtreg presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store sgl_f

xtreg sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store sei_f


xtreg erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store er_m

xtreg occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store occ_m

xtreg presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store sgl_m

xtreg sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr education children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store sei_m


outreg2 [er_m occ_m sgl_m sei_m] using stage1-output-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_f occ_f sgl_f sei_f] using stage2-output-f, replace alpha(.02, .10, .20)  nonotes

xtreg erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store er_f_noed

xtreg occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store occ_f_noed

xtreg presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store sgl_f_noed

xtreg sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==1 & (MToNorth==0 | MShortN==1), re
est store sei_f_noed


xtreg erscor50 tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store er_m_noed

xtreg occscore_real tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store occ_m_noed

xtreg presgl tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store sgl_m_noed

xtreg sei tMToNorth tMWithinSouth MToNorth MWithinSouth tWMAA WMAA time age agesqr children if dSex==0 & (MToNorth==0 | MShortN==1), re
est store sei_m_noed


outreg2 [er_m_noed occ_m_noed sgl_m_noed sei_m_noed] using stage1-output-m_noed, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_f_noed occ_f_noed sgl_f_noed sei_f_noed] using stage2-output-f_noed, replace alpha(.02, .10, .20)  nonotes
