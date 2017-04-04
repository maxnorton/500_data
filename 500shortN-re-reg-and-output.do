* MIGRANTS TO NORTH
	* ==MALE
		xtreg erscor50 MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==0, re
		est store er_n_m

		xtreg occscore_real MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==0, re
		est store occ_n_m
		
		xtreg presgl MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==0, re
		est store sgl_n_m

		xtreg sei MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==0, re
		est store sei_n_m

	* ==FEMALE
		xtreg erscor50 MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==1, re
		est store er_n_f

		xtreg occscore_real MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==1, re
		est store occ_n_f

		xtreg presgl MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==1, re
		est store sgl_n_f

		xtreg sei MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1 & dSex==1, re
		est store sei_n_f

	* ==BOTH GENDERS
		xtreg erscor50 MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1, re
		est store er_n_all

		xtreg occscore_real MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1, re
		est store occ_n_all

		xtreg presgl MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1, re
		est store sgl_n_all

		xtreg sei MShortN MReturn MWithinNorth WMAA WMN MW_WMAA MW_WMN MR_WMAA MR_WMN MSN_WMAA MSN_WMN tMWithinNorth tMReturn tWMAA tWMN tMW_tWMAA tMW_tWMN tMR_tWMAA tMR_tWMN tMSN_tWMAA tMSN_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==1, re
		est store sei_n_all

		
* REMAINING SOUTHERNERS
	* ==MALE
		xtreg erscor50 MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==0, re
		est store er_s_m

		xtreg occscore_real MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==0, re
		est store occ_s_m
		
		xtreg presgl MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==0, re
		est store sgl_s_m

		xtreg sei MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==0, re
		est store sei_s_m

	* ==FEMALE
		xtreg erscor50 MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==1, re
		est store er_s_f

		xtreg occscore_real MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==1, re
		est store occ_s_f

		xtreg presgl MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==1, re
		est store sgl_s_f

		xtreg sei MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0 & dSex==1, re
		est store sei_s_f

	* ==BOTH GENDERS
		xtreg erscor50 MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0, re
		est store er_s_all

		xtreg occscore_real MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0, re
		est store occ_s_all

		xtreg presgl MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0, re
		est store sgl_s_all

		xtreg sei MWithinSouth WMAA WMN MW_WMAA MW_WMN tMWithinSouth tWMAA tWMN tMW_tWMAA tMW_tWMN time age agesqr education children state_inc_present deltaStateInc if MToNorth==0, re
		est store sei_s_all
		
outreg2 [er_n_all occ_n_all sgl_n_all sei_n_all] using output-n-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_m occ_n_m sgl_n_m sei_n_m] using output-n-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_n_f occ_n_f sgl_n_f sei_n_f] using output-n-f, replace alpha(.02, .10, .20)  nonotes

outreg2 [er_s_all occ_s_all sgl_s_all sei_s_all] using output-n-all, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_s_m occ_s_m sgl_s_m sei_s_m] using output-n-m, replace alpha(.02, .10, .20)  nonotes
outreg2 [er_s_f occ_s_f sgl_s_f sei_s_f] using output-n-f, replace alpha(.02, .10, .20)  nonotes
