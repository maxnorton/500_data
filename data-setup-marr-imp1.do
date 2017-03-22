include "usa_00004.do"	// Import data with IPUMS-generate do file.
include "datamgt-imp1.do"	// Set up data according to script, don't drop those outside South in 65 this time.
include "datamgt-generate1970.do" 	// Output data file with all 1970 observations.
include "datamgt-generate1965-imp1.do"	// Output data file with all 1965 observations.
include "datamgt-merge.do"			// Merge into 2-period data file, create state delta var.
include "datamgt-marriage-imp1.do"		// Generate marriage vars, following Improvement 1 plan in spreadsheet.
include "datamgt-incomes.do"		// Perform cleanup on income indices.
include "datamgt-education.do"		// Set up education variable.
* TO-DO: Review and improve logic of marriage vars.

