include "usa_00004.do"	// Import data with IPUMS-generate do file.
include "datamgt.do"	// Set up data according to script.
include "datamgt-generate1970.do" 	// Output data file with all 1970 observations.
include "datamgt-generate1965.do"	// Output data file with all 1965 observations.
include "datamgt-merge.do"			// Merge into 2-period data file, create state delta var.
include "datamgt-marriage.do"		// Generate marriage vars.
include "datamgt-incomes.do"		// Perform cleanup on income indices.
* TO-DO: Review and improve logic of marriage vars.

