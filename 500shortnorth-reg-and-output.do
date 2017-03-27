*TO-DO: check justification for use of robust standard errors


/* As specified below, Stata will automatically omit longtermN, LTN_wMAA_i, LTN_MWN_wMN_i.
	To eliminate this problem, I drop LTN_MWN_i, LTN_MWN_wMAA_i, LTN_MWN_wMN_i from the regression.
	Ramsey RESET suggests I can also drop LTN_tMWN_i for some regressions, but not all, so I don't. I also retain LTN_tMWN_tWMAA_i and LTN_tWMN_tWMN_i.

* MIGRANTS TO NORTH
	* ==MALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store er_n_m

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store occ_n_m

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store sgl_n_m

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		est store sei_n_m

	* ==FEMALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store er_n_f

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store occ_n_f

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store sgl_n_f

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		est store sei_n_f

	* ==BOTH GENDERS
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store er_n_all

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store occ_n_all

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store sgl_n_all

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt longtermN LTN_MWN_i LTN_wMAA_i LTN_wMN_i LTN_MWN_wMAA_i LTN_MWN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt LTN_tMWN_i LTN_tWMAA_i LTN_tWMN_i LTN_tMWN_tWMAA_i LTN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		est store sei_n_all
*/

* MIGRANTS TO NORTH
	* ==MALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		ovtest
		est store er_n_m

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		ovtest
		est store occ_n_m
		
		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		ovtest
		est store sgl_n_m

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==0, r
		ovtest
		est store sei_n_m

	* ==FEMALE
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		ovtest
		est store er_n_f

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		ovtest
		est store occ_n_f

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		ovtest
		est store sgl_n_f

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1 & dSex==1, r
		ovtest
		est store sei_n_f

	* ==BOTH GENDERS
		regress erscor50 MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		ovtest
		est store er_n_all

		regress occscore_real MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		ovtest
		est store occ_n_all

		regress presgl MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		ovtest
		est store sgl_n_all

		regress sei MWithinNorth willMarryAtAll willMarryN MWithinMarrAAInt MWithinMarrNInt shortN STN_wMAA_i STN_wMN_i tMWithinNorth tWMAA1 tWMN1 tMWithinMarrAAInt tMWithinMarrNInt STN_tMWN_i STN_tWMAA_i STN_tWMN_i STN_tMWN_tWMAA_i STN_tMWN_tWMN_i time age agesqr education children state_inc_1965 deltaStateInc if MToNorth==1, r
		ovtest
		est store sei_n_all

/*outreg2 [er_n_all occ_n_all sgl_n_all sei_n_all] using output-n-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_m occ_n_m sgl_n_m sei_n_m] using output-n-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_f occ_n_f sgl_n_f sei_n_f] using output-n-f, replace alpha(.02, .10, .20)  nonotes
*/
