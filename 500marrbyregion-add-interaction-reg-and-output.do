*TO-DO: check justification for use of robust standard errors
*TO-DO: check that lincom is working correctly
*TO-DO: revise specification for subregional consideration in "North"

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

* MIGRANTS TO NORTH
	* ==MALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN tMWithinMarrAAInt tMWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store er_n_m

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store occ_n_m

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store sgl_n_m

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store sei_n_m

	* ==FEMALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store er_n_f

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store occ_n_f

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store sgl_n_f

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store sei_n_f

	* ==BOTH GENDERS
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store er_n_all

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store occ_n_all

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store sgl_n_all

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store sei_n_all


* REMAINING IN SOUTH
	* ==MALE
		regress erscor50 MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==0, r
		est store er_s_m

		regress occscore_real MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==0, r
		est store occ_s_m

		regress presgl MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==0, r
		est store sgl_s_m

		regress sei MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==0, r
		est store sei_s_m

	* ==FEMALE
		regress erscor50 MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==1, r
		est store er_s_f

		regress occscore_real MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==1, r
		est store occ_s_f

		regress presgl MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==1, r
		est store sgl_s_f

		regress sei MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0 & dSex==1, r
		est store sei_s_f

	* ==BOTH GENDERS
		regress erscor50 MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0, r
		est store er_s_all

		regress occscore_real MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0, r
		est store occ_s_all

		regress presgl MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0, r
		est store sgl_s_all

		regress sei MWithinSouth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt tMWithinSouth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==0, r
		est store sei_s_all

outreg2 [er_n_all occ_n_all sgl_n_all sei_n_all] using output-n-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_m occ_n_m sgl_n_m sei_n_m] using output-n-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_f occ_n_f sgl_n_f sei_n_f] using output-n-f, replace alpha(.02, .10, .20)  nonotes

outreg2 [er_s_all occ_s_all sgl_s_all sei_s_all] using output-s-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_s_m occ_s_m sgl_s_m sei_s_m] using output-s-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_s_f occ_s_f sgl_s_f sei_s_f] using output-s-f, replace alpha(.02, .10, .20)  nonotes
