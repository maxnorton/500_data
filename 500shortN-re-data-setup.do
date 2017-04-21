* Begin data setup.
include "usa_00004.do"	// Import data with IPUMS-generate do file.
include "500shortN-re-datamgt.do"	// Set up data according to script.
include "500shortN-re-datamgt-generate1970.do" 	// Output data file with all 1970 observations.
include "500shortN-re-datamgt-generate1965.do"	// Output data file with all 1965 observations.
include "500shortN-re-datamgt-merge.do"			// Merge into 2-period data file, create state delta var.
include "500shortN-re-datamgt-marriage.do"		// Generate marriage vars, following Improvement 1 plan in spreadsheet.
include "500shortN-re-datamgt-incomes.do"		// Perform cleanup on income indices.
include "500marrbyregion-datamgt-education.do"		// Set up education variable.
include "500shortN-re-datamgt-treatments-interactions.do"	// Set up treatment and interaction terms.
xtset id time
save "data-500shortN-re-published.dta", replace

* End of data setup.
