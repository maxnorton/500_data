include "usa_00004.do"	// Import data with IPUMS-generate do file.
include "500marrbyregion-datamgt.do"	// Set up data according to script, don't drop those outside South in 65 this time.
include "datamgt-generate1970.do" 	// Output data file with all 1970 observations.
include "500marrbyregion-datamgt-generate1965.do"	// Output data file with all 1965 observations.
include "datamgt-merge.do"			// Merge into 2-period data file, create state delta var.
include "500marrbyregion-datamgt-marriage.do"		// Generate marriage vars, following Improvement 1 plan in spreadsheet.
include "datamgt-incomes.do"		// Perform cleanup on income indices.
include "500marrbyregion-datamgt-education.do"		// Set up education variable.