* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                   ///
  int     year         1-4      ///
  byte    datanum      5-6      ///
  double  serial       7-14     ///
  float   hhwt         15-24    ///
  byte    statefip     25-26    ///
  byte    metro        27-27    ///
  byte    gq           28-28    ///
  int     pernum       29-32    ///
  float   perwt        33-42    ///
  byte    sploc        43-44    ///
  byte    sex          45-45    ///
  int     age          46-48    ///
  byte    marst        49-49    ///
  int     birthyr      50-53    ///
  byte    marrno       54-54    ///
  byte    agemarr      55-56    ///
  byte    chborn       57-58    ///
  byte    race         59-59    ///
  int     raced        60-62    ///
  int     bpl          63-65    ///
  long    bpld         66-70    ///
  byte    higrade      71-72    ///
  int     higraded     73-75    ///
  byte    empstat      76-76    ///
  byte    empstatd     77-78    ///
  byte    labforce     79-79    ///
  int     occ1950      80-82    ///
  long    inctot       83-89    ///
  long    incwage      90-95    ///
  byte    occscore     96-97    ///
  byte    sei          98-99    ///
  float   presgl       100-102  ///
  float   erscor50     103-106  ///
  int     migplac5     107-109  ///
  byte    work5yr      110-110  ///
  byte    milit5yr     111-111  ///
  byte    coll5yr      112-112  ///
  int     occ5yr95     113-115  ///
  int     pernum_sp    116-119  ///
  float   perwt_sp     120-129  ///
  byte    sploc_sp     130-131  ///
  byte    sex_sp       132-132  ///
  int     age_sp       133-135  ///
  byte    marst_sp     136-136  ///
  int     birthyr_sp   137-140  ///
  byte    marrno_sp    141-141  ///
  byte    agemarr_sp   142-143  ///
  byte    chborn_sp    144-145  ///
  byte    race_sp      146-146  ///
  int     raced_sp     147-149  ///
  int     bpl_sp       150-152  ///
  long    bpld_sp      153-157  ///
  byte    higrade_sp   158-159  ///
  int     higraded_sp  160-162  ///
  byte    empstat_sp   163-163  ///
  byte    empstatd_sp  164-165  ///
  byte    labforce_sp  166-166  ///
  int     occ1950_sp   167-169  ///
  long    inctot_sp    170-176  ///
  long    incwage_sp   177-182  ///
  byte    occscore_sp  183-184  ///
  byte    sei_sp       185-186  ///
  float   presgl_sp    187-189  ///
  float   erscor50_sp  190-193  ///
  int     migplac5_sp  194-196  ///
  byte    work5yr_sp   197-197  ///
  byte    milit5yr_sp  198-198  ///
  byte    coll5yr_sp   199-199  ///
  int     occ5yr95_sp  200-202  ///
  using `"usa_00004.dat"'

replace hhwt        = hhwt        / 100
replace perwt       = perwt       / 100
replace presgl      = presgl      / 10
replace erscor50    = erscor50    / 10
replace perwt_sp    = perwt_sp    / 100
replace presgl_sp   = presgl_sp   / 10
replace erscor50_sp = erscor50_sp / 10

format serial      %8.0f
format hhwt        %10.2f
format perwt       %10.2f
format presgl      %3.1f
format erscor50    %4.1f
format perwt_sp    %10.2f
format presgl_sp   %3.1f
format erscor50_sp %4.1f

label var year        `"Census year"'
label var datanum     `"Data set number"'
label var serial      `"Household serial number"'
label var hhwt        `"Household weight"'
label var statefip    `"State (FIPS code)"'
label var metro       `"Metropolitan status"'
label var gq          `"Group quarters status"'
label var pernum      `"Person number in sample unit"'
label var perwt       `"Person weight"'
label var sploc       `"Spouse's location in household"'
label var sex         `"Sex"'
label var age         `"Age"'
label var marst       `"Marital status"'
label var birthyr     `"Year of birth"'
label var marrno      `"Times married"'
label var agemarr     `"Age at first marriage"'
label var chborn      `"Children ever born"'
label var race        `"Race [general version]"'
label var raced       `"Race [detailed version]"'
label var bpl         `"Birthplace [general version]"'
label var bpld        `"Birthplace [detailed version]"'
label var higrade     `"Highest grade of schooling [general version]"'
label var higraded    `"Highest grade of schooling [detailed version]"'
label var empstat     `"Employment status [general version]"'
label var empstatd    `"Employment status [detailed version]"'
label var labforce    `"Labor force status"'
label var occ1950     `"Occupation, 1950 basis"'
label var inctot      `"Total personal income"'
label var incwage     `"Wage and salary income"'
label var occscore    `"Occupational income score"'
label var sei         `"Duncan Socioeconomic Index"'
label var presgl      `"Occupational prestige score, Siegel"'
label var erscor50    `"Occupational earnings score, 1950 basis"'
label var migplac5    `"State or country of residence 5 years ago"'
label var work5yr     `"Working 5 years ago"'
label var milit5yr    `"Armed forces 5 years ago"'
label var coll5yr     `"College 5 years ago"'
label var occ5yr95    `"Occupation 5 years ago, 1950 basis"'
label var pernum_sp   `"Person number in sample unit [of spouse]"'
label var perwt_sp    `"Person weight [of spouse]"'
label var sploc_sp    `"Spouse's location in household [of spouse]"'
label var sex_sp      `"Sex [of spouse]"'
label var age_sp      `"Age [of spouse]"'
label var marst_sp    `"Marital status [of spouse]"'
label var birthyr_sp  `"Year of birth [of spouse]"'
label var marrno_sp   `"Times married [of spouse]"'
label var agemarr_sp  `"Age at first marriage [of spouse]"'
label var chborn_sp   `"Children ever born [of spouse]"'
label var race_sp     `"Race [of spouse; general version]"'
label var raced_sp    `"Race [of spouse; detailed version]"'
label var bpl_sp      `"Birthplace [of spouse; general version]"'
label var bpld_sp     `"Birthplace [of spouse; detailed version]"'
label var higrade_sp  `"Highest grade of schooling [of spouse; general version]"'
label var higraded_sp `"Highest grade of schooling [of spouse; detailed version]"'
label var empstat_sp  `"Employment status [of spouse; general version]"'
label var empstatd_sp `"Employment status [of spouse; detailed version]"'
label var labforce_sp `"Labor force status [of spouse]"'
label var occ1950_sp  `"Occupation, 1950 basis [of spouse]"'
label var inctot_sp   `"Total personal income [of spouse]"'
label var incwage_sp  `"Wage and salary income [of spouse]"'
label var occscore_sp `"Occupational income score [of spouse]"'
label var sei_sp      `"Duncan Socioeconomic Index [of spouse]"'
label var presgl_sp   `"Occupational prestige score, Siegel [of spouse]"'
label var erscor50_sp `"Occupational earnings score, 1950 basis [of spouse]"'
label var migplac5_sp `"State or country of residence 5 years ago [of spouse]"'
label var work5yr_sp  `"Working 5 years ago [of spouse]"'
label var milit5yr_sp `"Armed forces 5 years ago [of spouse]"'
label var coll5yr_sp  `"College 5 years ago [of spouse]"'
label var occ5yr95_sp `"Occupation 5 years ago, 1950 basis [of spouse]"'

label define year_lbl 1850 `"1850"'
label define year_lbl 1860 `"1860"', add
label define year_lbl 1870 `"1870"', add
label define year_lbl 1880 `"1880"', add
label define year_lbl 1900 `"1900"', add
label define year_lbl 1910 `"1910"', add
label define year_lbl 1920 `"1920"', add
label define year_lbl 1930 `"1930"', add
label define year_lbl 1940 `"1940"', add
label define year_lbl 1950 `"1950"', add
label define year_lbl 1960 `"1960"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label define year_lbl 2012 `"2012"', add
label define year_lbl 2013 `"2013"', add
label define year_lbl 2014 `"2014"', add
label values year year_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label define statefip_lbl 61 `"Maine-New Hampshire-Vermont"', add
label define statefip_lbl 62 `"Massachusetts-Rhode Island"', add
label define statefip_lbl 63 `"Minnesota-Iowa-Missouri-Kansas-Nebraska-S.Dakota-N.Dakota"', add
label define statefip_lbl 64 `"Maryland-Delaware"', add
label define statefip_lbl 65 `"Montana-Idaho-Wyoming"', add
label define statefip_lbl 66 `"Utah-Nevada"', add
label define statefip_lbl 67 `"Arizona-New Mexico"', add
label define statefip_lbl 68 `"Alaska-Hawaii"', add
label define statefip_lbl 72 `"Puerto Rico"', add
label define statefip_lbl 97 `"Military/Mil. Reservation"', add
label define statefip_lbl 99 `"State not identified"', add
label values statefip statefip_lbl

label define metro_lbl 0 `"Not identifiable"'
label define metro_lbl 1 `"Not in metro area"', add
label define metro_lbl 2 `"In metro area, central / principal city"', add
label define metro_lbl 3 `"In metro area, outside central / principal city"', add
label define metro_lbl 4 `"Central / Principal city status unknown"', add
label values metro metro_lbl

label define gq_lbl 0 `"Vacant unit"'
label define gq_lbl 1 `"Households under 1970 definition"', add
label define gq_lbl 2 `"Additional households under 1990 definition"', add
label define gq_lbl 3 `"Group quarters--Institutions"', add
label define gq_lbl 4 `"Other group quarters"', add
label define gq_lbl 5 `"Additional households under 2000 definition"', add
label define gq_lbl 6 `"Fragment"', add
label values gq gq_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label values sex sex_lbl

label define age_lbl 000 `"Less than 1 year old"'
label define age_lbl 001 `"1"', add
label define age_lbl 002 `"2"', add
label define age_lbl 003 `"3"', add
label define age_lbl 004 `"4"', add
label define age_lbl 005 `"5"', add
label define age_lbl 006 `"6"', add
label define age_lbl 007 `"7"', add
label define age_lbl 008 `"8"', add
label define age_lbl 009 `"9"', add
label define age_lbl 010 `"10"', add
label define age_lbl 011 `"11"', add
label define age_lbl 012 `"12"', add
label define age_lbl 013 `"13"', add
label define age_lbl 014 `"14"', add
label define age_lbl 015 `"15"', add
label define age_lbl 016 `"16"', add
label define age_lbl 017 `"17"', add
label define age_lbl 018 `"18"', add
label define age_lbl 019 `"19"', add
label define age_lbl 020 `"20"', add
label define age_lbl 021 `"21"', add
label define age_lbl 022 `"22"', add
label define age_lbl 023 `"23"', add
label define age_lbl 024 `"24"', add
label define age_lbl 025 `"25"', add
label define age_lbl 026 `"26"', add
label define age_lbl 027 `"27"', add
label define age_lbl 028 `"28"', add
label define age_lbl 029 `"29"', add
label define age_lbl 030 `"30"', add
label define age_lbl 031 `"31"', add
label define age_lbl 032 `"32"', add
label define age_lbl 033 `"33"', add
label define age_lbl 034 `"34"', add
label define age_lbl 035 `"35"', add
label define age_lbl 036 `"36"', add
label define age_lbl 037 `"37"', add
label define age_lbl 038 `"38"', add
label define age_lbl 039 `"39"', add
label define age_lbl 040 `"40"', add
label define age_lbl 041 `"41"', add
label define age_lbl 042 `"42"', add
label define age_lbl 043 `"43"', add
label define age_lbl 044 `"44"', add
label define age_lbl 045 `"45"', add
label define age_lbl 046 `"46"', add
label define age_lbl 047 `"47"', add
label define age_lbl 048 `"48"', add
label define age_lbl 049 `"49"', add
label define age_lbl 050 `"50"', add
label define age_lbl 051 `"51"', add
label define age_lbl 052 `"52"', add
label define age_lbl 053 `"53"', add
label define age_lbl 054 `"54"', add
label define age_lbl 055 `"55"', add
label define age_lbl 056 `"56"', add
label define age_lbl 057 `"57"', add
label define age_lbl 058 `"58"', add
label define age_lbl 059 `"59"', add
label define age_lbl 060 `"60"', add
label define age_lbl 061 `"61"', add
label define age_lbl 062 `"62"', add
label define age_lbl 063 `"63"', add
label define age_lbl 064 `"64"', add
label define age_lbl 065 `"65"', add
label define age_lbl 066 `"66"', add
label define age_lbl 067 `"67"', add
label define age_lbl 068 `"68"', add
label define age_lbl 069 `"69"', add
label define age_lbl 070 `"70"', add
label define age_lbl 071 `"71"', add
label define age_lbl 072 `"72"', add
label define age_lbl 073 `"73"', add
label define age_lbl 074 `"74"', add
label define age_lbl 075 `"75"', add
label define age_lbl 076 `"76"', add
label define age_lbl 077 `"77"', add
label define age_lbl 078 `"78"', add
label define age_lbl 079 `"79"', add
label define age_lbl 080 `"80"', add
label define age_lbl 081 `"81"', add
label define age_lbl 082 `"82"', add
label define age_lbl 083 `"83"', add
label define age_lbl 084 `"84"', add
label define age_lbl 085 `"85"', add
label define age_lbl 086 `"86"', add
label define age_lbl 087 `"87"', add
label define age_lbl 088 `"88"', add
label define age_lbl 089 `"89"', add
label define age_lbl 090 `"90 (90+ in 1980 and 1990)"', add
label define age_lbl 091 `"91"', add
label define age_lbl 092 `"92"', add
label define age_lbl 093 `"93"', add
label define age_lbl 094 `"94"', add
label define age_lbl 095 `"95"', add
label define age_lbl 096 `"96"', add
label define age_lbl 097 `"97"', add
label define age_lbl 098 `"98"', add
label define age_lbl 099 `"99"', add
label define age_lbl 100 `"100 (100+ in 1960-1970)"', add
label define age_lbl 101 `"101"', add
label define age_lbl 102 `"102"', add
label define age_lbl 103 `"103"', add
label define age_lbl 104 `"104"', add
label define age_lbl 105 `"105"', add
label define age_lbl 106 `"106"', add
label define age_lbl 107 `"107"', add
label define age_lbl 108 `"108"', add
label define age_lbl 109 `"109"', add
label define age_lbl 110 `"110"', add
label define age_lbl 111 `"111"', add
label define age_lbl 112 `"112 (112+ in the 1980 internal data)"', add
label define age_lbl 113 `"113"', add
label define age_lbl 114 `"114"', add
label define age_lbl 115 `"115 (115+ in the 1990 internal data)"', add
label define age_lbl 116 `"116"', add
label define age_lbl 117 `"117"', add
label define age_lbl 118 `"118"', add
label define age_lbl 119 `"119"', add
label define age_lbl 120 `"120"', add
label define age_lbl 121 `"121"', add
label define age_lbl 122 `"122"', add
label define age_lbl 123 `"123"', add
label define age_lbl 124 `"124"', add
label define age_lbl 125 `"125"', add
label define age_lbl 126 `"126"', add
label define age_lbl 129 `"129"', add
label define age_lbl 130 `"130"', add
label define age_lbl 135 `"135"', add
label values age age_lbl

label define marst_lbl 1 `"Married, spouse present"'
label define marst_lbl 2 `"Married, spouse absent"', add
label define marst_lbl 3 `"Separated"', add
label define marst_lbl 4 `"Divorced"', add
label define marst_lbl 5 `"Widowed"', add
label define marst_lbl 6 `"Never married/single"', add
label values marst marst_lbl

label define marrno_lbl 0 `"Not Applicable"'
label define marrno_lbl 1 `"Married once"', add
label define marrno_lbl 2 `"Married twice (or more)"', add
label define marrno_lbl 3 `"Married thrice (or more)"', add
label define marrno_lbl 4 `"Four times"', add
label define marrno_lbl 5 `"Five times"', add
label define marrno_lbl 6 `"Six times"', add
label define marrno_lbl 7 `"Unknown"', add
label define marrno_lbl 8 `"Illegible"', add
label define marrno_lbl 9 `"Missing"', add
label values marrno marrno_lbl

label define agemarr_lbl 00 `"N/A and missing"'
label define agemarr_lbl 12 `"12 years old"', add
label define agemarr_lbl 13 `"13"', add
label define agemarr_lbl 14 `"14"', add
label define agemarr_lbl 15 `"15"', add
label define agemarr_lbl 16 `"16"', add
label define agemarr_lbl 17 `"17"', add
label define agemarr_lbl 18 `"18"', add
label define agemarr_lbl 19 `"19"', add
label define agemarr_lbl 20 `"20"', add
label define agemarr_lbl 21 `"21"', add
label define agemarr_lbl 22 `"22"', add
label define agemarr_lbl 23 `"23"', add
label define agemarr_lbl 24 `"24"', add
label define agemarr_lbl 25 `"25"', add
label define agemarr_lbl 26 `"26"', add
label define agemarr_lbl 27 `"27"', add
label define agemarr_lbl 28 `"28"', add
label define agemarr_lbl 29 `"29"', add
label define agemarr_lbl 30 `"30"', add
label define agemarr_lbl 31 `"31"', add
label define agemarr_lbl 32 `"32"', add
label define agemarr_lbl 33 `"33"', add
label define agemarr_lbl 34 `"34"', add
label define agemarr_lbl 35 `"35"', add
label define agemarr_lbl 36 `"36"', add
label define agemarr_lbl 37 `"37"', add
label define agemarr_lbl 38 `"38"', add
label define agemarr_lbl 39 `"39"', add
label define agemarr_lbl 40 `"40"', add
label define agemarr_lbl 41 `"41"', add
label define agemarr_lbl 42 `"42"', add
label define agemarr_lbl 43 `"43"', add
label define agemarr_lbl 44 `"44"', add
label define agemarr_lbl 45 `"45"', add
label define agemarr_lbl 46 `"46"', add
label define agemarr_lbl 47 `"47"', add
label define agemarr_lbl 48 `"48"', add
label define agemarr_lbl 49 `"49"', add
label define agemarr_lbl 50 `"50"', add
label define agemarr_lbl 51 `"51"', add
label define agemarr_lbl 52 `"52"', add
label define agemarr_lbl 53 `"53"', add
label define agemarr_lbl 54 `"54"', add
label define agemarr_lbl 55 `"55"', add
label define agemarr_lbl 56 `"56"', add
label define agemarr_lbl 57 `"57"', add
label define agemarr_lbl 58 `"58"', add
label define agemarr_lbl 59 `"59"', add
label define agemarr_lbl 60 `"60"', add
label define agemarr_lbl 61 `"61"', add
label define agemarr_lbl 62 `"62"', add
label define agemarr_lbl 63 `"63"', add
label define agemarr_lbl 64 `"64"', add
label define agemarr_lbl 65 `"65"', add
label define agemarr_lbl 66 `"66"', add
label define agemarr_lbl 67 `"67"', add
label define agemarr_lbl 68 `"68"', add
label define agemarr_lbl 69 `"69"', add
label define agemarr_lbl 70 `"70"', add
label define agemarr_lbl 71 `"71"', add
label define agemarr_lbl 72 `"72"', add
label define agemarr_lbl 73 `"73"', add
label define agemarr_lbl 74 `"74"', add
label define agemarr_lbl 75 `"75"', add
label define agemarr_lbl 76 `"76"', add
label define agemarr_lbl 77 `"77"', add
label define agemarr_lbl 78 `"78"', add
label define agemarr_lbl 79 `"79"', add
label define agemarr_lbl 80 `"80"', add
label define agemarr_lbl 81 `"81"', add
label define agemarr_lbl 82 `"82"', add
label define agemarr_lbl 83 `"83"', add
label define agemarr_lbl 84 `"84"', add
label define agemarr_lbl 85 `"85"', add
label define agemarr_lbl 86 `"86"', add
label define agemarr_lbl 87 `"87"', add
label define agemarr_lbl 88 `"88"', add
label define agemarr_lbl 89 `"89"', add
label define agemarr_lbl 90 `"90"', add
label define agemarr_lbl 91 `"91"', add
label define agemarr_lbl 92 `"92"', add
label define agemarr_lbl 93 `"93"', add
label define agemarr_lbl 94 `"94"', add
label define agemarr_lbl 95 `"95"', add
label define agemarr_lbl 96 `"96"', add
label define agemarr_lbl 97 `"97"', add
label define agemarr_lbl 98 `"98"', add
label define agemarr_lbl 99 `"99+"', add
label values agemarr agemarr_lbl

label define chborn_lbl 00 `"N/A"'
label define chborn_lbl 01 `"No children"', add
label define chborn_lbl 02 `"1 child"', add
label define chborn_lbl 03 `"2 children"', add
label define chborn_lbl 04 `"3"', add
label define chborn_lbl 05 `"4"', add
label define chborn_lbl 06 `"5"', add
label define chborn_lbl 07 `"6"', add
label define chborn_lbl 08 `"7"', add
label define chborn_lbl 09 `"8"', add
label define chborn_lbl 10 `"9"', add
label define chborn_lbl 11 `"10"', add
label define chborn_lbl 12 `"11"', add
label define chborn_lbl 13 `"12 (12+ 1960-1990)"', add
label define chborn_lbl 14 `"13"', add
label define chborn_lbl 15 `"14"', add
label define chborn_lbl 16 `"15"', add
label define chborn_lbl 17 `"16"', add
label define chborn_lbl 18 `"17"', add
label define chborn_lbl 19 `"18"', add
label define chborn_lbl 20 `"19"', add
label define chborn_lbl 21 `"20"', add
label define chborn_lbl 22 `"21"', add
label define chborn_lbl 23 `"22"', add
label define chborn_lbl 24 `"23"', add
label define chborn_lbl 25 `"24"', add
label define chborn_lbl 26 `"25 (25+ 1950)"', add
label define chborn_lbl 27 `"26"', add
label define chborn_lbl 28 `"27"', add
label define chborn_lbl 29 `"28"', add
label define chborn_lbl 30 `"29"', add
label define chborn_lbl 31 `"30"', add
label define chborn_lbl 32 `"31"', add
label define chborn_lbl 33 `"32"', add
label define chborn_lbl 34 `"33"', add
label define chborn_lbl 35 `"34"', add
label define chborn_lbl 36 `"35"', add
label define chborn_lbl 37 `"36"', add
label define chborn_lbl 38 `"37"', add
label define chborn_lbl 39 `"38"', add
label define chborn_lbl 40 `"39"', add
label define chborn_lbl 41 `"40"', add
label define chborn_lbl 42 `"41"', add
label define chborn_lbl 43 `"42"', add
label define chborn_lbl 44 `"43"', add
label define chborn_lbl 45 `"44"', add
label define chborn_lbl 46 `"45"', add
label define chborn_lbl 47 `"46"', add
label define chborn_lbl 48 `"47"', add
label define chborn_lbl 49 `"48"', add
label define chborn_lbl 50 `"49"', add
label define chborn_lbl 51 `"50"', add
label define chborn_lbl 52 `"51"', add
label define chborn_lbl 53 `"52"', add
label define chborn_lbl 54 `"53"', add
label define chborn_lbl 55 `"54"', add
label define chborn_lbl 56 `"55"', add
label define chborn_lbl 57 `"56"', add
label define chborn_lbl 58 `"57"', add
label define chborn_lbl 61 `"60"', add
label define chborn_lbl 87 `"87"', add
label values chborn chborn_lbl

label define race_lbl 1 `"White"'
label define race_lbl 2 `"Black/Negro"', add
label define race_lbl 3 `"American Indian or Alaska Native"', add
label define race_lbl 4 `"Chinese"', add
label define race_lbl 5 `"Japanese"', add
label define race_lbl 6 `"Other Asian or Pacific Islander"', add
label define race_lbl 7 `"Other race, nec"', add
label define race_lbl 8 `"Two major races"', add
label define race_lbl 9 `"Three or more major races"', add
label values race race_lbl

label define raced_lbl 100 `"White"'
label define raced_lbl 110 `"Spanish write_in"', add
label define raced_lbl 120 `"Blank (white) (1850)"', add
label define raced_lbl 130 `"Portuguese"', add
label define raced_lbl 140 `"Mexican (1930)"', add
label define raced_lbl 150 `"Puerto Rican (1910 Hawaii)"', add
label define raced_lbl 200 `"Black/Negro"', add
label define raced_lbl 210 `"Mulatto"', add
label define raced_lbl 300 `"American Indian/Alaska Native"', add
label define raced_lbl 302 `"Apache"', add
label define raced_lbl 303 `"Blackfoot"', add
label define raced_lbl 304 `"Cherokee"', add
label define raced_lbl 305 `"Cheyenne"', add
label define raced_lbl 306 `"Chickasaw"', add
label define raced_lbl 307 `"Chippewa"', add
label define raced_lbl 308 `"Choctaw"', add
label define raced_lbl 309 `"Comanche"', add
label define raced_lbl 310 `"Creek"', add
label define raced_lbl 311 `"Crow"', add
label define raced_lbl 312 `"Iroquois"', add
label define raced_lbl 313 `"Kiowa"', add
label define raced_lbl 314 `"Lumbee"', add
label define raced_lbl 315 `"Navajo"', add
label define raced_lbl 316 `"Osage"', add
label define raced_lbl 317 `"Paiute"', add
label define raced_lbl 318 `"Pima"', add
label define raced_lbl 319 `"Potawatomi"', add
label define raced_lbl 320 `"Pueblo"', add
label define raced_lbl 321 `"Seminole"', add
label define raced_lbl 322 `"Shoshone"', add
label define raced_lbl 323 `"Sioux"', add
label define raced_lbl 324 `"Tlingit (Tlingit_Haida, 2000/ACS)"', add
label define raced_lbl 325 `"Tohono O Odham"', add
label define raced_lbl 326 `"All other tribes (1990)"', add
label define raced_lbl 328 `"Hopi"', add
label define raced_lbl 329 `"Central American Indian"', add
label define raced_lbl 330 `"Spanish American Indian"', add
label define raced_lbl 350 `"Delaware"', add
label define raced_lbl 351 `"Latin American Indian"', add
label define raced_lbl 352 `"Puget Sound Salish"', add
label define raced_lbl 353 `"Yakama"', add
label define raced_lbl 354 `"Yaqui"', add
label define raced_lbl 355 `"Colville"', add
label define raced_lbl 356 `"Houma"', add
label define raced_lbl 357 `"Menominee"', add
label define raced_lbl 358 `"Yuman"', add
label define raced_lbl 359 `"South American Indian"', add
label define raced_lbl 360 `"Mexican American Indian"', add
label define raced_lbl 361 `"Other Amer. Indian tribe (2000,ACS)"', add
label define raced_lbl 362 `"2+ Amer. Indian tribes (2000,ACS)"', add
label define raced_lbl 370 `"Alaskan Athabaskan"', add
label define raced_lbl 371 `"Aleut"', add
label define raced_lbl 372 `"Eskimo"', add
label define raced_lbl 373 `"Alaskan mixed"', add
label define raced_lbl 374 `"Inupiat"', add
label define raced_lbl 375 `"Yup'ik"', add
label define raced_lbl 379 `"Other Alaska Native tribe(s) (2000,ACS)"', add
label define raced_lbl 398 `"Both Am. Ind. and Alaska Native (2000,ACS)"', add
label define raced_lbl 399 `"Tribe not specified"', add
label define raced_lbl 400 `"Chinese"', add
label define raced_lbl 410 `"Taiwanese"', add
label define raced_lbl 420 `"Chinese and Taiwanese"', add
label define raced_lbl 500 `"Japanese"', add
label define raced_lbl 600 `"Filipino"', add
label define raced_lbl 610 `"Asian Indian (Hindu 1920_1940)"', add
label define raced_lbl 620 `"Korean"', add
label define raced_lbl 630 `"Hawaiian"', add
label define raced_lbl 631 `"Hawaiian and Asian (1900,1920)"', add
label define raced_lbl 632 `"Hawaiian and European (1900,1920)"', add
label define raced_lbl 634 `"Hawaiian mixed"', add
label define raced_lbl 640 `"Vietnamese"', add
label define raced_lbl 641 `"   Bhutanese"', add
label define raced_lbl 642 `"   Mongolian "', add
label define raced_lbl 643 `"   Nepalese"', add
label define raced_lbl 650 `"Other Asian or Pacific Islander (1920,1980)"', add
label define raced_lbl 651 `"Asian only (CPS)"', add
label define raced_lbl 652 `"Pacific Islander only (CPS)"', add
label define raced_lbl 653 `"Asian or Pacific Islander, n.s. (1990 Internal Census files)"', add
label define raced_lbl 660 `"Cambodian"', add
label define raced_lbl 661 `"Hmong"', add
label define raced_lbl 662 `"Laotian"', add
label define raced_lbl 663 `"Thai"', add
label define raced_lbl 664 `"Bangladeshi"', add
label define raced_lbl 665 `"Burmese"', add
label define raced_lbl 666 `"Indonesian"', add
label define raced_lbl 667 `"Malaysian"', add
label define raced_lbl 668 `"Okinawan"', add
label define raced_lbl 669 `"Pakistani"', add
label define raced_lbl 670 `"Sri Lankan"', add
label define raced_lbl 671 `"Other Asian, n.e.c."', add
label define raced_lbl 672 `"Asian, not specified"', add
label define raced_lbl 673 `"Chinese and Japanese"', add
label define raced_lbl 674 `"Chinese and Filipino"', add
label define raced_lbl 675 `"Chinese and Vietnamese"', add
label define raced_lbl 676 `"Chinese and Asian write_in"', add
label define raced_lbl 677 `"Japanese and Filipino"', add
label define raced_lbl 678 `"Asian Indian and Asian write_in"', add
label define raced_lbl 679 `"Other Asian race combinations"', add
label define raced_lbl 680 `"Samoan"', add
label define raced_lbl 681 `"Tahitian"', add
label define raced_lbl 682 `"Tongan"', add
label define raced_lbl 683 `"Other Polynesian (1990)"', add
label define raced_lbl 684 `"1+ other Polynesian races (2000,ACS)"', add
label define raced_lbl 685 `"Guamanian/Chamorro"', add
label define raced_lbl 686 `"Northern Mariana Islander"', add
label define raced_lbl 687 `"Palauan"', add
label define raced_lbl 688 `"Other Micronesian (1990)"', add
label define raced_lbl 689 `"1+ other Micronesian races (2000,ACS)"', add
label define raced_lbl 690 `"Fijian"', add
label define raced_lbl 691 `"Other Melanesian (1990)"', add
label define raced_lbl 692 `"1+ other Melanesian races (2000,ACS)"', add
label define raced_lbl 698 `"2+ PI races from 2+ PI regions"', add
label define raced_lbl 699 `"Pacific Islander, n.s."', add
label define raced_lbl 700 `"Other race, n.e.c."', add
label define raced_lbl 801 `"White and Black"', add
label define raced_lbl 802 `"White and AIAN"', add
label define raced_lbl 810 `"White and Asian"', add
label define raced_lbl 811 `"White and Chinese"', add
label define raced_lbl 812 `"White and Japanese"', add
label define raced_lbl 813 `"White and Filipino"', add
label define raced_lbl 814 `"White and Asian Indian"', add
label define raced_lbl 815 `"White and Korean"', add
label define raced_lbl 816 `"White and Vietnamese"', add
label define raced_lbl 817 `"White and Asian write_in"', add
label define raced_lbl 818 `"White and other Asian race(s)"', add
label define raced_lbl 819 `"White and two or more Asian groups"', add
label define raced_lbl 820 `"White and PI  "', add
label define raced_lbl 821 `"White and Native Hawaiian"', add
label define raced_lbl 822 `"White and Samoan"', add
label define raced_lbl 823 `"White and Guamanian"', add
label define raced_lbl 824 `"White and PI write_in"', add
label define raced_lbl 825 `"White and other PI race(s)"', add
label define raced_lbl 826 `"White and other race write_in"', add
label define raced_lbl 827 `"White and other race, n.e.c."', add
label define raced_lbl 830 `"Black and AIAN"', add
label define raced_lbl 831 `"Black and Asian"', add
label define raced_lbl 832 `"Black and Chinese"', add
label define raced_lbl 833 `"Black and Japanese"', add
label define raced_lbl 834 `"Black and Filipino"', add
label define raced_lbl 835 `"Black and Asian Indian"', add
label define raced_lbl 836 `"Black and Korean"', add
label define raced_lbl 837 `"Black and Asian write_in"', add
label define raced_lbl 838 `"Black and other Asian race(s)"', add
label define raced_lbl 840 `"Black and PI"', add
label define raced_lbl 841 `"Black and PI write_in"', add
label define raced_lbl 842 `"Black and other PI race(s)"', add
label define raced_lbl 845 `"Black and other race write_in"', add
label define raced_lbl 850 `"AIAN and Asian"', add
label define raced_lbl 851 `"AIAN and Filipino (2000 1%)"', add
label define raced_lbl 852 `"AIAN and Asian Indian"', add
label define raced_lbl 853 `"AIAN and Asian write_in (2000 1%)"', add
label define raced_lbl 854 `"AIAN and other Asian race(s)"', add
label define raced_lbl 855 `"AIAN and PI"', add
label define raced_lbl 856 `"AIAN and other race write_in"', add
label define raced_lbl 860 `"Asian and PI"', add
label define raced_lbl 861 `"Chinese and Hawaiian"', add
label define raced_lbl 862 `"Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_lbl 863 `"Japanese and Hawaiian (2000 1%)"', add
label define raced_lbl 864 `"Filipino and Hawaiian"', add
label define raced_lbl 865 `"Filipino and PI write_in"', add
label define raced_lbl 866 `"Asian Indian and PI write_in (2000 1%)"', add
label define raced_lbl 867 `"Asian write_in and PI write_in"', add
label define raced_lbl 868 `"Other Asian race(s) and PI race(s)"', add
label define raced_lbl 869 `"Japanese and Korean (ACS)"', add
label define raced_lbl 880 `"Asian and other race write_in"', add
label define raced_lbl 881 `"Chinese and other race write_in"', add
label define raced_lbl 882 `"Japanese and other race write_in"', add
label define raced_lbl 883 `"Filipino and other race write_in"', add
label define raced_lbl 884 `"Asian Indian and other race write_in"', add
label define raced_lbl 885 `"Asian write_in and other race write_in"', add
label define raced_lbl 886 `"Other Asian race(s) and other race write_in"', add
label define raced_lbl 887 `"      Chinese and Korean"', add
label define raced_lbl 890 `"PI and other race write_in: "', add
label define raced_lbl 891 `"PI write_in and other race write_in"', add
label define raced_lbl 892 `"Other PI race(s) and other race write_in"', add
label define raced_lbl 893 `"         Native Hawaiian or PI other race(s)"', add
label define raced_lbl 899 `"API and other race write_in"', add
label define raced_lbl 901 `"White, Black, AIAN"', add
label define raced_lbl 902 `"White, Black, Asian"', add
label define raced_lbl 903 `"White, Black, PI"', add
label define raced_lbl 904 `"White, Black, other race write_in"', add
label define raced_lbl 905 `"White, AIAN, Asian"', add
label define raced_lbl 906 `"White, AIAN, PI"', add
label define raced_lbl 907 `"White, AIAN, other race write_in"', add
label define raced_lbl 910 `"White, Asian, PI "', add
label define raced_lbl 911 `"White, Chinese, Hawaiian"', add
label define raced_lbl 912 `"White, Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_lbl 913 `"White, Japanese, Hawaiian (2000 1%)"', add
label define raced_lbl 914 `"White, Filipino, Hawaiian"', add
label define raced_lbl 915 `"Other White, Asian race(s), PI race(s)"', add
label define raced_lbl 916 `"      White, AIAN and Filipino"', add
label define raced_lbl 917 `"      White, Black, and Filipino"', add
label define raced_lbl 920 `"White, Asian, other race write_in"', add
label define raced_lbl 921 `"White, Filipino, other race write_in (2000 1%)"', add
label define raced_lbl 922 `"White, Asian write_in, other race write_in (2000 1%)"', add
label define raced_lbl 923 `"Other White, Asian race(s), other race write_in (2000 1%)"', add
label define raced_lbl 925 `"White, PI, other race write_in"', add
label define raced_lbl 930 `"Black, AIAN, Asian"', add
label define raced_lbl 931 `"Black, AIAN, PI"', add
label define raced_lbl 932 `"Black, AIAN, other race write_in"', add
label define raced_lbl 933 `"Black, Asian, PI"', add
label define raced_lbl 934 `"Black, Asian, other race write_in"', add
label define raced_lbl 935 `"Black, PI, other race write_in"', add
label define raced_lbl 940 `"AIAN, Asian, PI"', add
label define raced_lbl 941 `"AIAN, Asian, other race write_in"', add
label define raced_lbl 942 `"AIAN, PI, other race write_in"', add
label define raced_lbl 943 `"Asian, PI, other race write_in"', add
label define raced_lbl 944 `"Asian (Chinese, Japanese, Korean, Vietnamese); and Native Hawaiian or PI; and Other"', add
label define raced_lbl 949 `"2 or 3 races (CPS)"', add
label define raced_lbl 950 `"White, Black, AIAN, Asian"', add
label define raced_lbl 951 `"White, Black, AIAN, PI"', add
label define raced_lbl 952 `"White, Black, AIAN, other race write_in"', add
label define raced_lbl 953 `"White, Black, Asian, PI"', add
label define raced_lbl 954 `"White, Black, Asian, other race write_in"', add
label define raced_lbl 955 `"White, Black, PI, other race write_in"', add
label define raced_lbl 960 `"White, AIAN, Asian, PI"', add
label define raced_lbl 961 `"White, AIAN, Asian, other race write_in"', add
label define raced_lbl 962 `"White, AIAN, PI, other race write_in"', add
label define raced_lbl 963 `"White, Asian, PI, other race write_in"', add
label define raced_lbl 964 `"White, Chinese, Japanese, Native Hawaiian"', add
label define raced_lbl 970 `"Black, AIAN, Asian, PI"', add
label define raced_lbl 971 `"Black, AIAN, Asian, other race write_in"', add
label define raced_lbl 972 `"Black, AIAN, PI, other race write_in"', add
label define raced_lbl 973 `"Black, Asian, PI, other race write_in"', add
label define raced_lbl 974 `"AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 975 `"AIAN, Asian, PI, Hawaiian other race write_in"', add
label define raced_lbl 976 `"Two specified Asian  (Chinese and other Asian, Chinese and Japanese, Japanese and other Asian, Korean and other Asian); Native Hawaiian/PI; and Other Race"', add
label define raced_lbl 980 `"White, Black, AIAN, Asian, PI"', add
label define raced_lbl 981 `"White, Black, AIAN, Asian, other race write_in"', add
label define raced_lbl 982 `"White, Black, AIAN, PI, other race write_in"', add
label define raced_lbl 983 `"White, Black, Asian, PI, other race write_in"', add
label define raced_lbl 984 `"White, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 985 `"Black, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 986 `"Black, AIAN, Asian, PI, Hawaiian, other race write_in"', add
label define raced_lbl 989 `"4 or 5 races (CPS)"', add
label define raced_lbl 990 `"White, Black, AIAN, Asian, PI, other race write_in"', add
label define raced_lbl 991 `"White race; Some other race; Black or African American race and/or American Indian and Alaska Native race and/or Asian groups and/or Native Hawaiian and Other Pacific Islander groups"', add
label define raced_lbl 996 `"2+ races, n.e.c. (CPS)"', add
label values raced raced_lbl

label define bpl_lbl 001 `"Alabama"'
label define bpl_lbl 002 `"Alaska"', add
label define bpl_lbl 004 `"Arizona"', add
label define bpl_lbl 005 `"Arkansas"', add
label define bpl_lbl 006 `"California"', add
label define bpl_lbl 008 `"Colorado"', add
label define bpl_lbl 009 `"Connecticut"', add
label define bpl_lbl 010 `"Delaware"', add
label define bpl_lbl 011 `"District of Columbia"', add
label define bpl_lbl 012 `"Florida"', add
label define bpl_lbl 013 `"Georgia"', add
label define bpl_lbl 015 `"Hawaii"', add
label define bpl_lbl 016 `"Idaho"', add
label define bpl_lbl 017 `"Illinois"', add
label define bpl_lbl 018 `"Indiana"', add
label define bpl_lbl 019 `"Iowa"', add
label define bpl_lbl 020 `"Kansas"', add
label define bpl_lbl 021 `"Kentucky"', add
label define bpl_lbl 022 `"Louisiana"', add
label define bpl_lbl 023 `"Maine"', add
label define bpl_lbl 024 `"Maryland"', add
label define bpl_lbl 025 `"Massachusetts"', add
label define bpl_lbl 026 `"Michigan"', add
label define bpl_lbl 027 `"Minnesota"', add
label define bpl_lbl 028 `"Mississippi"', add
label define bpl_lbl 029 `"Missouri"', add
label define bpl_lbl 030 `"Montana"', add
label define bpl_lbl 031 `"Nebraska"', add
label define bpl_lbl 032 `"Nevada"', add
label define bpl_lbl 033 `"New Hampshire"', add
label define bpl_lbl 034 `"New Jersey"', add
label define bpl_lbl 035 `"New Mexico"', add
label define bpl_lbl 036 `"New York"', add
label define bpl_lbl 037 `"North Carolina"', add
label define bpl_lbl 038 `"North Dakota"', add
label define bpl_lbl 039 `"Ohio"', add
label define bpl_lbl 040 `"Oklahoma"', add
label define bpl_lbl 041 `"Oregon"', add
label define bpl_lbl 042 `"Pennsylvania"', add
label define bpl_lbl 044 `"Rhode Island"', add
label define bpl_lbl 045 `"South Carolina"', add
label define bpl_lbl 046 `"South Dakota"', add
label define bpl_lbl 047 `"Tennessee"', add
label define bpl_lbl 048 `"Texas"', add
label define bpl_lbl 049 `"Utah"', add
label define bpl_lbl 050 `"Vermont"', add
label define bpl_lbl 051 `"Virginia"', add
label define bpl_lbl 053 `"Washington"', add
label define bpl_lbl 054 `"West Virginia"', add
label define bpl_lbl 055 `"Wisconsin"', add
label define bpl_lbl 056 `"Wyoming"', add
label define bpl_lbl 090 `"Native American"', add
label define bpl_lbl 099 `"United States, ns"', add
label define bpl_lbl 100 `"American Samoa"', add
label define bpl_lbl 105 `"Guam"', add
label define bpl_lbl 110 `"Puerto Rico"', add
label define bpl_lbl 115 `"U.S. Virgin Islands"', add
label define bpl_lbl 120 `"Other US Possessions"', add
label define bpl_lbl 150 `"Canada"', add
label define bpl_lbl 155 `"St. Pierre and Miquelon"', add
label define bpl_lbl 160 `"Atlantic Islands"', add
label define bpl_lbl 199 `"North America, ns"', add
label define bpl_lbl 200 `"Mexico"', add
label define bpl_lbl 210 `"Central America"', add
label define bpl_lbl 250 `"Cuba"', add
label define bpl_lbl 260 `"West Indies"', add
label define bpl_lbl 299 `"Americas, n.s."', add
label define bpl_lbl 300 `"SOUTH AMERICA"', add
label define bpl_lbl 400 `"Denmark"', add
label define bpl_lbl 401 `"Finland"', add
label define bpl_lbl 402 `"Iceland"', add
label define bpl_lbl 403 `"Lapland, n.s."', add
label define bpl_lbl 404 `"Norway"', add
label define bpl_lbl 405 `"Sweden"', add
label define bpl_lbl 410 `"England"', add
label define bpl_lbl 411 `"Scotland"', add
label define bpl_lbl 412 `"Wales"', add
label define bpl_lbl 413 `"United Kingdom, ns"', add
label define bpl_lbl 414 `"Ireland"', add
label define bpl_lbl 419 `"Northern Europe, ns"', add
label define bpl_lbl 420 `"Belgium"', add
label define bpl_lbl 421 `"France"', add
label define bpl_lbl 422 `"Liechtenstein"', add
label define bpl_lbl 423 `"Luxembourg"', add
label define bpl_lbl 424 `"Monaco"', add
label define bpl_lbl 425 `"Netherlands"', add
label define bpl_lbl 426 `"Swizterland"', add
label define bpl_lbl 429 `"Western Europe, ns"', add
label define bpl_lbl 430 `"Albania"', add
label define bpl_lbl 431 `"Andorra"', add
label define bpl_lbl 432 `"Gibraltar"', add
label define bpl_lbl 433 `"Greece"', add
label define bpl_lbl 434 `"Italy"', add
label define bpl_lbl 435 `"Malta"', add
label define bpl_lbl 436 `"Portugal"', add
label define bpl_lbl 437 `"San Marino"', add
label define bpl_lbl 438 `"Spain"', add
label define bpl_lbl 439 `"Vatican City"', add
label define bpl_lbl 440 `"Southern Europe, ns"', add
label define bpl_lbl 450 `"Austria"', add
label define bpl_lbl 451 `"Bulgaria"', add
label define bpl_lbl 452 `"Czechoslovakia"', add
label define bpl_lbl 453 `"Germany"', add
label define bpl_lbl 454 `"Hungary"', add
label define bpl_lbl 455 `"Poland"', add
label define bpl_lbl 456 `"Romania"', add
label define bpl_lbl 457 `"Yugoslavia"', add
label define bpl_lbl 458 `"Central Europe, ns"', add
label define bpl_lbl 459 `"Eastern Europe, ns"', add
label define bpl_lbl 460 `"Estonia"', add
label define bpl_lbl 461 `"Latvia"', add
label define bpl_lbl 462 `"Lithuania"', add
label define bpl_lbl 463 `"Baltic States, ns"', add
label define bpl_lbl 465 `"Other USSR/Russia"', add
label define bpl_lbl 499 `"Europe, ns"', add
label define bpl_lbl 500 `"China"', add
label define bpl_lbl 501 `"Japan"', add
label define bpl_lbl 502 `"Korea"', add
label define bpl_lbl 509 `"East Asia, ns"', add
label define bpl_lbl 510 `"Brunei"', add
label define bpl_lbl 511 `"Cambodia (Kampuchea)"', add
label define bpl_lbl 512 `"Indonesia"', add
label define bpl_lbl 513 `"Laos"', add
label define bpl_lbl 514 `"Malaysia"', add
label define bpl_lbl 515 `"Philippines"', add
label define bpl_lbl 516 `"Singapore"', add
label define bpl_lbl 517 `"Thailand"', add
label define bpl_lbl 518 `"Vietnam"', add
label define bpl_lbl 519 `"Southeast Asia, ns"', add
label define bpl_lbl 520 `"Afghanistan"', add
label define bpl_lbl 521 `"India"', add
label define bpl_lbl 522 `"Iran"', add
label define bpl_lbl 523 `"Maldives"', add
label define bpl_lbl 524 `"Nepal"', add
label define bpl_lbl 530 `"Bahrain"', add
label define bpl_lbl 531 `"Cyprus"', add
label define bpl_lbl 532 `"Iraq"', add
label define bpl_lbl 533 `"Iraq/Saudi Arabia"', add
label define bpl_lbl 534 `"Israel/Palestine"', add
label define bpl_lbl 535 `"Jordan"', add
label define bpl_lbl 536 `"Kuwait"', add
label define bpl_lbl 537 `"Lebanon"', add
label define bpl_lbl 538 `"Oman"', add
label define bpl_lbl 539 `"Qatar"', add
label define bpl_lbl 540 `"Saudi Arabia"', add
label define bpl_lbl 541 `"Syria"', add
label define bpl_lbl 542 `"Turkey"', add
label define bpl_lbl 543 `"United Arab Emirates"', add
label define bpl_lbl 544 `"Yemen Arab Republic (North)"', add
label define bpl_lbl 545 `"Yemen, PDR (South)"', add
label define bpl_lbl 546 `"Persian Gulf States, n.s."', add
label define bpl_lbl 547 `"Middle East, ns"', add
label define bpl_lbl 548 `"Southwest Asia, nec/ns"', add
label define bpl_lbl 549 `"Asia Minor, ns"', add
label define bpl_lbl 550 `"South Asia, nec"', add
label define bpl_lbl 599 `"Asia, nec/ns"', add
label define bpl_lbl 600 `"AFRICA"', add
label define bpl_lbl 700 `"Australia and New Zealand"', add
label define bpl_lbl 710 `"Pacific Islands"', add
label define bpl_lbl 800 `"Antarctica, ns/nec"', add
label define bpl_lbl 900 `"Abroad (unknown) or at sea"', add
label define bpl_lbl 950 `"Other n.e.c."', add
label define bpl_lbl 999 `"Missing/blank"', add
label values bpl bpl_lbl

label define bpld_lbl 00100 `"Alabama"'
label define bpld_lbl 00200 `"Alaska"', add
label define bpld_lbl 00400 `"Arizona"', add
label define bpld_lbl 00500 `"Arkansas"', add
label define bpld_lbl 00600 `"California"', add
label define bpld_lbl 00800 `"Colorado"', add
label define bpld_lbl 00900 `"Connecticut"', add
label define bpld_lbl 01000 `"Delaware"', add
label define bpld_lbl 01100 `"District of Columbia"', add
label define bpld_lbl 01200 `"Florida"', add
label define bpld_lbl 01300 `"Georgia"', add
label define bpld_lbl 01500 `"Hawaii"', add
label define bpld_lbl 01600 `"Idaho"', add
label define bpld_lbl 01610 `"Idaho Territory"', add
label define bpld_lbl 01700 `"Illinois"', add
label define bpld_lbl 01800 `"Indiana"', add
label define bpld_lbl 01900 `"Iowa"', add
label define bpld_lbl 02000 `"Kansas"', add
label define bpld_lbl 02100 `"Kentucky"', add
label define bpld_lbl 02200 `"Louisiana"', add
label define bpld_lbl 02300 `"Maine"', add
label define bpld_lbl 02400 `"Maryland"', add
label define bpld_lbl 02500 `"Massachusetts"', add
label define bpld_lbl 02600 `"Michigan"', add
label define bpld_lbl 02700 `"Minnesota"', add
label define bpld_lbl 02800 `"Mississippi"', add
label define bpld_lbl 02900 `"Missouri"', add
label define bpld_lbl 03000 `"Montana"', add
label define bpld_lbl 03100 `"Nebraska"', add
label define bpld_lbl 03200 `"Nevada"', add
label define bpld_lbl 03300 `"New Hampshire"', add
label define bpld_lbl 03400 `"New Jersey"', add
label define bpld_lbl 03500 `"New Mexico"', add
label define bpld_lbl 03510 `"New Mexico Territory"', add
label define bpld_lbl 03600 `"New York"', add
label define bpld_lbl 03700 `"North Carolina"', add
label define bpld_lbl 03800 `"North Dakota"', add
label define bpld_lbl 03900 `"Ohio"', add
label define bpld_lbl 04000 `"Oklahoma"', add
label define bpld_lbl 04010 `"Indian Territory"', add
label define bpld_lbl 04100 `"Oregon"', add
label define bpld_lbl 04200 `"Pennsylvania"', add
label define bpld_lbl 04400 `"Rhode Island"', add
label define bpld_lbl 04500 `"South Carolina"', add
label define bpld_lbl 04600 `"South Dakota"', add
label define bpld_lbl 04610 `"Dakota Territory"', add
label define bpld_lbl 04700 `"Tennessee"', add
label define bpld_lbl 04800 `"Texas"', add
label define bpld_lbl 04900 `"Utah"', add
label define bpld_lbl 04910 `"Utah Territory"', add
label define bpld_lbl 05000 `"Vermont"', add
label define bpld_lbl 05100 `"Virginia"', add
label define bpld_lbl 05300 `"Washington"', add
label define bpld_lbl 05400 `"West Virginia"', add
label define bpld_lbl 05500 `"Wisconsin"', add
label define bpld_lbl 05600 `"Wyoming"', add
label define bpld_lbl 05610 `"Wyoming Territory"', add
label define bpld_lbl 09000 `"Native American"', add
label define bpld_lbl 09900 `"United States, ns"', add
label define bpld_lbl 10000 `"American Samoa"', add
label define bpld_lbl 10010 `"Samoa, 1940-1950"', add
label define bpld_lbl 10500 `"Guam"', add
label define bpld_lbl 11000 `"Puerto Rico"', add
label define bpld_lbl 11500 `"U.S. Virgin Islands"', add
label define bpld_lbl 11510 `"St. Croix"', add
label define bpld_lbl 11520 `"St. John"', add
label define bpld_lbl 11530 `"St. Thomas"', add
label define bpld_lbl 12000 `"Other US Possessions:"', add
label define bpld_lbl 12010 `"Johnston Atoll"', add
label define bpld_lbl 12020 `"Midway Islands"', add
label define bpld_lbl 12030 `"Wake Island"', add
label define bpld_lbl 12040 `"Other US Caribbean Islands"', add
label define bpld_lbl 12041 `"Navassa Island"', add
label define bpld_lbl 12050 `"Other US Pacific Islands"', add
label define bpld_lbl 12051 `"Baker Island"', add
label define bpld_lbl 12052 `"Howland Island"', add
label define bpld_lbl 12053 `"Jarvis Island"', add
label define bpld_lbl 12054 `"Kingman Reef"', add
label define bpld_lbl 12055 `"Palmyra Atoll"', add
label define bpld_lbl 12056 `"Canton and Enderbury Island"', add
label define bpld_lbl 12090 `"US outlying areas, ns"', add
label define bpld_lbl 12091 `"US possessions, ns"', add
label define bpld_lbl 12092 `"US territory, ns"', add
label define bpld_lbl 15000 `"Canada"', add
label define bpld_lbl 15010 `"English Canada"', add
label define bpld_lbl 15011 `"British Columbia"', add
label define bpld_lbl 15013 `"Alberta"', add
label define bpld_lbl 15015 `"Saskatchewan"', add
label define bpld_lbl 15017 `"Northwest"', add
label define bpld_lbl 15019 `"Ruperts Land"', add
label define bpld_lbl 15020 `"Manitoba"', add
label define bpld_lbl 15021 `"Red River"', add
label define bpld_lbl 15030 `"Ontario/Upper Canada"', add
label define bpld_lbl 15031 `"Upper Canada"', add
label define bpld_lbl 15032 `"Canada West"', add
label define bpld_lbl 15040 `"New Brunswick"', add
label define bpld_lbl 15050 `"Nova Scotia"', add
label define bpld_lbl 15051 `"Cape Breton"', add
label define bpld_lbl 15052 `"Halifax"', add
label define bpld_lbl 15060 `"Prince Edward Island"', add
label define bpld_lbl 15070 `"Newfoundland"', add
label define bpld_lbl 15080 `"French Canada"', add
label define bpld_lbl 15081 `"Quebec"', add
label define bpld_lbl 15082 `"Lower Canada"', add
label define bpld_lbl 15083 `"Canada East"', add
label define bpld_lbl 15500 `"St. Pierre and Miquelon"', add
label define bpld_lbl 16000 `"Atlantic Islands"', add
label define bpld_lbl 16010 `"Bermuda"', add
label define bpld_lbl 16020 `"Cape Verde"', add
label define bpld_lbl 16030 `"Falkland Islands"', add
label define bpld_lbl 16040 `"Greenland"', add
label define bpld_lbl 16050 `"St. Helena and Ascension"', add
label define bpld_lbl 16060 `"Canary Islands"', add
label define bpld_lbl 19900 `"North America, ns"', add
label define bpld_lbl 20000 `"Mexico"', add
label define bpld_lbl 21000 `"Central America"', add
label define bpld_lbl 21010 `"Belize/British Honduras"', add
label define bpld_lbl 21020 `"Costa Rica"', add
label define bpld_lbl 21030 `"El Salvador"', add
label define bpld_lbl 21040 `"Guatemala"', add
label define bpld_lbl 21050 `"Honduras"', add
label define bpld_lbl 21060 `"Nicaragua"', add
label define bpld_lbl 21070 `"Panama"', add
label define bpld_lbl 21071 `"Canal Zone"', add
label define bpld_lbl 21090 `"Central America, ns"', add
label define bpld_lbl 25000 `"Cuba"', add
label define bpld_lbl 26000 `"West Indies"', add
label define bpld_lbl 26010 `"Dominican Republic"', add
label define bpld_lbl 26020 `"Haiti"', add
label define bpld_lbl 26030 `"Jamaica"', add
label define bpld_lbl 26040 `"British West Indies"', add
label define bpld_lbl 26041 `"Anguilla"', add
label define bpld_lbl 26042 `"Antigua-Barbuda"', add
label define bpld_lbl 26043 `"Bahamas"', add
label define bpld_lbl 26044 `"Barbados"', add
label define bpld_lbl 26045 `"British Virgin Islands"', add
label define bpld_lbl 26046 `"Anegada"', add
label define bpld_lbl 26047 `"Cooper"', add
label define bpld_lbl 26048 `"Jost Van Dyke"', add
label define bpld_lbl 26049 `"Peter"', add
label define bpld_lbl 26050 `"Tortola"', add
label define bpld_lbl 26051 `"Virgin Gorda"', add
label define bpld_lbl 26052 `"Br. Virgin Islands, ns"', add
label define bpld_lbl 26053 `"Cayman Islands"', add
label define bpld_lbl 26054 `"Dominica"', add
label define bpld_lbl 26055 `"Grenada"', add
label define bpld_lbl 26056 `"Montserrat"', add
label define bpld_lbl 26057 `"St. Kitts-Nevis"', add
label define bpld_lbl 26058 `"St. Lucia"', add
label define bpld_lbl 26059 `"St. Vincent"', add
label define bpld_lbl 26060 `"Trinidad and Tobago"', add
label define bpld_lbl 26061 `"Turks and Caicos"', add
label define bpld_lbl 26069 `"Br. Virgin Islands, ns"', add
label define bpld_lbl 26070 `"Other West Indies"', add
label define bpld_lbl 26071 `"Aruba"', add
label define bpld_lbl 26072 `"Netherlands Antilles"', add
label define bpld_lbl 26073 `"Bonaire"', add
label define bpld_lbl 26074 `"Curacao"', add
label define bpld_lbl 26075 `"Dutch St. Maarten"', add
label define bpld_lbl 26076 `"Saba"', add
label define bpld_lbl 26077 `"St. Eustatius"', add
label define bpld_lbl 26079 `"Dutch Caribbean, ns"', add
label define bpld_lbl 26080 `"French St. Maarten"', add
label define bpld_lbl 26081 `"Guadeloupe"', add
label define bpld_lbl 26082 `"Martinique"', add
label define bpld_lbl 26083 `"St. Barthelemy"', add
label define bpld_lbl 26089 `"French Caribbean, ns"', add
label define bpld_lbl 26090 `"Antilles, ns"', add
label define bpld_lbl 26091 `"Caribbean, ns"', add
label define bpld_lbl 26092 `"Latin America, ns"', add
label define bpld_lbl 26093 `"Leeward Islands, ns"', add
label define bpld_lbl 26094 `"West Indies, ns"', add
label define bpld_lbl 26095 `"Windward Islands, ns"', add
label define bpld_lbl 29900 `"Americas, ns"', add
label define bpld_lbl 30000 `"South America"', add
label define bpld_lbl 30005 `"Argentina"', add
label define bpld_lbl 30010 `"Bolivia"', add
label define bpld_lbl 30015 `"Brazil"', add
label define bpld_lbl 30020 `"Chile"', add
label define bpld_lbl 30025 `"Colombia"', add
label define bpld_lbl 30030 `"Ecuador"', add
label define bpld_lbl 30035 `"French Guiana"', add
label define bpld_lbl 30040 `"Guyana/British Guiana"', add
label define bpld_lbl 30045 `"Paraguay"', add
label define bpld_lbl 30050 `"Peru"', add
label define bpld_lbl 30055 `"Suriname"', add
label define bpld_lbl 30060 `"Uruguay"', add
label define bpld_lbl 30065 `"Venezuela"', add
label define bpld_lbl 30090 `"South America, ns"', add
label define bpld_lbl 30091 `"South and Central America, n.s."', add
label define bpld_lbl 40000 `"Denmark"', add
label define bpld_lbl 40010 `"Faeroe Islands"', add
label define bpld_lbl 40100 `"Finland"', add
label define bpld_lbl 40200 `"Iceland"', add
label define bpld_lbl 40300 `"Lapland, ns"', add
label define bpld_lbl 40400 `"Norway"', add
label define bpld_lbl 40410 `"Svalbard and Jan Meyen"', add
label define bpld_lbl 40411 `"Svalbard"', add
label define bpld_lbl 40412 `"Jan Meyen"', add
label define bpld_lbl 40500 `"Sweden"', add
label define bpld_lbl 41000 `"England"', add
label define bpld_lbl 41010 `"Channel Islands"', add
label define bpld_lbl 41011 `"Guernsey"', add
label define bpld_lbl 41012 `"Jersey"', add
label define bpld_lbl 41020 `"Isle of Man"', add
label define bpld_lbl 41100 `"Scotland"', add
label define bpld_lbl 41200 `"Wales"', add
label define bpld_lbl 41300 `"United Kingdom, ns"', add
label define bpld_lbl 41400 `"Ireland"', add
label define bpld_lbl 41410 `"Northern Ireland"', add
label define bpld_lbl 41900 `"Northern Europe, ns"', add
label define bpld_lbl 42000 `"Belgium"', add
label define bpld_lbl 42100 `"France"', add
label define bpld_lbl 42110 `"Alsace-Lorraine"', add
label define bpld_lbl 42111 `"Alsace"', add
label define bpld_lbl 42112 `"Lorraine"', add
label define bpld_lbl 42200 `"Liechtenstein"', add
label define bpld_lbl 42300 `"Luxembourg"', add
label define bpld_lbl 42400 `"Monaco"', add
label define bpld_lbl 42500 `"Netherlands"', add
label define bpld_lbl 42600 `"Switzerland"', add
label define bpld_lbl 42900 `"Western Europe, ns"', add
label define bpld_lbl 43000 `"Albania"', add
label define bpld_lbl 43100 `"Andorra"', add
label define bpld_lbl 43200 `"Gibraltar"', add
label define bpld_lbl 43300 `"Greece"', add
label define bpld_lbl 43310 `"Dodecanese Islands"', add
label define bpld_lbl 43320 `"Turkey Greece"', add
label define bpld_lbl 43330 `"Macedonia"', add
label define bpld_lbl 43400 `"Italy"', add
label define bpld_lbl 43500 `"Malta"', add
label define bpld_lbl 43600 `"Portugal"', add
label define bpld_lbl 43610 `"Azores"', add
label define bpld_lbl 43620 `"Madeira Islands"', add
label define bpld_lbl 43630 `"Cape Verde Islands"', add
label define bpld_lbl 43640 `"St. Miguel"', add
label define bpld_lbl 43700 `"San Marino"', add
label define bpld_lbl 43800 `"Spain"', add
label define bpld_lbl 43900 `"Vatican City"', add
label define bpld_lbl 44000 `"Southern Europe, ns"', add
label define bpld_lbl 45000 `"Austria"', add
label define bpld_lbl 45010 `"Austria-Hungary"', add
label define bpld_lbl 45020 `"Austria-Graz"', add
label define bpld_lbl 45030 `"Austria-Linz"', add
label define bpld_lbl 45040 `"Austria-Salzburg"', add
label define bpld_lbl 45050 `"Austria-Tyrol"', add
label define bpld_lbl 45060 `"Austria-Vienna"', add
label define bpld_lbl 45070 `"Austria-Kaernsten"', add
label define bpld_lbl 45080 `"Austria-Neustadt"', add
label define bpld_lbl 45100 `"Bulgaria"', add
label define bpld_lbl 45200 `"Czechoslovakia"', add
label define bpld_lbl 45210 `"Bohemia"', add
label define bpld_lbl 45211 `"Bohemia-Moravia"', add
label define bpld_lbl 45212 `"Slovakia"', add
label define bpld_lbl 45213 `"Czech Republic"', add
label define bpld_lbl 45300 `"Germany"', add
label define bpld_lbl 45301 `"Berlin"', add
label define bpld_lbl 45302 `"West Berlin"', add
label define bpld_lbl 45303 `"East Berlin"', add
label define bpld_lbl 45310 `"West Germany"', add
label define bpld_lbl 45311 `"Baden"', add
label define bpld_lbl 45312 `"Bavaria"', add
label define bpld_lbl 45313 `"Braunschweig"', add
label define bpld_lbl 45314 `"Bremen"', add
label define bpld_lbl 45315 `"Hamburg"', add
label define bpld_lbl 45316 `"Hanover"', add
label define bpld_lbl 45317 `"Hessen"', add
label define bpld_lbl 45318 `"Hesse-Nassau"', add
label define bpld_lbl 45319 `"Holstein"', add
label define bpld_lbl 45320 `"Lippe"', add
label define bpld_lbl 45321 `"Lubeck"', add
label define bpld_lbl 45322 `"Oldenburg"', add
label define bpld_lbl 45323 `"Rheinland"', add
label define bpld_lbl 45324 `"Schleswig"', add
label define bpld_lbl 45325 `"Schleswig-Holstein"', add
label define bpld_lbl 45326 `"Schwarzburg"', add
label define bpld_lbl 45327 `"Westphalia"', add
label define bpld_lbl 45328 `"Wurttemberg"', add
label define bpld_lbl 45329 `"Waldeck"', add
label define bpld_lbl 45330 `"Wittenberg"', add
label define bpld_lbl 45331 `"Frankfurt"', add
label define bpld_lbl 45332 `"Saarland"', add
label define bpld_lbl 45333 `"Nordrhein-Westfalen"', add
label define bpld_lbl 45340 `"East Germany"', add
label define bpld_lbl 45341 `"Anhalt"', add
label define bpld_lbl 45342 `"Brandenburg"', add
label define bpld_lbl 45344 `"Mecklenburg"', add
label define bpld_lbl 45345 `"Sachsen-Altenburg"', add
label define bpld_lbl 45346 `"Sachsen-Coburg"', add
label define bpld_lbl 45347 `"Sachsen-Gotha"', add
label define bpld_lbl 45348 `"Sachsen-Meiningen"', add
label define bpld_lbl 45349 `"Sachsen-Weimar-Eisenach"', add
label define bpld_lbl 45350 `"Probable Saxony"', add
label define bpld_lbl 45351 `"Schwerin"', add
label define bpld_lbl 45352 `"Strelitz"', add
label define bpld_lbl 45353 `"Probably Thuringian States"', add
label define bpld_lbl 45360 `"Prussia, nec"', add
label define bpld_lbl 45361 `"Hohenzollern"', add
label define bpld_lbl 45362 `"Niedersachsen"', add
label define bpld_lbl 45400 `"Hungary"', add
label define bpld_lbl 45500 `"Poland"', add
label define bpld_lbl 45510 `"Austrian Poland"', add
label define bpld_lbl 45511 `"Galicia"', add
label define bpld_lbl 45520 `"German Poland"', add
label define bpld_lbl 45521 `"East Prussia"', add
label define bpld_lbl 45522 `"Pomerania"', add
label define bpld_lbl 45523 `"Posen"', add
label define bpld_lbl 45524 `"Prussian Poland"', add
label define bpld_lbl 45525 `"Silesia"', add
label define bpld_lbl 45526 `"West Prussia"', add
label define bpld_lbl 45530 `"Russian Poland"', add
label define bpld_lbl 45600 `"Romania"', add
label define bpld_lbl 45610 `"Transylvania"', add
label define bpld_lbl 45700 `"Yugoslavia"', add
label define bpld_lbl 45710 `"Croatia"', add
label define bpld_lbl 45720 `"Montenegro"', add
label define bpld_lbl 45730 `"Serbia"', add
label define bpld_lbl 45740 `"Bosnia"', add
label define bpld_lbl 45750 `"Dalmatia"', add
label define bpld_lbl 45760 `"Slovonia"', add
label define bpld_lbl 45770 `"Carniola"', add
label define bpld_lbl 45780 `"Slovenia"', add
label define bpld_lbl 45790 `"Kosovo"', add
label define bpld_lbl 45800 `"Central Europe, ns"', add
label define bpld_lbl 45900 `"Eastern Europe, ns"', add
label define bpld_lbl 46000 `"Estonia"', add
label define bpld_lbl 46100 `"Latvia"', add
label define bpld_lbl 46200 `"Lithuania"', add
label define bpld_lbl 46300 `"Baltic States, ns"', add
label define bpld_lbl 46500 `"Other USSR/Russia"', add
label define bpld_lbl 46510 `"Byelorussia"', add
label define bpld_lbl 46520 `"Moldavia"', add
label define bpld_lbl 46521 `"Bessarabia"', add
label define bpld_lbl 46530 `"Ukraine"', add
label define bpld_lbl 46540 `"Armenia"', add
label define bpld_lbl 46541 `"Azerbaijan"', add
label define bpld_lbl 46542 `"Republic of Georgia"', add
label define bpld_lbl 46543 `"Kazakhstan"', add
label define bpld_lbl 46544 `"Kirghizia"', add
label define bpld_lbl 46545 `"Tadzhik"', add
label define bpld_lbl 46546 `"Turkmenistan"', add
label define bpld_lbl 46547 `"Uzbekistan"', add
label define bpld_lbl 46548 `"Siberia"', add
label define bpld_lbl 46590 `"USSR, ns"', add
label define bpld_lbl 49900 `"Europe, ns."', add
label define bpld_lbl 50000 `"China"', add
label define bpld_lbl 50010 `"Hong Kong"', add
label define bpld_lbl 50020 `"Macau"', add
label define bpld_lbl 50030 `"Mongolia"', add
label define bpld_lbl 50040 `"Taiwan"', add
label define bpld_lbl 50100 `"Japan"', add
label define bpld_lbl 50200 `"Korea"', add
label define bpld_lbl 50210 `"North Korea"', add
label define bpld_lbl 50220 `"South Korea"', add
label define bpld_lbl 50900 `"East Asia, ns"', add
label define bpld_lbl 51000 `"Brunei"', add
label define bpld_lbl 51100 `"Cambodia (Kampuchea)"', add
label define bpld_lbl 51200 `"Indonesia"', add
label define bpld_lbl 51210 `"East Indies"', add
label define bpld_lbl 51220 `"East Timor"', add
label define bpld_lbl 51300 `"Laos"', add
label define bpld_lbl 51400 `"Malaysia"', add
label define bpld_lbl 51500 `"Philippines"', add
label define bpld_lbl 51600 `"Singapore"', add
label define bpld_lbl 51700 `"Thailand"', add
label define bpld_lbl 51800 `"Vietnam"', add
label define bpld_lbl 51900 `"Southeast Asia, ns"', add
label define bpld_lbl 51910 `"Indochina, ns"', add
label define bpld_lbl 52000 `"Afghanistan"', add
label define bpld_lbl 52100 `"India"', add
label define bpld_lbl 52110 `"Bangladesh"', add
label define bpld_lbl 52120 `"Bhutan"', add
label define bpld_lbl 52130 `"Burma (Myanmar)"', add
label define bpld_lbl 52140 `"Pakistan"', add
label define bpld_lbl 52150 `"Sri Lanka (Ceylon)"', add
label define bpld_lbl 52200 `"Iran"', add
label define bpld_lbl 52300 `"Maldives"', add
label define bpld_lbl 52400 `"Nepal"', add
label define bpld_lbl 53000 `"Bahrain"', add
label define bpld_lbl 53100 `"Cyprus"', add
label define bpld_lbl 53200 `"Iraq"', add
label define bpld_lbl 53210 `"Mesopotamia"', add
label define bpld_lbl 53300 `"Iraq/Saudi Arabia"', add
label define bpld_lbl 53400 `"Israel/Palestine"', add
label define bpld_lbl 53410 `"Gaza Strip"', add
label define bpld_lbl 53420 `"Palestine"', add
label define bpld_lbl 53430 `"West Bank"', add
label define bpld_lbl 53440 `"Israel"', add
label define bpld_lbl 53500 `"Jordan"', add
label define bpld_lbl 53600 `"Kuwait"', add
label define bpld_lbl 53700 `"Lebanon"', add
label define bpld_lbl 53800 `"Oman"', add
label define bpld_lbl 53900 `"Qatar"', add
label define bpld_lbl 54000 `"Saudi Arabia"', add
label define bpld_lbl 54100 `"Syria"', add
label define bpld_lbl 54200 `"Turkey"', add
label define bpld_lbl 54210 `"European Turkey"', add
label define bpld_lbl 54220 `"Asian Turkey"', add
label define bpld_lbl 54300 `"United Arab Emirates"', add
label define bpld_lbl 54400 `"Yemen Arab Republic (North)"', add
label define bpld_lbl 54500 `"Yemen, PDR (South)"', add
label define bpld_lbl 54600 `"Persian Gulf States, ns"', add
label define bpld_lbl 54700 `"Middle East, ns"', add
label define bpld_lbl 54800 `"Southwest Asia, nec/ns"', add
label define bpld_lbl 54900 `"Asia Minor, ns"', add
label define bpld_lbl 55000 `"South Asia, nec"', add
label define bpld_lbl 59900 `"Asia, nec/ns"', add
label define bpld_lbl 60000 `"Africa"', add
label define bpld_lbl 60010 `"Northern Africa"', add
label define bpld_lbl 60011 `"Algeria"', add
label define bpld_lbl 60012 `"Egypt/United Arab Rep."', add
label define bpld_lbl 60013 `"Libya"', add
label define bpld_lbl 60014 `"Morocco"', add
label define bpld_lbl 60015 `"Sudan"', add
label define bpld_lbl 60016 `"Tunisia"', add
label define bpld_lbl 60017 `"Western Sahara"', add
label define bpld_lbl 60019 `"North Africa, ns"', add
label define bpld_lbl 60020 `"Benin"', add
label define bpld_lbl 60021 `"Burkina Faso"', add
label define bpld_lbl 60022 `"Gambia"', add
label define bpld_lbl 60023 `"Ghana"', add
label define bpld_lbl 60024 `"Guinea"', add
label define bpld_lbl 60025 `"Guinea-Bissau"', add
label define bpld_lbl 60026 `"Ivory Coast"', add
label define bpld_lbl 60027 `"Liberia"', add
label define bpld_lbl 60028 `"Mali"', add
label define bpld_lbl 60029 `"Mauritania"', add
label define bpld_lbl 60030 `"Niger"', add
label define bpld_lbl 60031 `"Nigeria"', add
label define bpld_lbl 60032 `"Senegal"', add
label define bpld_lbl 60033 `"Sierra Leone"', add
label define bpld_lbl 60034 `"Togo"', add
label define bpld_lbl 60038 `"Western Africa, ns"', add
label define bpld_lbl 60039 `"French West Africa, ns"', add
label define bpld_lbl 60040 `"British Indian Ocean Territory"', add
label define bpld_lbl 60041 `"Burundi"', add
label define bpld_lbl 60042 `"Comoros"', add
label define bpld_lbl 60043 `"Djibouti"', add
label define bpld_lbl 60044 `"Ethiopia"', add
label define bpld_lbl 60045 `"Kenya"', add
label define bpld_lbl 60046 `"Madagascar"', add
label define bpld_lbl 60047 `"Malawi"', add
label define bpld_lbl 60048 `"Mauritius"', add
label define bpld_lbl 60049 `"Mozambique"', add
label define bpld_lbl 60050 `"Reunion"', add
label define bpld_lbl 60051 `"Rwanda"', add
label define bpld_lbl 60052 `"Seychelles"', add
label define bpld_lbl 60053 `"Somalia"', add
label define bpld_lbl 60054 `"Tanzania"', add
label define bpld_lbl 60055 `"Uganda"', add
label define bpld_lbl 60056 `"Zambia"', add
label define bpld_lbl 60057 `"Zimbabwe"', add
label define bpld_lbl 60058 `"Bassas de India"', add
label define bpld_lbl 60059 `"Europa"', add
label define bpld_lbl 60060 `"Gloriosos"', add
label define bpld_lbl 60061 `"Juan de Nova"', add
label define bpld_lbl 60062 `"Mayotte"', add
label define bpld_lbl 60063 `"Tromelin"', add
label define bpld_lbl 60064 `"Eastern Africa, nec/ns"', add
label define bpld_lbl 60065 `"Eritrea"', add
label define bpld_lbl 60070 `"Central Africa"', add
label define bpld_lbl 60071 `"Angola"', add
label define bpld_lbl 60072 `"Cameroon"', add
label define bpld_lbl 60073 `"Central African Republic"', add
label define bpld_lbl 60074 `"Chad"', add
label define bpld_lbl 60075 `"Congo"', add
label define bpld_lbl 60076 `"Equatorial Guinea"', add
label define bpld_lbl 60077 `"Gabon"', add
label define bpld_lbl 60078 `"Sao Tome and Principe"', add
label define bpld_lbl 60079 `"Zaire"', add
label define bpld_lbl 60080 `"Central Africa, ns"', add
label define bpld_lbl 60081 `"Equatorial Africa, ns"', add
label define bpld_lbl 60082 `"French Equatorial Africa, ns"', add
label define bpld_lbl 60090 `"Southern Africa"', add
label define bpld_lbl 60091 `"Botswana"', add
label define bpld_lbl 60092 `"Lesotho"', add
label define bpld_lbl 60093 `"Namibia"', add
label define bpld_lbl 60094 `"South Africa (Union of)"', add
label define bpld_lbl 60095 `"Swaziland"', add
label define bpld_lbl 60096 `"Southern Africa, ns"', add
label define bpld_lbl 60099 `"Africa, ns/nec"', add
label define bpld_lbl 70000 `"Australia and New Zealand"', add
label define bpld_lbl 70010 `"Australia"', add
label define bpld_lbl 70011 `"Ashmore and Cartier Islands"', add
label define bpld_lbl 70012 `"Coral Sea Islands Territory"', add
label define bpld_lbl 70013 `"Christmas Island"', add
label define bpld_lbl 70014 `"Cocos Islands"', add
label define bpld_lbl 70020 `"New Zealand"', add
label define bpld_lbl 71000 `"Pacific Islands"', add
label define bpld_lbl 71010 `"New Caledonia"', add
label define bpld_lbl 71012 `"Papua New Guinea"', add
label define bpld_lbl 71013 `"Solomon Islands"', add
label define bpld_lbl 71014 `"Vanuatu (New Hebrides)"', add
label define bpld_lbl 71015 `"Fiji"', add
label define bpld_lbl 71016 `"Melanesia, ns"', add
label define bpld_lbl 71017 `"Norfolk Islands"', add
label define bpld_lbl 71018 `"Niue"', add
label define bpld_lbl 71020 `"Cook Islands"', add
label define bpld_lbl 71022 `"French Polynesia"', add
label define bpld_lbl 71023 `"Tonga"', add
label define bpld_lbl 71024 `"Wallis and Futuna Islands"', add
label define bpld_lbl 71025 `"Western Samoa"', add
label define bpld_lbl 71026 `"Pitcairn Island"', add
label define bpld_lbl 71027 `"Tokelau"', add
label define bpld_lbl 71028 `"Tuvalu"', add
label define bpld_lbl 71029 `"Polynesia, ns"', add
label define bpld_lbl 71032 `"Kiribati"', add
label define bpld_lbl 71033 `"Canton and Enderbury"', add
label define bpld_lbl 71034 `"Nauru"', add
label define bpld_lbl 71039 `"Micronesia, ns"', add
label define bpld_lbl 71040 `"US Pacific Trust Territories"', add
label define bpld_lbl 71041 `"Marshall Islands"', add
label define bpld_lbl 71042 `"Micronesia"', add
label define bpld_lbl 71043 `"Kosrae"', add
label define bpld_lbl 71044 `"Pohnpei"', add
label define bpld_lbl 71045 `"Truk"', add
label define bpld_lbl 71046 `"Yap"', add
label define bpld_lbl 71047 `"Northern Mariana Islands"', add
label define bpld_lbl 71048 `"Palau"', add
label define bpld_lbl 71049 `"Pacific Trust Terr, ns"', add
label define bpld_lbl 71050 `"Clipperton Island"', add
label define bpld_lbl 71090 `"Oceania, ns/nec"', add
label define bpld_lbl 80000 `"Antarctica, ns/nec"', add
label define bpld_lbl 80010 `"Bouvet Islands"', add
label define bpld_lbl 80020 `"British Antarctic Terr."', add
label define bpld_lbl 80030 `"Dronning Maud Land"', add
label define bpld_lbl 80040 `"French Southern and Antarctic Lands"', add
label define bpld_lbl 80050 `"Heard and McDonald Islands"', add
label define bpld_lbl 90000 `"Abroad (unknown) or at sea"', add
label define bpld_lbl 90010 `"Abroad, ns"', add
label define bpld_lbl 90011 `"Abroad (US citizen)"', add
label define bpld_lbl 90020 `"At sea"', add
label define bpld_lbl 90021 `"At sea (US citizen)"', add
label define bpld_lbl 90022 `"At sea or abroad (U.S. citizen)"', add
label define bpld_lbl 95000 `"Other n.e.c."', add
label define bpld_lbl 99900 `"Missing/blank"', add
label values bpld bpld_lbl

label define higrade_lbl 00 `"N/A  (or None, 1980)"'
label define higrade_lbl 01 `"None"', add
label define higrade_lbl 02 `"Nursery school"', add
label define higrade_lbl 03 `"Kindergarten"', add
label define higrade_lbl 04 `"1st grade"', add
label define higrade_lbl 05 `"2nd grade"', add
label define higrade_lbl 06 `"3rd grade"', add
label define higrade_lbl 07 `"4th grade"', add
label define higrade_lbl 08 `"5th grade"', add
label define higrade_lbl 09 `"6th grade"', add
label define higrade_lbl 10 `"7th grade"', add
label define higrade_lbl 11 `"8th grade"', add
label define higrade_lbl 12 `"9th grade"', add
label define higrade_lbl 13 `"10th grade"', add
label define higrade_lbl 14 `"11th grade"', add
label define higrade_lbl 15 `"12th grade"', add
label define higrade_lbl 16 `"1st year"', add
label define higrade_lbl 17 `"2nd year"', add
label define higrade_lbl 18 `"3rd year"', add
label define higrade_lbl 19 `"4th year"', add
label define higrade_lbl 20 `"5th year or more (40-50)"', add
label define higrade_lbl 21 `"6th year or more (60,70)"', add
label define higrade_lbl 22 `"7th year"', add
label define higrade_lbl 23 `"8th year or more"', add
label values higrade higrade_lbl

label define higraded_lbl 000 `"N/A"'
label define higraded_lbl 010 `"None"', add
label define higraded_lbl 011 `"Did not finish nurs sch"', add
label define higraded_lbl 012 `"Attending nurs sch"', add
label define higraded_lbl 020 `"Nursery school"', add
label define higraded_lbl 021 `"Did not finish kindergart"', add
label define higraded_lbl 022 `"Attending kindergarten"', add
label define higraded_lbl 030 `"Kindergarten"', add
label define higraded_lbl 031 `"Did not finish 1st grade"', add
label define higraded_lbl 032 `"Attending 1st grade"', add
label define higraded_lbl 040 `"1st grade"', add
label define higraded_lbl 041 `"Did not finish 2nd grade"', add
label define higraded_lbl 042 `"Attending 2nd grade"', add
label define higraded_lbl 050 `"2nd grade"', add
label define higraded_lbl 051 `"Did not finish 3rd grade"', add
label define higraded_lbl 052 `"Attending 3rd grade"', add
label define higraded_lbl 060 `"3rd grade"', add
label define higraded_lbl 061 `"Did not finish 4th grade"', add
label define higraded_lbl 062 `"Attending 4th grade"', add
label define higraded_lbl 070 `"4th grade"', add
label define higraded_lbl 071 `"Did not finish 5th grade"', add
label define higraded_lbl 072 `"Attending 5th grade"', add
label define higraded_lbl 080 `"5th grade"', add
label define higraded_lbl 081 `"Did not finish 6th grade"', add
label define higraded_lbl 082 `"Attending 6th grade"', add
label define higraded_lbl 090 `"6th grade"', add
label define higraded_lbl 091 `"Did not finish 7th grade"', add
label define higraded_lbl 092 `"Attending 7th grade"', add
label define higraded_lbl 100 `"7th grade"', add
label define higraded_lbl 101 `"Did not finish 8th grade"', add
label define higraded_lbl 102 `"Attending 8th grade"', add
label define higraded_lbl 110 `"8th grade"', add
label define higraded_lbl 111 `"Did not finish 9th grade"', add
label define higraded_lbl 112 `"Attending 9th grade"', add
label define higraded_lbl 120 `"9th grade"', add
label define higraded_lbl 121 `"Did not finish 10th grade"', add
label define higraded_lbl 122 `"Attending 10th grade"', add
label define higraded_lbl 130 `"10th grade"', add
label define higraded_lbl 131 `"Did not finish 11th grade"', add
label define higraded_lbl 132 `"Attending 11th grade"', add
label define higraded_lbl 140 `"11th grade"', add
label define higraded_lbl 141 `"Did not finish 12th grade"', add
label define higraded_lbl 142 `"Attending 12th grade"', add
label define higraded_lbl 150 `"12th grade"', add
label define higraded_lbl 151 `"Did not finish 1st year college"', add
label define higraded_lbl 152 `"Attending 1st yesr college"', add
label define higraded_lbl 160 `"1st year of college"', add
label define higraded_lbl 161 `"Did not finish 2nd year of college"', add
label define higraded_lbl 162 `"Attending 2nd year of college"', add
label define higraded_lbl 170 `"2nd year of college"', add
label define higraded_lbl 171 `"Did not finish 3rd year of college"', add
label define higraded_lbl 172 `"Attending 3rd year of college"', add
label define higraded_lbl 180 `"3rd year of college"', add
label define higraded_lbl 181 `"Did not finish 4th year of college"', add
label define higraded_lbl 182 `"Attending 4th year of college"', add
label define higraded_lbl 190 `"4th year of college"', add
label define higraded_lbl 191 `"Did not finish 5th year of college"', add
label define higraded_lbl 192 `"Attending 5th year of college"', add
label define higraded_lbl 200 `"5th year or more of college (1940, 50)"', add
label define higraded_lbl 201 `"Did not finish 6th year of college"', add
label define higraded_lbl 202 `"Attending 6th year of college"', add
label define higraded_lbl 210 `"6th year or more of college (1960,70)"', add
label define higraded_lbl 211 `"Did not finish 7th year of college"', add
label define higraded_lbl 212 `"Attending 7th year of college"', add
label define higraded_lbl 220 `"7th year of college"', add
label define higraded_lbl 221 `"Did not finish 8th year of college"', add
label define higraded_lbl 222 `"Attending 8th year of college"', add
label define higraded_lbl 230 `"8th year or more of college"', add
label define higraded_lbl 999 `"Missing"', add
label values higraded higraded_lbl

label define empstat_lbl 0 `"N/A"'
label define empstat_lbl 1 `"Employed"', add
label define empstat_lbl 2 `"Unemployed"', add
label define empstat_lbl 3 `"Not in labor force"', add
label values empstat empstat_lbl

label define empstatd_lbl 00 `"N/A"'
label define empstatd_lbl 10 `"At work"', add
label define empstatd_lbl 11 `"At work, public emerg"', add
label define empstatd_lbl 12 `"Has job, not working"', add
label define empstatd_lbl 13 `"Armed forces"', add
label define empstatd_lbl 14 `"Armed forces--at work"', add
label define empstatd_lbl 15 `"Armed forces--not at work but with job"', add
label define empstatd_lbl 20 `"Unemployed"', add
label define empstatd_lbl 21 `"Unemp, exper worker"', add
label define empstatd_lbl 22 `"Unemp, new worker"', add
label define empstatd_lbl 30 `"Not in Labor Force"', add
label define empstatd_lbl 31 `"NILF, housework"', add
label define empstatd_lbl 32 `"NILF, unable to work"', add
label define empstatd_lbl 33 `"NILF, school"', add
label define empstatd_lbl 34 `"NILF, other"', add
label values empstatd empstatd_lbl

label define labforce_lbl 0 `"N/A"'
label define labforce_lbl 1 `"No, not in the labor force"', add
label define labforce_lbl 2 `"Yes, in the labor force"', add
label values labforce labforce_lbl

label define occ1950_lbl 000 `"Accountants and auditors"'
label define occ1950_lbl 001 `"Actors and actresses"', add
label define occ1950_lbl 002 `"Airplane pilots and navigators"', add
label define occ1950_lbl 003 `"Architects"', add
label define occ1950_lbl 004 `"Artists and art teachers"', add
label define occ1950_lbl 005 `"Athletes"', add
label define occ1950_lbl 006 `"Authors"', add
label define occ1950_lbl 007 `"Chemists"', add
label define occ1950_lbl 008 `"Chiropractors"', add
label define occ1950_lbl 009 `"Clergymen"', add
label define occ1950_lbl 010 `"College presidents and deans"', add
label define occ1950_lbl 012 `"Agricultural sciences-Professors and instructors"', add
label define occ1950_lbl 013 `"Biological sciences-Professors and instructors"', add
label define occ1950_lbl 014 `"Chemistry-Professors and instructors"', add
label define occ1950_lbl 015 `"Economics-Professors and instructors"', add
label define occ1950_lbl 016 `"Engineering-Professors and instructors"', add
label define occ1950_lbl 017 `"Geology and geophysics-Professors and instructors"', add
label define occ1950_lbl 018 `"Mathematics-Professors and instructors"', add
label define occ1950_lbl 019 `"Medical Sciences-Professors and instructors"', add
label define occ1950_lbl 023 `"Physics-Professors and instructors"', add
label define occ1950_lbl 024 `"Psychology-Professors and instructors"', add
label define occ1950_lbl 025 `"Statistics-Professors and instructors"', add
label define occ1950_lbl 026 `"Natural science (nec)-Professors and instructors"', add
label define occ1950_lbl 027 `"Social sciences (nec)-Professors and instructors"', add
label define occ1950_lbl 028 `"Non-scientific subjects-Professors and instructors"', add
label define occ1950_lbl 029 `"Subject not specified-Professors and instructors"', add
label define occ1950_lbl 031 `"Dancers and dancing teachers"', add
label define occ1950_lbl 032 `"Dentists"', add
label define occ1950_lbl 033 `"Designers"', add
label define occ1950_lbl 034 `"Dietitians and nutritionists"', add
label define occ1950_lbl 035 `"Draftsmen"', add
label define occ1950_lbl 036 `"Editors and reporters"', add
label define occ1950_lbl 041 `"Aeronautical-Engineers"', add
label define occ1950_lbl 042 `"Chemical-Engineers"', add
label define occ1950_lbl 043 `"Civil-Engineers"', add
label define occ1950_lbl 044 `"Electrical-Engineers"', add
label define occ1950_lbl 045 `"Industrial-Engineers"', add
label define occ1950_lbl 046 `"Mechanical-Engineers"', add
label define occ1950_lbl 047 `"Metallurgical, metallurgists-Engineers"', add
label define occ1950_lbl 048 `"Mining-Engineers"', add
label define occ1950_lbl 049 `"Engineers (nec)"', add
label define occ1950_lbl 051 `"Entertainers (nec)"', add
label define occ1950_lbl 052 `"Farm and home management advisors"', add
label define occ1950_lbl 053 `"Foresters and conservationists"', add
label define occ1950_lbl 054 `"Funeral directors and embalmers"', add
label define occ1950_lbl 055 `"Lawyers and judges"', add
label define occ1950_lbl 056 `"Librarians"', add
label define occ1950_lbl 057 `"Musicians and music teachers"', add
label define occ1950_lbl 058 `"Nurses, professional"', add
label define occ1950_lbl 059 `"Nurses, student professional"', add
label define occ1950_lbl 061 `"Agricultural scientists"', add
label define occ1950_lbl 062 `"Biological scientists"', add
label define occ1950_lbl 063 `"Geologists and geophysicists"', add
label define occ1950_lbl 067 `"Mathematicians"', add
label define occ1950_lbl 068 `"Physicists"', add
label define occ1950_lbl 069 `"Misc. natural scientists"', add
label define occ1950_lbl 070 `"Optometrists"', add
label define occ1950_lbl 071 `"Osteopaths"', add
label define occ1950_lbl 072 `"Personnel and labor relations workers"', add
label define occ1950_lbl 073 `"Pharmacists"', add
label define occ1950_lbl 074 `"Photographers"', add
label define occ1950_lbl 075 `"Physicians and surgeons"', add
label define occ1950_lbl 076 `"Radio operators"', add
label define occ1950_lbl 077 `"Recreation and group workers"', add
label define occ1950_lbl 078 `"Religious workers"', add
label define occ1950_lbl 079 `"Social and welfare workers, except group"', add
label define occ1950_lbl 081 `"Economists"', add
label define occ1950_lbl 082 `"Psychologists"', add
label define occ1950_lbl 083 `"Statisticians and actuaries"', add
label define occ1950_lbl 084 `"Misc social scientists"', add
label define occ1950_lbl 091 `"Sports instructors and officials"', add
label define occ1950_lbl 092 `"Surveyors"', add
label define occ1950_lbl 093 `"Teachers (n.e.c.)"', add
label define occ1950_lbl 094 `"Medical and dental-technicians"', add
label define occ1950_lbl 095 `"Testing-technicians"', add
label define occ1950_lbl 096 `"Technicians (nec)"', add
label define occ1950_lbl 097 `"Therapists and healers (nec)"', add
label define occ1950_lbl 098 `"Veterinarians"', add
label define occ1950_lbl 099 `"Professional, technical and kindred workers (nec)"', add
label define occ1950_lbl 100 `"Farmers (owners and tenants)"', add
label define occ1950_lbl 123 `"Farm managers"', add
label define occ1950_lbl 200 `"Buyers and dept heads, store"', add
label define occ1950_lbl 201 `"Buyers and shippers, farm products"', add
label define occ1950_lbl 203 `"Conductors, railroad"', add
label define occ1950_lbl 204 `"Credit men"', add
label define occ1950_lbl 205 `"Floormen and floor managers, store"', add
label define occ1950_lbl 210 `"Inspectors, public administration"', add
label define occ1950_lbl 230 `"Managers and superintendants, building"', add
label define occ1950_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ1950_lbl 250 `"Officials and administratators (nec), public administration"', add
label define occ1950_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ1950_lbl 270 `"Postmasters"', add
label define occ1950_lbl 280 `"Purchasing agents and buyers (nec)"', add
label define occ1950_lbl 290 `"Managers, officials, and proprietors (nec)"', add
label define occ1950_lbl 300 `"Agents (nec)"', add
label define occ1950_lbl 301 `"Attendants and assistants, library"', add
label define occ1950_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ1950_lbl 304 `"Baggagemen, transportation"', add
label define occ1950_lbl 305 `"Bank tellers"', add
label define occ1950_lbl 310 `"Bookkeepers"', add
label define occ1950_lbl 320 `"Cashiers"', add
label define occ1950_lbl 321 `"Collectors, bill and account"', add
label define occ1950_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ1950_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ1950_lbl 335 `"Mail carriers"', add
label define occ1950_lbl 340 `"Messengers and office boys"', add
label define occ1950_lbl 341 `"Office machine operators"', add
label define occ1950_lbl 342 `"Shipping and receiving clerks"', add
label define occ1950_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ1950_lbl 360 `"Telegraph messengers"', add
label define occ1950_lbl 365 `"Telegraph operators"', add
label define occ1950_lbl 370 `"Telephone operators"', add
label define occ1950_lbl 380 `"Ticket, station, and express agents"', add
label define occ1950_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ1950_lbl 400 `"Advertising agents and salesmen"', add
label define occ1950_lbl 410 `"Auctioneers"', add
label define occ1950_lbl 420 `"Demonstrators"', add
label define occ1950_lbl 430 `"Hucksters and peddlers"', add
label define occ1950_lbl 450 `"Insurance agents and brokers"', add
label define occ1950_lbl 460 `"Newsboys"', add
label define occ1950_lbl 470 `"Real estate agents and brokers"', add
label define occ1950_lbl 480 `"Stock and bond salesmen"', add
label define occ1950_lbl 490 `"Salesmen and sales clerks (nec)"', add
label define occ1950_lbl 500 `"Bakers"', add
label define occ1950_lbl 501 `"Blacksmiths"', add
label define occ1950_lbl 502 `"Bookbinders"', add
label define occ1950_lbl 503 `"Boilermakers"', add
label define occ1950_lbl 504 `"Brickmasons,stonemasons, and tile setters"', add
label define occ1950_lbl 505 `"Cabinetmakers"', add
label define occ1950_lbl 510 `"Carpenters"', add
label define occ1950_lbl 511 `"Cement and concrete finishers"', add
label define occ1950_lbl 512 `"Compositors and typesetters"', add
label define occ1950_lbl 513 `"Cranemen,derrickmen, and hoistmen"', add
label define occ1950_lbl 514 `"Decorators and window dressers"', add
label define occ1950_lbl 515 `"Electricians"', add
label define occ1950_lbl 520 `"Electrotypers and stereotypers"', add
label define occ1950_lbl 521 `"Engravers, except photoengravers"', add
label define occ1950_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ1950_lbl 523 `"Foremen (nec)"', add
label define occ1950_lbl 524 `"Forgemen and hammermen"', add
label define occ1950_lbl 525 `"Furriers"', add
label define occ1950_lbl 530 `"Glaziers"', add
label define occ1950_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ1950_lbl 532 `"Inspectors, scalers, and graders log and lumber"', add
label define occ1950_lbl 533 `"Inspectors (nec)"', add
label define occ1950_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ1950_lbl 535 `"Job setters, metal"', add
label define occ1950_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ1950_lbl 541 `"Locomotive engineers"', add
label define occ1950_lbl 542 `"Locomotive firemen"', add
label define occ1950_lbl 543 `"Loom fixers"', add
label define occ1950_lbl 544 `"Machinists"', add
label define occ1950_lbl 545 `"Airplane-mechanics and repairmen"', add
label define occ1950_lbl 550 `"Automobile-mechanics and repairmen"', add
label define occ1950_lbl 551 `"Office machine-mechanics and repairmen"', add
label define occ1950_lbl 552 `"Radio and television-mechanics and repairmen"', add
label define occ1950_lbl 553 `"Railroad and car shop-mechanics and repairmen"', add
label define occ1950_lbl 554 `"Mechanics and repairmen (nec)"', add
label define occ1950_lbl 555 `"Millers, grain, flour, feed, etc"', add
label define occ1950_lbl 560 `"Millwrights"', add
label define occ1950_lbl 561 `"Molders, metal"', add
label define occ1950_lbl 562 `"Motion picture projectionists"', add
label define occ1950_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ1950_lbl 564 `"Painters, construction and maintenance"', add
label define occ1950_lbl 565 `"Paperhangers"', add
label define occ1950_lbl 570 `"Pattern and model makers, except paper"', add
label define occ1950_lbl 571 `"Photoengravers and lithographers"', add
label define occ1950_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ1950_lbl 573 `"Plasterers"', add
label define occ1950_lbl 574 `"Plumbers and pipe fitters"', add
label define occ1950_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ1950_lbl 580 `"Rollers and roll hands, metal"', add
label define occ1950_lbl 581 `"Roofers and slaters"', add
label define occ1950_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ1950_lbl 583 `"Stationary engineers"', add
label define occ1950_lbl 584 `"Stone cutters and stone carvers"', add
label define occ1950_lbl 585 `"Structural metal workers"', add
label define occ1950_lbl 590 `"Tailors and tailoresses"', add
label define occ1950_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ1950_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ1950_lbl 593 `"Upholsterers"', add
label define occ1950_lbl 594 `"Craftsmen and kindred workers (nec)"', add
label define occ1950_lbl 595 `"Members of the armed services"', add
label define occ1950_lbl 600 `"Auto mechanics apprentice"', add
label define occ1950_lbl 601 `"Bricklayers and masons apprentice"', add
label define occ1950_lbl 602 `"Carpenters apprentice"', add
label define occ1950_lbl 603 `"Electricians apprentice"', add
label define occ1950_lbl 604 `"Machinists and toolmakers apprentice"', add
label define occ1950_lbl 605 `"Mechanics, except auto apprentice"', add
label define occ1950_lbl 610 `"Plumbers and pipe fitters apprentice"', add
label define occ1950_lbl 611 `"Apprentices, building trades (nec)"', add
label define occ1950_lbl 612 `"Apprentices, metalworking trades (nec)"', add
label define occ1950_lbl 613 `"Apprentices, printing  trades"', add
label define occ1950_lbl 614 `"Apprentices, other specified trades"', add
label define occ1950_lbl 615 `"Apprentices, trade not specified"', add
label define occ1950_lbl 620 `"Asbestos and insulation workers"', add
label define occ1950_lbl 621 `"Attendants, auto service and parking"', add
label define occ1950_lbl 622 `"Blasters and powdermen"', add
label define occ1950_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ1950_lbl 624 `"Brakemen, railroad"', add
label define occ1950_lbl 625 `"Bus drivers"', add
label define occ1950_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ1950_lbl 631 `"Conductors, bus and street railway"', add
label define occ1950_lbl 632 `"Deliverymen and routemen"', add
label define occ1950_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ1950_lbl 634 `"Dyers"', add
label define occ1950_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ1950_lbl 640 `"Fruit, nut, and vegetable graders, and packers, except facto"', add
label define occ1950_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ1950_lbl 642 `"Heaters, metal"', add
label define occ1950_lbl 643 `"Laundry and dry cleaning Operatives"', add
label define occ1950_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ1950_lbl 645 `"Milliners"', add
label define occ1950_lbl 650 `"Mine operatives and laborers"', add
label define occ1950_lbl 660 `"Motormen, mine, factory, logging camp, etc"', add
label define occ1950_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ1950_lbl 662 `"Oilers and greaser, except auto"', add
label define occ1950_lbl 670 `"Painters, except construction or maintenance"', add
label define occ1950_lbl 671 `"Photographic process workers"', add
label define occ1950_lbl 672 `"Power station operators"', add
label define occ1950_lbl 673 `"Sailors and deck hands"', add
label define occ1950_lbl 674 `"Sawyers"', add
label define occ1950_lbl 675 `"Spinners, textile"', add
label define occ1950_lbl 680 `"Stationary firemen"', add
label define occ1950_lbl 681 `"Switchmen, railroad"', add
label define occ1950_lbl 682 `"Taxicab drivers and chauffeurs"', add
label define occ1950_lbl 683 `"Truck and tractor drivers"', add
label define occ1950_lbl 684 `"Weavers, textile"', add
label define occ1950_lbl 685 `"Welders and flame cutters"', add
label define occ1950_lbl 690 `"Operative and kindred workers (nec)"', add
label define occ1950_lbl 700 `"Housekeepers, private household"', add
label define occ1950_lbl 710 `"Laundressses, private household"', add
label define occ1950_lbl 720 `"Private household workers (nec)"', add
label define occ1950_lbl 730 `"Attendants, hospital and other institution"', add
label define occ1950_lbl 731 `"Attendants, professional and personal service (nec)"', add
label define occ1950_lbl 732 `"Attendants, recreation and amusement"', add
label define occ1950_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ1950_lbl 750 `"Bartenders"', add
label define occ1950_lbl 751 `"Bootblacks"', add
label define occ1950_lbl 752 `"Boarding and lodging house keepers"', add
label define occ1950_lbl 753 `"Charwomen and cleaners"', add
label define occ1950_lbl 754 `"Cooks, except private household"', add
label define occ1950_lbl 760 `"Counter and fountain workers"', add
label define occ1950_lbl 761 `"Elevator operators"', add
label define occ1950_lbl 762 `"Firemen, fire protection"', add
label define occ1950_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ1950_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ1950_lbl 770 `"Janitors and sextons"', add
label define occ1950_lbl 771 `"Marshals and constables"', add
label define occ1950_lbl 772 `"Midwives"', add
label define occ1950_lbl 773 `"Policemen and detectives"', add
label define occ1950_lbl 780 `"Porters"', add
label define occ1950_lbl 781 `"Practical nurses"', add
label define occ1950_lbl 782 `"Sheriffs and bailiffs"', add
label define occ1950_lbl 783 `"Ushers, recreation and amusement"', add
label define occ1950_lbl 784 `"Waiters and waitresses"', add
label define occ1950_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ1950_lbl 790 `"Service workers, except private household (nec)"', add
label define occ1950_lbl 810 `"Farm foremen"', add
label define occ1950_lbl 820 `"Farm laborers, wage workers"', add
label define occ1950_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ1950_lbl 840 `"Farm service laborers, self-employed"', add
label define occ1950_lbl 910 `"Fishermen and oystermen"', add
label define occ1950_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ1950_lbl 930 `"Gardeners, except farm and groundskeepers"', add
label define occ1950_lbl 940 `"Longshoremen and stevedores"', add
label define occ1950_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ1950_lbl 960 `"Teamsters"', add
label define occ1950_lbl 970 `"Laborers (nec)"', add
label define occ1950_lbl 979 `"Not yet classified"', add
label define occ1950_lbl 980 `"Keeps house/housekeeping at home/housewife"', add
label define occ1950_lbl 981 `"Imputed keeping house (1850-1900)"', add
label define occ1950_lbl 982 `"Helping at home/helps parents/housework"', add
label define occ1950_lbl 983 `"At school/student"', add
label define occ1950_lbl 984 `"Retired"', add
label define occ1950_lbl 985 `"Unemployed/without occupation"', add
label define occ1950_lbl 986 `"Invalid/disabled w/ no occupation reported"', add
label define occ1950_lbl 987 `"Inmate"', add
label define occ1950_lbl 990 `"New Worker"', add
label define occ1950_lbl 991 `"Gentleman/lady/at leisure"', add
label define occ1950_lbl 995 `"Other non-occupation"', add
label define occ1950_lbl 997 `"Occupation missing/unknown"', add
label define occ1950_lbl 999 `"N/A (blank)"', add
label values occ1950 occ1950_lbl

label define migplac5_lbl 000 `"N/A"'
label define migplac5_lbl 001 `"Alabama"', add
label define migplac5_lbl 002 `"Alaska"', add
label define migplac5_lbl 004 `"Arizona"', add
label define migplac5_lbl 005 `"Arkansas"', add
label define migplac5_lbl 006 `"California"', add
label define migplac5_lbl 008 `"Colorado"', add
label define migplac5_lbl 009 `"Connecticut"', add
label define migplac5_lbl 010 `"Delaware"', add
label define migplac5_lbl 011 `"District of Columbia"', add
label define migplac5_lbl 012 `"Florida"', add
label define migplac5_lbl 013 `"Georgia"', add
label define migplac5_lbl 015 `"Hawaii"', add
label define migplac5_lbl 016 `"Idaho"', add
label define migplac5_lbl 017 `"Illinois"', add
label define migplac5_lbl 018 `"Indiana"', add
label define migplac5_lbl 019 `"Iowa"', add
label define migplac5_lbl 020 `"Kansas"', add
label define migplac5_lbl 021 `"Kentucky"', add
label define migplac5_lbl 022 `"Louisiana"', add
label define migplac5_lbl 023 `"Maine"', add
label define migplac5_lbl 024 `"Maryland"', add
label define migplac5_lbl 025 `"Massachusetts"', add
label define migplac5_lbl 026 `"Michigan"', add
label define migplac5_lbl 027 `"Minnesota"', add
label define migplac5_lbl 028 `"Mississippi"', add
label define migplac5_lbl 029 `"Missouri"', add
label define migplac5_lbl 030 `"Montana"', add
label define migplac5_lbl 031 `"Nebraska"', add
label define migplac5_lbl 032 `"Nevada"', add
label define migplac5_lbl 033 `"New Hampshire"', add
label define migplac5_lbl 034 `"New Jersey"', add
label define migplac5_lbl 035 `"New Mexico"', add
label define migplac5_lbl 036 `"New York"', add
label define migplac5_lbl 037 `"North Carolina"', add
label define migplac5_lbl 038 `"North Dakota"', add
label define migplac5_lbl 039 `"Ohio"', add
label define migplac5_lbl 040 `"Oklahoma"', add
label define migplac5_lbl 041 `"Oregon"', add
label define migplac5_lbl 042 `"Pennsylvania"', add
label define migplac5_lbl 044 `"Rhode Island"', add
label define migplac5_lbl 045 `"South Carolina"', add
label define migplac5_lbl 046 `"South Dakota"', add
label define migplac5_lbl 047 `"Tennessee"', add
label define migplac5_lbl 048 `"Texas"', add
label define migplac5_lbl 049 `"Utah"', add
label define migplac5_lbl 050 `"Vermont"', add
label define migplac5_lbl 051 `"Virginia"', add
label define migplac5_lbl 053 `"Washington"', add
label define migplac5_lbl 054 `"West Virginia"', add
label define migplac5_lbl 055 `"Wisconsin"', add
label define migplac5_lbl 056 `"Wyoming"', add
label define migplac5_lbl 061 `"Maine-New Hampshire-Vermont"', add
label define migplac5_lbl 062 `"Massachussetts-Rhode Island"', add
label define migplac5_lbl 063 `"Minnesota-Iowa-Missouri-Kansas-Nebraska-Dakotas"', add
label define migplac5_lbl 064 `"Maryland-Delaware"', add
label define migplac5_lbl 065 `"Montana-Idaho-Wyoming"', add
label define migplac5_lbl 066 `"Utah-Nevada"', add
label define migplac5_lbl 067 `"Arizona-New Mexico"', add
label define migplac5_lbl 068 `"Alaska-Hawaii"', add
label define migplac5_lbl 099 `"United States, not specified or state confidential"', add
label define migplac5_lbl 100 `"Samoa"', add
label define migplac5_lbl 105 `"Guam"', add
label define migplac5_lbl 110 `"Puerto Rico"', add
label define migplac5_lbl 115 `"Virgin Islands"', add
label define migplac5_lbl 119 `"US outlying area (1980)"', add
label define migplac5_lbl 120 `"Other US Possessions"', add
label define migplac5_lbl 150 `"Canada"', add
label define migplac5_lbl 151 `"English Canada"', add
label define migplac5_lbl 152 `"French Canada"', add
label define migplac5_lbl 155 `"St Pierre and Miquelon"', add
label define migplac5_lbl 160 `"Atlantic Islands"', add
label define migplac5_lbl 199 `"North America"', add
label define migplac5_lbl 200 `"Mexico"', add
label define migplac5_lbl 211 `"Belize/British Honduras"', add
label define migplac5_lbl 212 `"Costa Rica"', add
label define migplac5_lbl 213 `"El Salvador"', add
label define migplac5_lbl 214 `"Guatemala"', add
label define migplac5_lbl 215 `"Honduras"', add
label define migplac5_lbl 216 `"Nicaragua"', add
label define migplac5_lbl 217 `"Panama"', add
label define migplac5_lbl 218 `"Canal Zone"', add
label define migplac5_lbl 219 `"Central America, nec"', add
label define migplac5_lbl 250 `"Cuba"', add
label define migplac5_lbl 260 `"West Indies"', add
label define migplac5_lbl 261 `"Dominican Republic"', add
label define migplac5_lbl 262 `"Haita"', add
label define migplac5_lbl 263 `"Jamaica"', add
label define migplac5_lbl 264 `"British West Indies"', add
label define migplac5_lbl 266 `"Trinidad and Tobago"', add
label define migplac5_lbl 267 `"Other West Indies"', add
label define migplac5_lbl 305 `"Argentina"', add
label define migplac5_lbl 310 `"Bolivia"', add
label define migplac5_lbl 315 `"Brazil"', add
label define migplac5_lbl 320 `"Chile"', add
label define migplac5_lbl 325 `"Colombia"', add
label define migplac5_lbl 330 `"Ecuador"', add
label define migplac5_lbl 345 `"Paraguay"', add
label define migplac5_lbl 350 `"Peru"', add
label define migplac5_lbl 360 `"Uruguay"', add
label define migplac5_lbl 365 `"Venezuela"', add
label define migplac5_lbl 370 `"North or Central America, n.s. (2000 5%)"', add
label define migplac5_lbl 390 `"South America, nec"', add
label define migplac5_lbl 400 `"Denmark"', add
label define migplac5_lbl 401 `"Finland"', add
label define migplac5_lbl 402 `"Iceland"', add
label define migplac5_lbl 404 `"Norway"', add
label define migplac5_lbl 405 `"Sweden"', add
label define migplac5_lbl 410 `"England"', add
label define migplac5_lbl 411 `"Scotland"', add
label define migplac5_lbl 412 `"Wales"', add
label define migplac5_lbl 413 `"United Kingdom"', add
label define migplac5_lbl 414 `"Ireland"', add
label define migplac5_lbl 415 `"Northern Ireland"', add
label define migplac5_lbl 420 `"Belgium"', add
label define migplac5_lbl 421 `"France"', add
label define migplac5_lbl 422 `"Liechtenstein"', add
label define migplac5_lbl 423 `"Luxembourg"', add
label define migplac5_lbl 424 `"Monaco"', add
label define migplac5_lbl 425 `"Netherlands"', add
label define migplac5_lbl 426 `"Switzerland"', add
label define migplac5_lbl 430 `"Albania"', add
label define migplac5_lbl 431 `"Andorra"', add
label define migplac5_lbl 432 `"Gibraltar"', add
label define migplac5_lbl 433 `"Greece"', add
label define migplac5_lbl 434 `"Dodecanese Islands"', add
label define migplac5_lbl 435 `"Italy"', add
label define migplac5_lbl 436 `"Portugal"', add
label define migplac5_lbl 437 `"Azores"', add
label define migplac5_lbl 438 `"Spain"', add
label define migplac5_lbl 439 `"Vatican City"', add
label define migplac5_lbl 440 `"Malta"', add
label define migplac5_lbl 450 `"Austria"', add
label define migplac5_lbl 451 `"Bulgaria"', add
label define migplac5_lbl 452 `"Czechoslovakia"', add
label define migplac5_lbl 453 `"Germany"', add
label define migplac5_lbl 454 `"Hungary"', add
label define migplac5_lbl 455 `"Poland"', add
label define migplac5_lbl 456 `"Romania"', add
label define migplac5_lbl 457 `"Yugoslavia"', add
label define migplac5_lbl 460 `"Estonia"', add
label define migplac5_lbl 461 `"Latvia"', add
label define migplac5_lbl 462 `"Lithuania"', add
label define migplac5_lbl 465 `"USSR"', add
label define migplac5_lbl 496 `"Byelorussia"', add
label define migplac5_lbl 498 `"Ukraine"', add
label define migplac5_lbl 499 `"Europe, n.s."', add
label define migplac5_lbl 500 `"China"', add
label define migplac5_lbl 501 `"Japan"', add
label define migplac5_lbl 502 `"Korea"', add
label define migplac5_lbl 510 `"Brunei"', add
label define migplac5_lbl 511 `"Cambodia "', add
label define migplac5_lbl 512 `"Indonesia"', add
label define migplac5_lbl 513 `"Laos"', add
label define migplac5_lbl 514 `"Malaysia"', add
label define migplac5_lbl 515 `"Philippines"', add
label define migplac5_lbl 516 `"Singapore"', add
label define migplac5_lbl 517 `"Thailand"', add
label define migplac5_lbl 518 `"Vietnam"', add
label define migplac5_lbl 520 `"Afghanistan"', add
label define migplac5_lbl 521 `"India"', add
label define migplac5_lbl 525 `"Pakistan"', add
label define migplac5_lbl 522 `"Iran"', add
label define migplac5_lbl 523 `"Maldives"', add
label define migplac5_lbl 524 `"Nepal"', add
label define migplac5_lbl 530 `"Bahrain"', add
label define migplac5_lbl 531 `"Cyprus"', add
label define migplac5_lbl 532 `"Iraq"', add
label define migplac5_lbl 534 `"Israel"', add
label define migplac5_lbl 535 `"Jordan"', add
label define migplac5_lbl 536 `"Kuwait"', add
label define migplac5_lbl 537 `"Lebanon"', add
label define migplac5_lbl 538 `"Oman"', add
label define migplac5_lbl 539 `"Qatar"', add
label define migplac5_lbl 540 `"Saudi Arabia"', add
label define migplac5_lbl 541 `"Syria"', add
label define migplac5_lbl 542 `"Turkey"', add
label define migplac5_lbl 543 `"United Arab Emirates"', add
label define migplac5_lbl 544 `"Yemen"', add
label define migplac5_lbl 548 `"Southwest Asia, nec/ns"', add
label define migplac5_lbl 599 `"Asia, nec/ns"', add
label define migplac5_lbl 600 `"Africa"', add
label define migplac5_lbl 610 `"Northern Africa"', add
label define migplac5_lbl 612 `"Egypt/United Arab Rep."', add
label define migplac5_lbl 670 `"Central Africa"', add
label define migplac5_lbl 690 `"Southern Africa"', add
label define migplac5_lbl 694 `"South Africa (Union of)"', add
label define migplac5_lbl 699 `"Africa, nec"', add
label define migplac5_lbl 700 `"Coral Sea Islands"', add
label define migplac5_lbl 701 `"Australia"', add
label define migplac5_lbl 702 `"New Zealand"', add
label define migplac5_lbl 710 `"Pacific Islands"', add
label define migplac5_lbl 715 `"US Pacific Trust Territories"', add
label define migplac5_lbl 800 `"Heard and McDonald Islands"', add
label define migplac5_lbl 900 `"Abroad (unknown) or at sea"', add
label define migplac5_lbl 911 `"Abroad, ns"', add
label define migplac5_lbl 912 `"At sea"', add
label define migplac5_lbl 990 `"Same house"', add
label define migplac5_lbl 999 `"Missing/unknown"', add
label values migplac5 migplac5_lbl

label define work5yr_lbl 0 `"N/A"'
label define work5yr_lbl 1 `"No"', add
label define work5yr_lbl 2 `"Yes (1970)"', add
label define work5yr_lbl 3 `"Yes, full time (35+ hours)"', add
label define work5yr_lbl 4 `"Yes, part time (1-34 hours)"', add
label define work5yr_lbl 9 `"Not reported"', add
label values work5yr work5yr_lbl

label define milit5yr_lbl 0 `"N/A"'
label define milit5yr_lbl 1 `"No"', add
label define milit5yr_lbl 2 `"Yes"', add
label define milit5yr_lbl 9 `"Not reported"', add
label values milit5yr milit5yr_lbl

label define coll5yr_lbl 0 `"N/A"'
label define coll5yr_lbl 1 `"No"', add
label define coll5yr_lbl 2 `"Yes"', add
label define coll5yr_lbl 9 `"Not reported"', add
label values coll5yr coll5yr_lbl

label define occ5yr95_lbl 000 `"Accountants and auditors"'
label define occ5yr95_lbl 001 `"Actors and actresses"', add
label define occ5yr95_lbl 002 `"Airplane pilots and navigators"', add
label define occ5yr95_lbl 003 `"Architects"', add
label define occ5yr95_lbl 004 `"Artists and art teachers"', add
label define occ5yr95_lbl 005 `"Athletes"', add
label define occ5yr95_lbl 006 `"Authors"', add
label define occ5yr95_lbl 007 `"Chemists"', add
label define occ5yr95_lbl 008 `"Chiropractors"', add
label define occ5yr95_lbl 009 `"Clergymen"', add
label define occ5yr95_lbl 010 `"College presidents and deans"', add
label define occ5yr95_lbl 012 `"Professors and instructors, agricultural sciences"', add
label define occ5yr95_lbl 013 `"Professors and instructors, biological sciences"', add
label define occ5yr95_lbl 014 `"Profs and instructors, chemistry"', add
label define occ5yr95_lbl 015 `"Profs and instructors, economics"', add
label define occ5yr95_lbl 016 `"Professors and instructors, engineering"', add
label define occ5yr95_lbl 017 `"Professors and instructors, geology and geophysics"', add
label define occ5yr95_lbl 018 `"Professors and instructors, mathematics"', add
label define occ5yr95_lbl 019 `"Professors and instructors, medical sciences"', add
label define occ5yr95_lbl 023 `"Profs and instructors, physics"', add
label define occ5yr95_lbl 024 `"Professors and instructors, psychology"', add
label define occ5yr95_lbl 025 `"Professors and instructors, statistics"', add
label define occ5yr95_lbl 026 `"Professors and instructors, natural science (nec)"', add
label define occ5yr95_lbl 027 `"Professors and instructors, social sciences (nec)"', add
label define occ5yr95_lbl 028 `"Professors and instructors, nonscientific subjects"', add
label define occ5yr95_lbl 029 `"Professors and instructors, subject not specified"', add
label define occ5yr95_lbl 031 `"Dancers and dancing teachers"', add
label define occ5yr95_lbl 032 `"Dentists"', add
label define occ5yr95_lbl 033 `"Designers"', add
label define occ5yr95_lbl 034 `"Dieticians and nutritionists"', add
label define occ5yr95_lbl 035 `"Draftsmen"', add
label define occ5yr95_lbl 036 `"Editors and reporters"', add
label define occ5yr95_lbl 041 `"Engineers, aeronautical"', add
label define occ5yr95_lbl 042 `"Engineers, chemical"', add
label define occ5yr95_lbl 043 `"Engineers, civil"', add
label define occ5yr95_lbl 044 `"Engineers, electrical"', add
label define occ5yr95_lbl 045 `"Engineers, industrial"', add
label define occ5yr95_lbl 046 `"Engineers, mechanical"', add
label define occ5yr95_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ5yr95_lbl 048 `"Engineers, mining"', add
label define occ5yr95_lbl 049 `"Engineers (nec)"', add
label define occ5yr95_lbl 051 `"Entertainers (nec)"', add
label define occ5yr95_lbl 052 `"Farm and home management advisors"', add
label define occ5yr95_lbl 053 `"Foresters and conservationists"', add
label define occ5yr95_lbl 054 `"Funeral directors and embalmers"', add
label define occ5yr95_lbl 055 `"Lawyers and judges"', add
label define occ5yr95_lbl 056 `"Librarians"', add
label define occ5yr95_lbl 057 `"Musicians and music teachers"', add
label define occ5yr95_lbl 058 `"Nurses, professional"', add
label define occ5yr95_lbl 059 `"Nurses, student professional"', add
label define occ5yr95_lbl 061 `"Agricultural scientists"', add
label define occ5yr95_lbl 062 `"Biological scientists"', add
label define occ5yr95_lbl 063 `"Geologists and geophysicists"', add
label define occ5yr95_lbl 067 `"Mathematicians"', add
label define occ5yr95_lbl 068 `"Physicists"', add
label define occ5yr95_lbl 069 `"Misc. natural scientists"', add
label define occ5yr95_lbl 070 `"Optometrists"', add
label define occ5yr95_lbl 071 `"Osteopaths"', add
label define occ5yr95_lbl 072 `"Personnel and labor relations workers"', add
label define occ5yr95_lbl 073 `"Pharmacists"', add
label define occ5yr95_lbl 074 `"Photographers"', add
label define occ5yr95_lbl 075 `"Physicians and surgeons"', add
label define occ5yr95_lbl 076 `"Radio operators"', add
label define occ5yr95_lbl 077 `"Recreation and group workers"', add
label define occ5yr95_lbl 078 `"Religious workers"', add
label define occ5yr95_lbl 079 `"Social and welfare workers, except group"', add
label define occ5yr95_lbl 081 `"Economists"', add
label define occ5yr95_lbl 082 `"Psychologists"', add
label define occ5yr95_lbl 083 `"Statisticians and actuaries"', add
label define occ5yr95_lbl 084 `"Misc social scientists"', add
label define occ5yr95_lbl 091 `"Sports instructors and officials"', add
label define occ5yr95_lbl 092 `"Surveyors"', add
label define occ5yr95_lbl 093 `"Teachers (n.e.c.)"', add
label define occ5yr95_lbl 094 `"Technicians, medical and dental"', add
label define occ5yr95_lbl 095 `"Technicians, testing"', add
label define occ5yr95_lbl 096 `"Technicians (nec)"', add
label define occ5yr95_lbl 097 `"Therapists and healers (nec)"', add
label define occ5yr95_lbl 098 `"Veterinarians"', add
label define occ5yr95_lbl 099 `"Professional, technical and kindred workers (nec)"', add
label define occ5yr95_lbl 100 `"Farmers (owners and tenants)"', add
label define occ5yr95_lbl 123 `"Farm managers"', add
label define occ5yr95_lbl 200 `"Buyers and dept heads, store"', add
label define occ5yr95_lbl 201 `"Buyers and shippers, farm products"', add
label define occ5yr95_lbl 203 `"Conductors, railroad"', add
label define occ5yr95_lbl 204 `"Credit men"', add
label define occ5yr95_lbl 205 `"Floormen and floor managers, store"', add
label define occ5yr95_lbl 210 `"Inspectors, public administration"', add
label define occ5yr95_lbl 230 `"Managers and superintendants, building"', add
label define occ5yr95_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ5yr95_lbl 250 `"Officials and administratators (nec), public administration"', add
label define occ5yr95_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ5yr95_lbl 270 `"Postmasters"', add
label define occ5yr95_lbl 280 `"Purchasing agents and buyers (nec)"', add
label define occ5yr95_lbl 290 `"Managers, officials, and proprietors (nec)"', add
label define occ5yr95_lbl 300 `"Agents (nec)"', add
label define occ5yr95_lbl 301 `"Attendants and assistants, library"', add
label define occ5yr95_lbl 302 `"Attendants, physician's and dentist's office"', add
label define occ5yr95_lbl 304 `"Baggagemen, transportation"', add
label define occ5yr95_lbl 305 `"Bank tellers"', add
label define occ5yr95_lbl 310 `"Bookkeepers"', add
label define occ5yr95_lbl 320 `"Cashiers"', add
label define occ5yr95_lbl 321 `"Collectors, bill and account"', add
label define occ5yr95_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ5yr95_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ5yr95_lbl 335 `"Mail carriers"', add
label define occ5yr95_lbl 340 `"Messengers and office boys"', add
label define occ5yr95_lbl 341 `"Office machine operators"', add
label define occ5yr95_lbl 342 `"Shipping and receiving clerks"', add
label define occ5yr95_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ5yr95_lbl 360 `"Telegraph messengers"', add
label define occ5yr95_lbl 365 `"Telegraph operators"', add
label define occ5yr95_lbl 370 `"Telephone operators"', add
label define occ5yr95_lbl 380 `"Ticket, station, and express agents"', add
label define occ5yr95_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ5yr95_lbl 400 `"Advertising agents and salesmen"', add
label define occ5yr95_lbl 410 `"Auctioneers"', add
label define occ5yr95_lbl 420 `"Demonstrators"', add
label define occ5yr95_lbl 430 `"Hucksters and peddlers"', add
label define occ5yr95_lbl 450 `"Insurance agents and brokers"', add
label define occ5yr95_lbl 460 `"Newsboys"', add
label define occ5yr95_lbl 470 `"Real estate agents and brokers"', add
label define occ5yr95_lbl 480 `"Stock and bond salesmen"', add
label define occ5yr95_lbl 490 `"Salesmen and sales clerks (nec)"', add
label define occ5yr95_lbl 500 `"Bakers"', add
label define occ5yr95_lbl 501 `"Blacksmiths"', add
label define occ5yr95_lbl 502 `"Bookbinders"', add
label define occ5yr95_lbl 503 `"Boilermakers"', add
label define occ5yr95_lbl 504 `"Brickmasons,stonemasons, and tile setters"', add
label define occ5yr95_lbl 505 `"Cabinetmakers"', add
label define occ5yr95_lbl 510 `"Carpenters"', add
label define occ5yr95_lbl 511 `"Cement and concrete finishers"', add
label define occ5yr95_lbl 512 `"Compositors and typesetters"', add
label define occ5yr95_lbl 513 `"Cranemen,derrickmen, and hoistmen"', add
label define occ5yr95_lbl 514 `"Decorators and window dressers"', add
label define occ5yr95_lbl 515 `"Electricians"', add
label define occ5yr95_lbl 520 `"Electrotypers and stereotypers"', add
label define occ5yr95_lbl 521 `"Engravers, except engravers"', add
label define occ5yr95_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ5yr95_lbl 523 `"Foremen (nec)"', add
label define occ5yr95_lbl 524 `"Forgemen and hammermen"', add
label define occ5yr95_lbl 525 `"Furriers"', add
label define occ5yr95_lbl 530 `"Glaziers"', add
label define occ5yr95_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ5yr95_lbl 532 `"Inspectors, scalers, and graders log and lumber"', add
label define occ5yr95_lbl 533 `"Inspectors (nec)"', add
label define occ5yr95_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ5yr95_lbl 535 `"Job setters, metal"', add
label define occ5yr95_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ5yr95_lbl 541 `"Locomotive engineers"', add
label define occ5yr95_lbl 542 `"Locomotive firemen"', add
label define occ5yr95_lbl 543 `"Loom fixers"', add
label define occ5yr95_lbl 544 `"Machinists"', add
label define occ5yr95_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ5yr95_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ5yr95_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ5yr95_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ5yr95_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ5yr95_lbl 554 `"Mechanics and repairmen (nec)"', add
label define occ5yr95_lbl 555 `"Millers, grain, flour, feed, etc"', add
label define occ5yr95_lbl 560 `"Millwrights"', add
label define occ5yr95_lbl 561 `"Molders, metal"', add
label define occ5yr95_lbl 562 `"Motion picture projectionists"', add
label define occ5yr95_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ5yr95_lbl 564 `"Painters, construction and maintenance"', add
label define occ5yr95_lbl 565 `"Paperhangers"', add
label define occ5yr95_lbl 570 `"Pattern and model makers, except paper"', add
label define occ5yr95_lbl 571 `"Photoengravers and lithographers"', add
label define occ5yr95_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ5yr95_lbl 573 `"Plasterers"', add
label define occ5yr95_lbl 574 `"Plumbers and pipe fitters"', add
label define occ5yr95_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ5yr95_lbl 580 `"Rollers and roll hands, metal"', add
label define occ5yr95_lbl 581 `"Roofers and slaters"', add
label define occ5yr95_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ5yr95_lbl 583 `"Stationary engineers"', add
label define occ5yr95_lbl 584 `"Stone cutters and stone carvers"', add
label define occ5yr95_lbl 585 `"Structural metal workers"', add
label define occ5yr95_lbl 590 `"Tailors and tailoresses"', add
label define occ5yr95_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ5yr95_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ5yr95_lbl 593 `"Upholsterers"', add
label define occ5yr95_lbl 594 `"Craftsmen and kindred workers (nec)"', add
label define occ5yr95_lbl 595 `"Members of the armed services"', add
label define occ5yr95_lbl 600 `"Apprentice auto mechanics"', add
label define occ5yr95_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ5yr95_lbl 602 `"Apprentice carpenters"', add
label define occ5yr95_lbl 603 `"Apprentice electricians"', add
label define occ5yr95_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ5yr95_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ5yr95_lbl 610 `"Apprentice plumbers and and pipe fitters"', add
label define occ5yr95_lbl 611 `"Apprentices, building trades (nec)"', add
label define occ5yr95_lbl 612 `"Apprentices, metalworking trades (nec)"', add
label define occ5yr95_lbl 613 `"Apprentices, printing  trades"', add
label define occ5yr95_lbl 614 `"Apprentices, other specified trades"', add
label define occ5yr95_lbl 615 `"Apprentices, trade not specified"', add
label define occ5yr95_lbl 620 `"Asbestos and insulation workers"', add
label define occ5yr95_lbl 621 `"Attendants, auto service and parking"', add
label define occ5yr95_lbl 622 `"Blasters and powdermen"', add
label define occ5yr95_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ5yr95_lbl 624 `"Brakemen, railroad"', add
label define occ5yr95_lbl 625 `"Bus drivers"', add
label define occ5yr95_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ5yr95_lbl 631 `"Conductors, bus and street railway"', add
label define occ5yr95_lbl 632 `"Deliverymen and routemen"', add
label define occ5yr95_lbl 633 `"Dressmakers and seamstresses except factory"', add
label define occ5yr95_lbl 634 `"Dyers"', add
label define occ5yr95_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ5yr95_lbl 640 `"Fruit, nut, and vegetable graders, and packers, except facto"', add
label define occ5yr95_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ5yr95_lbl 642 `"Heaters, metal"', add
label define occ5yr95_lbl 643 `"Laundry and dry cleaning Operatives"', add
label define occ5yr95_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ5yr95_lbl 645 `"Milliners"', add
label define occ5yr95_lbl 650 `"Mine operatives and laborers"', add
label define occ5yr95_lbl 660 `"Motormen, mine, factory, logging camp, etc"', add
label define occ5yr95_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ5yr95_lbl 662 `"Oilers and greaser, except auto"', add
label define occ5yr95_lbl 670 `"Painters, except construction or maintenance"', add
label define occ5yr95_lbl 671 `"Photographic process workers"', add
label define occ5yr95_lbl 672 `"Power station operators"', add
label define occ5yr95_lbl 673 `"Sailors and deck hands"', add
label define occ5yr95_lbl 674 `"Sawyers"', add
label define occ5yr95_lbl 675 `"Spinners, textile"', add
label define occ5yr95_lbl 680 `"Stationary firemen"', add
label define occ5yr95_lbl 681 `"Switchmen, railroad"', add
label define occ5yr95_lbl 682 `"Taxicab drivers and chauffeurs"', add
label define occ5yr95_lbl 683 `"Truck and tractor drivers"', add
label define occ5yr95_lbl 684 `"Weavers, textile"', add
label define occ5yr95_lbl 685 `"Welders and flame cutters"', add
label define occ5yr95_lbl 690 `"Operative and kindred workers (nec)"', add
label define occ5yr95_lbl 700 `"Housekeepers, private household"', add
label define occ5yr95_lbl 710 `"Laundressses, private household"', add
label define occ5yr95_lbl 720 `"Private household workers (nec)"', add
label define occ5yr95_lbl 730 `"Attendants, hospital and other institution"', add
label define occ5yr95_lbl 731 `"Attendants, professional and personal service (nec)"', add
label define occ5yr95_lbl 732 `"Attendants, recreation and amusement"', add
label define occ5yr95_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ5yr95_lbl 750 `"Bartenders"', add
label define occ5yr95_lbl 751 `"Bootblacks"', add
label define occ5yr95_lbl 752 `"Boarding and lodging house keepers"', add
label define occ5yr95_lbl 753 `"Charwomen and cleaners"', add
label define occ5yr95_lbl 754 `"Cooks, except private household"', add
label define occ5yr95_lbl 760 `"Counter and fountain workers"', add
label define occ5yr95_lbl 761 `"Elevator operators"', add
label define occ5yr95_lbl 762 `"Firemen, fire protection"', add
label define occ5yr95_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ5yr95_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ5yr95_lbl 770 `"Janitors and sextons"', add
label define occ5yr95_lbl 771 `"Marshals and constables"', add
label define occ5yr95_lbl 772 `"Midwives"', add
label define occ5yr95_lbl 773 `"Policemen and detectives"', add
label define occ5yr95_lbl 780 `"Porters"', add
label define occ5yr95_lbl 781 `"Practical nurses"', add
label define occ5yr95_lbl 782 `"Sheriffs and bailiffs"', add
label define occ5yr95_lbl 783 `"Ushers, recreation and amusement"', add
label define occ5yr95_lbl 784 `"Waiters and waitresses"', add
label define occ5yr95_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ5yr95_lbl 790 `"Service workers, except private household (nec)"', add
label define occ5yr95_lbl 810 `"Farm foremen"', add
label define occ5yr95_lbl 820 `"Farm laborers, wage workers"', add
label define occ5yr95_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ5yr95_lbl 840 `"Farm service laborers, self-employed"', add
label define occ5yr95_lbl 910 `"Fishermen and oystermen"', add
label define occ5yr95_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ5yr95_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ5yr95_lbl 940 `"Longshoremen and stevedores"', add
label define occ5yr95_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ5yr95_lbl 960 `"Teamsters"', add
label define occ5yr95_lbl 970 `"Laborers (nec)"', add
label define occ5yr95_lbl 975 `"EMPLOYED (unclassifiable)"', add
label define occ5yr95_lbl 976 `"Conductors, not specified"', add
label define occ5yr95_lbl 977 `"RR employee"', add
label define occ5yr95_lbl 978 `"Govt officials, level unknown"', add
label define occ5yr95_lbl 980 `"Keeps house/house work/housewife"', add
label define occ5yr95_lbl 981 `"Imputed keeping house (1880)"', add
label define occ5yr95_lbl 982 `"At home/ helps in home"', add
label define occ5yr95_lbl 983 `"At school"', add
label define occ5yr95_lbl 984 `"Retired"', add
label define occ5yr95_lbl 985 `"Unemployed/ without occ"', add
label define occ5yr95_lbl 986 `"Invalid/sick/disabled"', add
label define occ5yr95_lbl 987 `"Inmate/prisoner"', add
label define occ5yr95_lbl 988 `"Ration Indian"', add
label define occ5yr95_lbl 990 `"Landlord"', add
label define occ5yr95_lbl 991 `"Capitalist/gentleman"', add
label define occ5yr95_lbl 992 `"Child labor-farm"', add
label define occ5yr95_lbl 993 `"Child labor-domestic"', add
label define occ5yr95_lbl 994 `"Child labor-other"', add
label define occ5yr95_lbl 995 `"Other non-occupation"', add
label define occ5yr95_lbl 996 `"Unclassifiable (employment status unk)"', add
label define occ5yr95_lbl 997 `"Occupation missing/unknown"', add
label define occ5yr95_lbl 998 `"Illegible"', add
label define occ5yr95_lbl 999 `"N/A (blank)"', add
label values occ5yr95 occ5yr95_lbl

label define sex_sp_lbl 1 `"Male"'
label define sex_sp_lbl 2 `"Female"', add
label values sex_sp sex_sp_lbl

label define age_sp_lbl 000 `"Less than 1 year old"'
label define age_sp_lbl 001 `"1"', add
label define age_sp_lbl 002 `"2"', add
label define age_sp_lbl 003 `"3"', add
label define age_sp_lbl 004 `"4"', add
label define age_sp_lbl 005 `"5"', add
label define age_sp_lbl 006 `"6"', add
label define age_sp_lbl 007 `"7"', add
label define age_sp_lbl 008 `"8"', add
label define age_sp_lbl 009 `"9"', add
label define age_sp_lbl 010 `"10"', add
label define age_sp_lbl 011 `"11"', add
label define age_sp_lbl 012 `"12"', add
label define age_sp_lbl 013 `"13"', add
label define age_sp_lbl 014 `"14"', add
label define age_sp_lbl 015 `"15"', add
label define age_sp_lbl 016 `"16"', add
label define age_sp_lbl 017 `"17"', add
label define age_sp_lbl 018 `"18"', add
label define age_sp_lbl 019 `"19"', add
label define age_sp_lbl 020 `"20"', add
label define age_sp_lbl 021 `"21"', add
label define age_sp_lbl 022 `"22"', add
label define age_sp_lbl 023 `"23"', add
label define age_sp_lbl 024 `"24"', add
label define age_sp_lbl 025 `"25"', add
label define age_sp_lbl 026 `"26"', add
label define age_sp_lbl 027 `"27"', add
label define age_sp_lbl 028 `"28"', add
label define age_sp_lbl 029 `"29"', add
label define age_sp_lbl 030 `"30"', add
label define age_sp_lbl 031 `"31"', add
label define age_sp_lbl 032 `"32"', add
label define age_sp_lbl 033 `"33"', add
label define age_sp_lbl 034 `"34"', add
label define age_sp_lbl 035 `"35"', add
label define age_sp_lbl 036 `"36"', add
label define age_sp_lbl 037 `"37"', add
label define age_sp_lbl 038 `"38"', add
label define age_sp_lbl 039 `"39"', add
label define age_sp_lbl 040 `"40"', add
label define age_sp_lbl 041 `"41"', add
label define age_sp_lbl 042 `"42"', add
label define age_sp_lbl 043 `"43"', add
label define age_sp_lbl 044 `"44"', add
label define age_sp_lbl 045 `"45"', add
label define age_sp_lbl 046 `"46"', add
label define age_sp_lbl 047 `"47"', add
label define age_sp_lbl 048 `"48"', add
label define age_sp_lbl 049 `"49"', add
label define age_sp_lbl 050 `"50"', add
label define age_sp_lbl 051 `"51"', add
label define age_sp_lbl 052 `"52"', add
label define age_sp_lbl 053 `"53"', add
label define age_sp_lbl 054 `"54"', add
label define age_sp_lbl 055 `"55"', add
label define age_sp_lbl 056 `"56"', add
label define age_sp_lbl 057 `"57"', add
label define age_sp_lbl 058 `"58"', add
label define age_sp_lbl 059 `"59"', add
label define age_sp_lbl 060 `"60"', add
label define age_sp_lbl 061 `"61"', add
label define age_sp_lbl 062 `"62"', add
label define age_sp_lbl 063 `"63"', add
label define age_sp_lbl 064 `"64"', add
label define age_sp_lbl 065 `"65"', add
label define age_sp_lbl 066 `"66"', add
label define age_sp_lbl 067 `"67"', add
label define age_sp_lbl 068 `"68"', add
label define age_sp_lbl 069 `"69"', add
label define age_sp_lbl 070 `"70"', add
label define age_sp_lbl 071 `"71"', add
label define age_sp_lbl 072 `"72"', add
label define age_sp_lbl 073 `"73"', add
label define age_sp_lbl 074 `"74"', add
label define age_sp_lbl 075 `"75"', add
label define age_sp_lbl 076 `"76"', add
label define age_sp_lbl 077 `"77"', add
label define age_sp_lbl 078 `"78"', add
label define age_sp_lbl 079 `"79"', add
label define age_sp_lbl 080 `"80"', add
label define age_sp_lbl 081 `"81"', add
label define age_sp_lbl 082 `"82"', add
label define age_sp_lbl 083 `"83"', add
label define age_sp_lbl 084 `"84"', add
label define age_sp_lbl 085 `"85"', add
label define age_sp_lbl 086 `"86"', add
label define age_sp_lbl 087 `"87"', add
label define age_sp_lbl 088 `"88"', add
label define age_sp_lbl 089 `"89"', add
label define age_sp_lbl 090 `"90 (90+ in 1980 and 1990)"', add
label define age_sp_lbl 091 `"91"', add
label define age_sp_lbl 092 `"92"', add
label define age_sp_lbl 093 `"93"', add
label define age_sp_lbl 094 `"94"', add
label define age_sp_lbl 095 `"95"', add
label define age_sp_lbl 096 `"96"', add
label define age_sp_lbl 097 `"97"', add
label define age_sp_lbl 098 `"98"', add
label define age_sp_lbl 099 `"99"', add
label define age_sp_lbl 100 `"100 (100+ in 1960-1970)"', add
label define age_sp_lbl 101 `"101"', add
label define age_sp_lbl 102 `"102"', add
label define age_sp_lbl 103 `"103"', add
label define age_sp_lbl 104 `"104"', add
label define age_sp_lbl 105 `"105"', add
label define age_sp_lbl 106 `"106"', add
label define age_sp_lbl 107 `"107"', add
label define age_sp_lbl 108 `"108"', add
label define age_sp_lbl 109 `"109"', add
label define age_sp_lbl 110 `"110"', add
label define age_sp_lbl 111 `"111"', add
label define age_sp_lbl 112 `"112 (112+ in the 1980 internal data)"', add
label define age_sp_lbl 113 `"113"', add
label define age_sp_lbl 114 `"114"', add
label define age_sp_lbl 115 `"115 (115+ in the 1990 internal data)"', add
label define age_sp_lbl 116 `"116"', add
label define age_sp_lbl 117 `"117"', add
label define age_sp_lbl 118 `"118"', add
label define age_sp_lbl 119 `"119"', add
label define age_sp_lbl 120 `"120"', add
label define age_sp_lbl 121 `"121"', add
label define age_sp_lbl 122 `"122"', add
label define age_sp_lbl 123 `"123"', add
label define age_sp_lbl 124 `"124"', add
label define age_sp_lbl 125 `"125"', add
label define age_sp_lbl 126 `"126"', add
label define age_sp_lbl 129 `"129"', add
label define age_sp_lbl 130 `"130"', add
label define age_sp_lbl 135 `"135"', add
label values age_sp age_sp_lbl

label define marst_sp_lbl 1 `"Married, spouse present"'
label define marst_sp_lbl 2 `"Married, spouse absent"', add
label define marst_sp_lbl 3 `"Separated"', add
label define marst_sp_lbl 4 `"Divorced"', add
label define marst_sp_lbl 5 `"Widowed"', add
label define marst_sp_lbl 6 `"Never married/single"', add
label values marst_sp marst_sp_lbl

label define marrno_sp_lbl 0 `"Not Applicable"'
label define marrno_sp_lbl 1 `"Married once"', add
label define marrno_sp_lbl 2 `"Married twice (or more)"', add
label define marrno_sp_lbl 3 `"Married thrice (or more)"', add
label define marrno_sp_lbl 4 `"Four times"', add
label define marrno_sp_lbl 5 `"Five times"', add
label define marrno_sp_lbl 6 `"Six times"', add
label define marrno_sp_lbl 7 `"Unknown"', add
label define marrno_sp_lbl 8 `"Illegible"', add
label define marrno_sp_lbl 9 `"Missing"', add
label values marrno_sp marrno_sp_lbl

label define agemarr_sp_lbl 00 `"N/A and missing"'
label define agemarr_sp_lbl 12 `"12 years old"', add
label define agemarr_sp_lbl 13 `"13"', add
label define agemarr_sp_lbl 14 `"14"', add
label define agemarr_sp_lbl 15 `"15"', add
label define agemarr_sp_lbl 16 `"16"', add
label define agemarr_sp_lbl 17 `"17"', add
label define agemarr_sp_lbl 18 `"18"', add
label define agemarr_sp_lbl 19 `"19"', add
label define agemarr_sp_lbl 20 `"20"', add
label define agemarr_sp_lbl 21 `"21"', add
label define agemarr_sp_lbl 22 `"22"', add
label define agemarr_sp_lbl 23 `"23"', add
label define agemarr_sp_lbl 24 `"24"', add
label define agemarr_sp_lbl 25 `"25"', add
label define agemarr_sp_lbl 26 `"26"', add
label define agemarr_sp_lbl 27 `"27"', add
label define agemarr_sp_lbl 28 `"28"', add
label define agemarr_sp_lbl 29 `"29"', add
label define agemarr_sp_lbl 30 `"30"', add
label define agemarr_sp_lbl 31 `"31"', add
label define agemarr_sp_lbl 32 `"32"', add
label define agemarr_sp_lbl 33 `"33"', add
label define agemarr_sp_lbl 34 `"34"', add
label define agemarr_sp_lbl 35 `"35"', add
label define agemarr_sp_lbl 36 `"36"', add
label define agemarr_sp_lbl 37 `"37"', add
label define agemarr_sp_lbl 38 `"38"', add
label define agemarr_sp_lbl 39 `"39"', add
label define agemarr_sp_lbl 40 `"40"', add
label define agemarr_sp_lbl 41 `"41"', add
label define agemarr_sp_lbl 42 `"42"', add
label define agemarr_sp_lbl 43 `"43"', add
label define agemarr_sp_lbl 44 `"44"', add
label define agemarr_sp_lbl 45 `"45"', add
label define agemarr_sp_lbl 46 `"46"', add
label define agemarr_sp_lbl 47 `"47"', add
label define agemarr_sp_lbl 48 `"48"', add
label define agemarr_sp_lbl 49 `"49"', add
label define agemarr_sp_lbl 50 `"50"', add
label define agemarr_sp_lbl 51 `"51"', add
label define agemarr_sp_lbl 52 `"52"', add
label define agemarr_sp_lbl 53 `"53"', add
label define agemarr_sp_lbl 54 `"54"', add
label define agemarr_sp_lbl 55 `"55"', add
label define agemarr_sp_lbl 56 `"56"', add
label define agemarr_sp_lbl 57 `"57"', add
label define agemarr_sp_lbl 58 `"58"', add
label define agemarr_sp_lbl 59 `"59"', add
label define agemarr_sp_lbl 60 `"60"', add
label define agemarr_sp_lbl 61 `"61"', add
label define agemarr_sp_lbl 62 `"62"', add
label define agemarr_sp_lbl 63 `"63"', add
label define agemarr_sp_lbl 64 `"64"', add
label define agemarr_sp_lbl 65 `"65"', add
label define agemarr_sp_lbl 66 `"66"', add
label define agemarr_sp_lbl 67 `"67"', add
label define agemarr_sp_lbl 68 `"68"', add
label define agemarr_sp_lbl 69 `"69"', add
label define agemarr_sp_lbl 70 `"70"', add
label define agemarr_sp_lbl 71 `"71"', add
label define agemarr_sp_lbl 72 `"72"', add
label define agemarr_sp_lbl 73 `"73"', add
label define agemarr_sp_lbl 74 `"74"', add
label define agemarr_sp_lbl 75 `"75"', add
label define agemarr_sp_lbl 76 `"76"', add
label define agemarr_sp_lbl 77 `"77"', add
label define agemarr_sp_lbl 78 `"78"', add
label define agemarr_sp_lbl 79 `"79"', add
label define agemarr_sp_lbl 80 `"80"', add
label define agemarr_sp_lbl 81 `"81"', add
label define agemarr_sp_lbl 82 `"82"', add
label define agemarr_sp_lbl 83 `"83"', add
label define agemarr_sp_lbl 84 `"84"', add
label define agemarr_sp_lbl 85 `"85"', add
label define agemarr_sp_lbl 86 `"86"', add
label define agemarr_sp_lbl 87 `"87"', add
label define agemarr_sp_lbl 88 `"88"', add
label define agemarr_sp_lbl 89 `"89"', add
label define agemarr_sp_lbl 90 `"90"', add
label define agemarr_sp_lbl 91 `"91"', add
label define agemarr_sp_lbl 92 `"92"', add
label define agemarr_sp_lbl 93 `"93"', add
label define agemarr_sp_lbl 94 `"94"', add
label define agemarr_sp_lbl 95 `"95"', add
label define agemarr_sp_lbl 96 `"96"', add
label define agemarr_sp_lbl 97 `"97"', add
label define agemarr_sp_lbl 98 `"98"', add
label define agemarr_sp_lbl 99 `"99+"', add
label values agemarr_sp agemarr_sp_lbl

label define chborn_sp_lbl 00 `"N/A"'
label define chborn_sp_lbl 01 `"No children"', add
label define chborn_sp_lbl 02 `"1 child"', add
label define chborn_sp_lbl 03 `"2 children"', add
label define chborn_sp_lbl 04 `"3"', add
label define chborn_sp_lbl 05 `"4"', add
label define chborn_sp_lbl 06 `"5"', add
label define chborn_sp_lbl 07 `"6"', add
label define chborn_sp_lbl 08 `"7"', add
label define chborn_sp_lbl 09 `"8"', add
label define chborn_sp_lbl 10 `"9"', add
label define chborn_sp_lbl 11 `"10"', add
label define chborn_sp_lbl 12 `"11"', add
label define chborn_sp_lbl 13 `"12 (12+ 1960-1990)"', add
label define chborn_sp_lbl 14 `"13"', add
label define chborn_sp_lbl 15 `"14"', add
label define chborn_sp_lbl 16 `"15"', add
label define chborn_sp_lbl 17 `"16"', add
label define chborn_sp_lbl 18 `"17"', add
label define chborn_sp_lbl 19 `"18"', add
label define chborn_sp_lbl 20 `"19"', add
label define chborn_sp_lbl 21 `"20"', add
label define chborn_sp_lbl 22 `"21"', add
label define chborn_sp_lbl 23 `"22"', add
label define chborn_sp_lbl 24 `"23"', add
label define chborn_sp_lbl 25 `"24"', add
label define chborn_sp_lbl 26 `"25 (25+ 1950)"', add
label define chborn_sp_lbl 27 `"26"', add
label define chborn_sp_lbl 28 `"27"', add
label define chborn_sp_lbl 29 `"28"', add
label define chborn_sp_lbl 30 `"29"', add
label define chborn_sp_lbl 31 `"30"', add
label define chborn_sp_lbl 32 `"31"', add
label define chborn_sp_lbl 33 `"32"', add
label define chborn_sp_lbl 34 `"33"', add
label define chborn_sp_lbl 35 `"34"', add
label define chborn_sp_lbl 36 `"35"', add
label define chborn_sp_lbl 37 `"36"', add
label define chborn_sp_lbl 38 `"37"', add
label define chborn_sp_lbl 39 `"38"', add
label define chborn_sp_lbl 40 `"39"', add
label define chborn_sp_lbl 41 `"40"', add
label define chborn_sp_lbl 42 `"41"', add
label define chborn_sp_lbl 43 `"42"', add
label define chborn_sp_lbl 44 `"43"', add
label define chborn_sp_lbl 45 `"44"', add
label define chborn_sp_lbl 46 `"45"', add
label define chborn_sp_lbl 47 `"46"', add
label define chborn_sp_lbl 48 `"47"', add
label define chborn_sp_lbl 49 `"48"', add
label define chborn_sp_lbl 50 `"49"', add
label define chborn_sp_lbl 51 `"50"', add
label define chborn_sp_lbl 52 `"51"', add
label define chborn_sp_lbl 53 `"52"', add
label define chborn_sp_lbl 54 `"53"', add
label define chborn_sp_lbl 55 `"54"', add
label define chborn_sp_lbl 56 `"55"', add
label define chborn_sp_lbl 57 `"56"', add
label define chborn_sp_lbl 58 `"57"', add
label define chborn_sp_lbl 61 `"60"', add
label define chborn_sp_lbl 87 `"87"', add
label values chborn_sp chborn_sp_lbl

label define race_sp_lbl 1 `"White"'
label define race_sp_lbl 2 `"Black/Negro"', add
label define race_sp_lbl 3 `"American Indian or Alaska Native"', add
label define race_sp_lbl 4 `"Chinese"', add
label define race_sp_lbl 5 `"Japanese"', add
label define race_sp_lbl 6 `"Other Asian or Pacific Islander"', add
label define race_sp_lbl 7 `"Other race, nec"', add
label define race_sp_lbl 8 `"Two major races"', add
label define race_sp_lbl 9 `"Three or more major races"', add
label values race_sp race_sp_lbl

label define raced_sp_lbl 100 `"White"'
label define raced_sp_lbl 110 `"Spanish write_in"', add
label define raced_sp_lbl 120 `"Blank (white) (1850)"', add
label define raced_sp_lbl 130 `"Portuguese"', add
label define raced_sp_lbl 140 `"Mexican (1930)"', add
label define raced_sp_lbl 150 `"Puerto Rican (1910 Hawaii)"', add
label define raced_sp_lbl 200 `"Black/Negro"', add
label define raced_sp_lbl 210 `"Mulatto"', add
label define raced_sp_lbl 300 `"American Indian/Alaska Native"', add
label define raced_sp_lbl 302 `"Apache"', add
label define raced_sp_lbl 303 `"Blackfoot"', add
label define raced_sp_lbl 304 `"Cherokee"', add
label define raced_sp_lbl 305 `"Cheyenne"', add
label define raced_sp_lbl 306 `"Chickasaw"', add
label define raced_sp_lbl 307 `"Chippewa"', add
label define raced_sp_lbl 308 `"Choctaw"', add
label define raced_sp_lbl 309 `"Comanche"', add
label define raced_sp_lbl 310 `"Creek"', add
label define raced_sp_lbl 311 `"Crow"', add
label define raced_sp_lbl 312 `"Iroquois"', add
label define raced_sp_lbl 313 `"Kiowa"', add
label define raced_sp_lbl 314 `"Lumbee"', add
label define raced_sp_lbl 315 `"Navajo"', add
label define raced_sp_lbl 316 `"Osage"', add
label define raced_sp_lbl 317 `"Paiute"', add
label define raced_sp_lbl 318 `"Pima"', add
label define raced_sp_lbl 319 `"Potawatomi"', add
label define raced_sp_lbl 320 `"Pueblo"', add
label define raced_sp_lbl 321 `"Seminole"', add
label define raced_sp_lbl 322 `"Shoshone"', add
label define raced_sp_lbl 323 `"Sioux"', add
label define raced_sp_lbl 324 `"Tlingit (Tlingit_Haida, 2000/ACS)"', add
label define raced_sp_lbl 325 `"Tohono O Odham"', add
label define raced_sp_lbl 326 `"All other tribes (1990)"', add
label define raced_sp_lbl 328 `"Hopi"', add
label define raced_sp_lbl 329 `"Central American Indian"', add
label define raced_sp_lbl 330 `"Spanish American Indian"', add
label define raced_sp_lbl 350 `"Delaware"', add
label define raced_sp_lbl 351 `"Latin American Indian"', add
label define raced_sp_lbl 352 `"Puget Sound Salish"', add
label define raced_sp_lbl 353 `"Yakama"', add
label define raced_sp_lbl 354 `"Yaqui"', add
label define raced_sp_lbl 355 `"Colville"', add
label define raced_sp_lbl 356 `"Houma"', add
label define raced_sp_lbl 357 `"Menominee"', add
label define raced_sp_lbl 358 `"Yuman"', add
label define raced_sp_lbl 359 `"South American Indian"', add
label define raced_sp_lbl 360 `"Mexican American Indian"', add
label define raced_sp_lbl 361 `"Other Amer. Indian tribe (2000,ACS)"', add
label define raced_sp_lbl 362 `"2+ Amer. Indian tribes (2000,ACS)"', add
label define raced_sp_lbl 370 `"Alaskan Athabaskan"', add
label define raced_sp_lbl 371 `"Aleut"', add
label define raced_sp_lbl 372 `"Eskimo"', add
label define raced_sp_lbl 373 `"Alaskan mixed"', add
label define raced_sp_lbl 374 `"Inupiat"', add
label define raced_sp_lbl 375 `"Yup'ik"', add
label define raced_sp_lbl 379 `"Other Alaska Native tribe(s) (2000,ACS)"', add
label define raced_sp_lbl 398 `"Both Am. Ind. and Alaska Native (2000,ACS)"', add
label define raced_sp_lbl 399 `"Tribe not specified"', add
label define raced_sp_lbl 400 `"Chinese"', add
label define raced_sp_lbl 410 `"Taiwanese"', add
label define raced_sp_lbl 420 `"Chinese and Taiwanese"', add
label define raced_sp_lbl 500 `"Japanese"', add
label define raced_sp_lbl 600 `"Filipino"', add
label define raced_sp_lbl 610 `"Asian Indian (Hindu 1920_1940)"', add
label define raced_sp_lbl 620 `"Korean"', add
label define raced_sp_lbl 630 `"Hawaiian"', add
label define raced_sp_lbl 631 `"Hawaiian and Asian (1900,1920)"', add
label define raced_sp_lbl 632 `"Hawaiian and European (1900,1920)"', add
label define raced_sp_lbl 634 `"Hawaiian mixed"', add
label define raced_sp_lbl 640 `"Vietnamese"', add
label define raced_sp_lbl 641 `"   Bhutanese"', add
label define raced_sp_lbl 642 `"   Mongolian "', add
label define raced_sp_lbl 643 `"   Nepalese"', add
label define raced_sp_lbl 650 `"Other Asian or Pacific Islander (1920,1980)"', add
label define raced_sp_lbl 651 `"Asian only (CPS)"', add
label define raced_sp_lbl 652 `"Pacific Islander only (CPS)"', add
label define raced_sp_lbl 653 `"Asian or Pacific Islander, n.s. (1990 Internal Census files)"', add
label define raced_sp_lbl 660 `"Cambodian"', add
label define raced_sp_lbl 661 `"Hmong"', add
label define raced_sp_lbl 662 `"Laotian"', add
label define raced_sp_lbl 663 `"Thai"', add
label define raced_sp_lbl 664 `"Bangladeshi"', add
label define raced_sp_lbl 665 `"Burmese"', add
label define raced_sp_lbl 666 `"Indonesian"', add
label define raced_sp_lbl 667 `"Malaysian"', add
label define raced_sp_lbl 668 `"Okinawan"', add
label define raced_sp_lbl 669 `"Pakistani"', add
label define raced_sp_lbl 670 `"Sri Lankan"', add
label define raced_sp_lbl 671 `"Other Asian, n.e.c."', add
label define raced_sp_lbl 672 `"Asian, not specified"', add
label define raced_sp_lbl 673 `"Chinese and Japanese"', add
label define raced_sp_lbl 674 `"Chinese and Filipino"', add
label define raced_sp_lbl 675 `"Chinese and Vietnamese"', add
label define raced_sp_lbl 676 `"Chinese and Asian write_in"', add
label define raced_sp_lbl 677 `"Japanese and Filipino"', add
label define raced_sp_lbl 678 `"Asian Indian and Asian write_in"', add
label define raced_sp_lbl 679 `"Other Asian race combinations"', add
label define raced_sp_lbl 680 `"Samoan"', add
label define raced_sp_lbl 681 `"Tahitian"', add
label define raced_sp_lbl 682 `"Tongan"', add
label define raced_sp_lbl 683 `"Other Polynesian (1990)"', add
label define raced_sp_lbl 684 `"1+ other Polynesian races (2000,ACS)"', add
label define raced_sp_lbl 685 `"Guamanian/Chamorro"', add
label define raced_sp_lbl 686 `"Northern Mariana Islander"', add
label define raced_sp_lbl 687 `"Palauan"', add
label define raced_sp_lbl 688 `"Other Micronesian (1990)"', add
label define raced_sp_lbl 689 `"1+ other Micronesian races (2000,ACS)"', add
label define raced_sp_lbl 690 `"Fijian"', add
label define raced_sp_lbl 691 `"Other Melanesian (1990)"', add
label define raced_sp_lbl 692 `"1+ other Melanesian races (2000,ACS)"', add
label define raced_sp_lbl 698 `"2+ PI races from 2+ PI regions"', add
label define raced_sp_lbl 699 `"Pacific Islander, n.s."', add
label define raced_sp_lbl 700 `"Other race, n.e.c."', add
label define raced_sp_lbl 801 `"White and Black"', add
label define raced_sp_lbl 802 `"White and AIAN"', add
label define raced_sp_lbl 810 `"White and Asian"', add
label define raced_sp_lbl 811 `"White and Chinese"', add
label define raced_sp_lbl 812 `"White and Japanese"', add
label define raced_sp_lbl 813 `"White and Filipino"', add
label define raced_sp_lbl 814 `"White and Asian Indian"', add
label define raced_sp_lbl 815 `"White and Korean"', add
label define raced_sp_lbl 816 `"White and Vietnamese"', add
label define raced_sp_lbl 817 `"White and Asian write_in"', add
label define raced_sp_lbl 818 `"White and other Asian race(s)"', add
label define raced_sp_lbl 819 `"White and two or more Asian groups"', add
label define raced_sp_lbl 820 `"White and PI  "', add
label define raced_sp_lbl 821 `"White and Native Hawaiian"', add
label define raced_sp_lbl 822 `"White and Samoan"', add
label define raced_sp_lbl 823 `"White and Guamanian"', add
label define raced_sp_lbl 824 `"White and PI write_in"', add
label define raced_sp_lbl 825 `"White and other PI race(s)"', add
label define raced_sp_lbl 826 `"White and other race write_in"', add
label define raced_sp_lbl 827 `"White and other race, n.e.c."', add
label define raced_sp_lbl 830 `"Black and AIAN"', add
label define raced_sp_lbl 831 `"Black and Asian"', add
label define raced_sp_lbl 832 `"Black and Chinese"', add
label define raced_sp_lbl 833 `"Black and Japanese"', add
label define raced_sp_lbl 834 `"Black and Filipino"', add
label define raced_sp_lbl 835 `"Black and Asian Indian"', add
label define raced_sp_lbl 836 `"Black and Korean"', add
label define raced_sp_lbl 837 `"Black and Asian write_in"', add
label define raced_sp_lbl 838 `"Black and other Asian race(s)"', add
label define raced_sp_lbl 840 `"Black and PI"', add
label define raced_sp_lbl 841 `"Black and PI write_in"', add
label define raced_sp_lbl 842 `"Black and other PI race(s)"', add
label define raced_sp_lbl 845 `"Black and other race write_in"', add
label define raced_sp_lbl 850 `"AIAN and Asian"', add
label define raced_sp_lbl 851 `"AIAN and Filipino (2000 1%)"', add
label define raced_sp_lbl 852 `"AIAN and Asian Indian"', add
label define raced_sp_lbl 853 `"AIAN and Asian write_in (2000 1%)"', add
label define raced_sp_lbl 854 `"AIAN and other Asian race(s)"', add
label define raced_sp_lbl 855 `"AIAN and PI"', add
label define raced_sp_lbl 856 `"AIAN and other race write_in"', add
label define raced_sp_lbl 860 `"Asian and PI"', add
label define raced_sp_lbl 861 `"Chinese and Hawaiian"', add
label define raced_sp_lbl 862 `"Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_sp_lbl 863 `"Japanese and Hawaiian (2000 1%)"', add
label define raced_sp_lbl 864 `"Filipino and Hawaiian"', add
label define raced_sp_lbl 865 `"Filipino and PI write_in"', add
label define raced_sp_lbl 866 `"Asian Indian and PI write_in (2000 1%)"', add
label define raced_sp_lbl 867 `"Asian write_in and PI write_in"', add
label define raced_sp_lbl 868 `"Other Asian race(s) and PI race(s)"', add
label define raced_sp_lbl 869 `"Japanese and Korean (ACS)"', add
label define raced_sp_lbl 880 `"Asian and other race write_in"', add
label define raced_sp_lbl 881 `"Chinese and other race write_in"', add
label define raced_sp_lbl 882 `"Japanese and other race write_in"', add
label define raced_sp_lbl 883 `"Filipino and other race write_in"', add
label define raced_sp_lbl 884 `"Asian Indian and other race write_in"', add
label define raced_sp_lbl 885 `"Asian write_in and other race write_in"', add
label define raced_sp_lbl 886 `"Other Asian race(s) and other race write_in"', add
label define raced_sp_lbl 887 `"      Chinese and Korean"', add
label define raced_sp_lbl 890 `"PI and other race write_in: "', add
label define raced_sp_lbl 891 `"PI write_in and other race write_in"', add
label define raced_sp_lbl 892 `"Other PI race(s) and other race write_in"', add
label define raced_sp_lbl 893 `"         Native Hawaiian or PI other race(s)"', add
label define raced_sp_lbl 899 `"API and other race write_in"', add
label define raced_sp_lbl 901 `"White, Black, AIAN"', add
label define raced_sp_lbl 902 `"White, Black, Asian"', add
label define raced_sp_lbl 903 `"White, Black, PI"', add
label define raced_sp_lbl 904 `"White, Black, other race write_in"', add
label define raced_sp_lbl 905 `"White, AIAN, Asian"', add
label define raced_sp_lbl 906 `"White, AIAN, PI"', add
label define raced_sp_lbl 907 `"White, AIAN, other race write_in"', add
label define raced_sp_lbl 910 `"White, Asian, PI "', add
label define raced_sp_lbl 911 `"White, Chinese, Hawaiian"', add
label define raced_sp_lbl 912 `"White, Chinese, Filipino, Hawaiian (2000 1%)"', add
label define raced_sp_lbl 913 `"White, Japanese, Hawaiian (2000 1%)"', add
label define raced_sp_lbl 914 `"White, Filipino, Hawaiian"', add
label define raced_sp_lbl 915 `"Other White, Asian race(s), PI race(s)"', add
label define raced_sp_lbl 916 `"      White, AIAN and Filipino"', add
label define raced_sp_lbl 917 `"      White, Black, and Filipino"', add
label define raced_sp_lbl 920 `"White, Asian, other race write_in"', add
label define raced_sp_lbl 921 `"White, Filipino, other race write_in (2000 1%)"', add
label define raced_sp_lbl 922 `"White, Asian write_in, other race write_in (2000 1%)"', add
label define raced_sp_lbl 923 `"Other White, Asian race(s), other race write_in (2000 1%)"', add
label define raced_sp_lbl 925 `"White, PI, other race write_in"', add
label define raced_sp_lbl 930 `"Black, AIAN, Asian"', add
label define raced_sp_lbl 931 `"Black, AIAN, PI"', add
label define raced_sp_lbl 932 `"Black, AIAN, other race write_in"', add
label define raced_sp_lbl 933 `"Black, Asian, PI"', add
label define raced_sp_lbl 934 `"Black, Asian, other race write_in"', add
label define raced_sp_lbl 935 `"Black, PI, other race write_in"', add
label define raced_sp_lbl 940 `"AIAN, Asian, PI"', add
label define raced_sp_lbl 941 `"AIAN, Asian, other race write_in"', add
label define raced_sp_lbl 942 `"AIAN, PI, other race write_in"', add
label define raced_sp_lbl 943 `"Asian, PI, other race write_in"', add
label define raced_sp_lbl 944 `"Asian (Chinese, Japanese, Korean, Vietnamese); and Native Hawaiian or PI; and Other"', add
label define raced_sp_lbl 949 `"2 or 3 races (CPS)"', add
label define raced_sp_lbl 950 `"White, Black, AIAN, Asian"', add
label define raced_sp_lbl 951 `"White, Black, AIAN, PI"', add
label define raced_sp_lbl 952 `"White, Black, AIAN, other race write_in"', add
label define raced_sp_lbl 953 `"White, Black, Asian, PI"', add
label define raced_sp_lbl 954 `"White, Black, Asian, other race write_in"', add
label define raced_sp_lbl 955 `"White, Black, PI, other race write_in"', add
label define raced_sp_lbl 960 `"White, AIAN, Asian, PI"', add
label define raced_sp_lbl 961 `"White, AIAN, Asian, other race write_in"', add
label define raced_sp_lbl 962 `"White, AIAN, PI, other race write_in"', add
label define raced_sp_lbl 963 `"White, Asian, PI, other race write_in"', add
label define raced_sp_lbl 964 `"White, Chinese, Japanese, Native Hawaiian"', add
label define raced_sp_lbl 970 `"Black, AIAN, Asian, PI"', add
label define raced_sp_lbl 971 `"Black, AIAN, Asian, other race write_in"', add
label define raced_sp_lbl 972 `"Black, AIAN, PI, other race write_in"', add
label define raced_sp_lbl 973 `"Black, Asian, PI, other race write_in"', add
label define raced_sp_lbl 974 `"AIAN, Asian, PI, other race write_in"', add
label define raced_sp_lbl 975 `"AIAN, Asian, PI, Hawaiian other race write_in"', add
label define raced_sp_lbl 976 `"Two specified Asian  (Chinese and other Asian, Chinese and Japanese, Japanese and other Asian, Korean and other Asian); Native Hawaiian/PI; and Other Race"', add
label define raced_sp_lbl 980 `"White, Black, AIAN, Asian, PI"', add
label define raced_sp_lbl 981 `"White, Black, AIAN, Asian, other race write_in"', add
label define raced_sp_lbl 982 `"White, Black, AIAN, PI, other race write_in"', add
label define raced_sp_lbl 983 `"White, Black, Asian, PI, other race write_in"', add
label define raced_sp_lbl 984 `"White, AIAN, Asian, PI, other race write_in"', add
label define raced_sp_lbl 985 `"Black, AIAN, Asian, PI, other race write_in"', add
label define raced_sp_lbl 986 `"Black, AIAN, Asian, PI, Hawaiian, other race write_in"', add
label define raced_sp_lbl 989 `"4 or 5 races (CPS)"', add
label define raced_sp_lbl 990 `"White, Black, AIAN, Asian, PI, other race write_in"', add
label define raced_sp_lbl 991 `"White race; Some other race; Black or African American race and/or American Indian and Alaska Native race and/or Asian groups and/or Native Hawaiian and Other Pacific Islander groups"', add
label define raced_sp_lbl 996 `"2+ races, n.e.c. (CPS)"', add
label values raced_sp raced_sp_lbl

label define bpl_sp_lbl 001 `"Alabama"'
label define bpl_sp_lbl 002 `"Alaska"', add
label define bpl_sp_lbl 004 `"Arizona"', add
label define bpl_sp_lbl 005 `"Arkansas"', add
label define bpl_sp_lbl 006 `"California"', add
label define bpl_sp_lbl 008 `"Colorado"', add
label define bpl_sp_lbl 009 `"Connecticut"', add
label define bpl_sp_lbl 010 `"Delaware"', add
label define bpl_sp_lbl 011 `"District of Columbia"', add
label define bpl_sp_lbl 012 `"Florida"', add
label define bpl_sp_lbl 013 `"Georgia"', add
label define bpl_sp_lbl 015 `"Hawaii"', add
label define bpl_sp_lbl 016 `"Idaho"', add
label define bpl_sp_lbl 017 `"Illinois"', add
label define bpl_sp_lbl 018 `"Indiana"', add
label define bpl_sp_lbl 019 `"Iowa"', add
label define bpl_sp_lbl 020 `"Kansas"', add
label define bpl_sp_lbl 021 `"Kentucky"', add
label define bpl_sp_lbl 022 `"Louisiana"', add
label define bpl_sp_lbl 023 `"Maine"', add
label define bpl_sp_lbl 024 `"Maryland"', add
label define bpl_sp_lbl 025 `"Massachusetts"', add
label define bpl_sp_lbl 026 `"Michigan"', add
label define bpl_sp_lbl 027 `"Minnesota"', add
label define bpl_sp_lbl 028 `"Mississippi"', add
label define bpl_sp_lbl 029 `"Missouri"', add
label define bpl_sp_lbl 030 `"Montana"', add
label define bpl_sp_lbl 031 `"Nebraska"', add
label define bpl_sp_lbl 032 `"Nevada"', add
label define bpl_sp_lbl 033 `"New Hampshire"', add
label define bpl_sp_lbl 034 `"New Jersey"', add
label define bpl_sp_lbl 035 `"New Mexico"', add
label define bpl_sp_lbl 036 `"New York"', add
label define bpl_sp_lbl 037 `"North Carolina"', add
label define bpl_sp_lbl 038 `"North Dakota"', add
label define bpl_sp_lbl 039 `"Ohio"', add
label define bpl_sp_lbl 040 `"Oklahoma"', add
label define bpl_sp_lbl 041 `"Oregon"', add
label define bpl_sp_lbl 042 `"Pennsylvania"', add
label define bpl_sp_lbl 044 `"Rhode Island"', add
label define bpl_sp_lbl 045 `"South Carolina"', add
label define bpl_sp_lbl 046 `"South Dakota"', add
label define bpl_sp_lbl 047 `"Tennessee"', add
label define bpl_sp_lbl 048 `"Texas"', add
label define bpl_sp_lbl 049 `"Utah"', add
label define bpl_sp_lbl 050 `"Vermont"', add
label define bpl_sp_lbl 051 `"Virginia"', add
label define bpl_sp_lbl 053 `"Washington"', add
label define bpl_sp_lbl 054 `"West Virginia"', add
label define bpl_sp_lbl 055 `"Wisconsin"', add
label define bpl_sp_lbl 056 `"Wyoming"', add
label define bpl_sp_lbl 090 `"Native American"', add
label define bpl_sp_lbl 099 `"United States, ns"', add
label define bpl_sp_lbl 100 `"American Samoa"', add
label define bpl_sp_lbl 105 `"Guam"', add
label define bpl_sp_lbl 110 `"Puerto Rico"', add
label define bpl_sp_lbl 115 `"U.S. Virgin Islands"', add
label define bpl_sp_lbl 120 `"Other US Possessions"', add
label define bpl_sp_lbl 150 `"Canada"', add
label define bpl_sp_lbl 155 `"St. Pierre and Miquelon"', add
label define bpl_sp_lbl 160 `"Atlantic Islands"', add
label define bpl_sp_lbl 199 `"North America, ns"', add
label define bpl_sp_lbl 200 `"Mexico"', add
label define bpl_sp_lbl 210 `"Central America"', add
label define bpl_sp_lbl 250 `"Cuba"', add
label define bpl_sp_lbl 260 `"West Indies"', add
label define bpl_sp_lbl 299 `"Americas, n.s."', add
label define bpl_sp_lbl 300 `"SOUTH AMERICA"', add
label define bpl_sp_lbl 400 `"Denmark"', add
label define bpl_sp_lbl 401 `"Finland"', add
label define bpl_sp_lbl 402 `"Iceland"', add
label define bpl_sp_lbl 403 `"Lapland, n.s."', add
label define bpl_sp_lbl 404 `"Norway"', add
label define bpl_sp_lbl 405 `"Sweden"', add
label define bpl_sp_lbl 410 `"England"', add
label define bpl_sp_lbl 411 `"Scotland"', add
label define bpl_sp_lbl 412 `"Wales"', add
label define bpl_sp_lbl 413 `"United Kingdom, ns"', add
label define bpl_sp_lbl 414 `"Ireland"', add
label define bpl_sp_lbl 419 `"Northern Europe, ns"', add
label define bpl_sp_lbl 420 `"Belgium"', add
label define bpl_sp_lbl 421 `"France"', add
label define bpl_sp_lbl 422 `"Liechtenstein"', add
label define bpl_sp_lbl 423 `"Luxembourg"', add
label define bpl_sp_lbl 424 `"Monaco"', add
label define bpl_sp_lbl 425 `"Netherlands"', add
label define bpl_sp_lbl 426 `"Swizterland"', add
label define bpl_sp_lbl 429 `"Western Europe, ns"', add
label define bpl_sp_lbl 430 `"Albania"', add
label define bpl_sp_lbl 431 `"Andorra"', add
label define bpl_sp_lbl 432 `"Gibraltar"', add
label define bpl_sp_lbl 433 `"Greece"', add
label define bpl_sp_lbl 434 `"Italy"', add
label define bpl_sp_lbl 435 `"Malta"', add
label define bpl_sp_lbl 436 `"Portugal"', add
label define bpl_sp_lbl 437 `"San Marino"', add
label define bpl_sp_lbl 438 `"Spain"', add
label define bpl_sp_lbl 439 `"Vatican City"', add
label define bpl_sp_lbl 440 `"Southern Europe, ns"', add
label define bpl_sp_lbl 450 `"Austria"', add
label define bpl_sp_lbl 451 `"Bulgaria"', add
label define bpl_sp_lbl 452 `"Czechoslovakia"', add
label define bpl_sp_lbl 453 `"Germany"', add
label define bpl_sp_lbl 454 `"Hungary"', add
label define bpl_sp_lbl 455 `"Poland"', add
label define bpl_sp_lbl 456 `"Romania"', add
label define bpl_sp_lbl 457 `"Yugoslavia"', add
label define bpl_sp_lbl 458 `"Central Europe, ns"', add
label define bpl_sp_lbl 459 `"Eastern Europe, ns"', add
label define bpl_sp_lbl 460 `"Estonia"', add
label define bpl_sp_lbl 461 `"Latvia"', add
label define bpl_sp_lbl 462 `"Lithuania"', add
label define bpl_sp_lbl 463 `"Baltic States, ns"', add
label define bpl_sp_lbl 465 `"Other USSR/Russia"', add
label define bpl_sp_lbl 499 `"Europe, ns"', add
label define bpl_sp_lbl 500 `"China"', add
label define bpl_sp_lbl 501 `"Japan"', add
label define bpl_sp_lbl 502 `"Korea"', add
label define bpl_sp_lbl 509 `"East Asia, ns"', add
label define bpl_sp_lbl 510 `"Brunei"', add
label define bpl_sp_lbl 511 `"Cambodia (Kampuchea)"', add
label define bpl_sp_lbl 512 `"Indonesia"', add
label define bpl_sp_lbl 513 `"Laos"', add
label define bpl_sp_lbl 514 `"Malaysia"', add
label define bpl_sp_lbl 515 `"Philippines"', add
label define bpl_sp_lbl 516 `"Singapore"', add
label define bpl_sp_lbl 517 `"Thailand"', add
label define bpl_sp_lbl 518 `"Vietnam"', add
label define bpl_sp_lbl 519 `"Southeast Asia, ns"', add
label define bpl_sp_lbl 520 `"Afghanistan"', add
label define bpl_sp_lbl 521 `"India"', add
label define bpl_sp_lbl 522 `"Iran"', add
label define bpl_sp_lbl 523 `"Maldives"', add
label define bpl_sp_lbl 524 `"Nepal"', add
label define bpl_sp_lbl 530 `"Bahrain"', add
label define bpl_sp_lbl 531 `"Cyprus"', add
label define bpl_sp_lbl 532 `"Iraq"', add
label define bpl_sp_lbl 533 `"Iraq/Saudi Arabia"', add
label define bpl_sp_lbl 534 `"Israel/Palestine"', add
label define bpl_sp_lbl 535 `"Jordan"', add
label define bpl_sp_lbl 536 `"Kuwait"', add
label define bpl_sp_lbl 537 `"Lebanon"', add
label define bpl_sp_lbl 538 `"Oman"', add
label define bpl_sp_lbl 539 `"Qatar"', add
label define bpl_sp_lbl 540 `"Saudi Arabia"', add
label define bpl_sp_lbl 541 `"Syria"', add
label define bpl_sp_lbl 542 `"Turkey"', add
label define bpl_sp_lbl 543 `"United Arab Emirates"', add
label define bpl_sp_lbl 544 `"Yemen Arab Republic (North)"', add
label define bpl_sp_lbl 545 `"Yemen, PDR (South)"', add
label define bpl_sp_lbl 546 `"Persian Gulf States, n.s."', add
label define bpl_sp_lbl 547 `"Middle East, ns"', add
label define bpl_sp_lbl 548 `"Southwest Asia, nec/ns"', add
label define bpl_sp_lbl 549 `"Asia Minor, ns"', add
label define bpl_sp_lbl 550 `"South Asia, nec"', add
label define bpl_sp_lbl 599 `"Asia, nec/ns"', add
label define bpl_sp_lbl 600 `"AFRICA"', add
label define bpl_sp_lbl 700 `"Australia and New Zealand"', add
label define bpl_sp_lbl 710 `"Pacific Islands"', add
label define bpl_sp_lbl 800 `"Antarctica, ns/nec"', add
label define bpl_sp_lbl 900 `"Abroad (unknown) or at sea"', add
label define bpl_sp_lbl 950 `"Other n.e.c."', add
label define bpl_sp_lbl 999 `"Missing/blank"', add
label values bpl_sp bpl_sp_lbl

label define bpld_sp_lbl 00100 `"Alabama"'
label define bpld_sp_lbl 00200 `"Alaska"', add
label define bpld_sp_lbl 00400 `"Arizona"', add
label define bpld_sp_lbl 00500 `"Arkansas"', add
label define bpld_sp_lbl 00600 `"California"', add
label define bpld_sp_lbl 00800 `"Colorado"', add
label define bpld_sp_lbl 00900 `"Connecticut"', add
label define bpld_sp_lbl 01000 `"Delaware"', add
label define bpld_sp_lbl 01100 `"District of Columbia"', add
label define bpld_sp_lbl 01200 `"Florida"', add
label define bpld_sp_lbl 01300 `"Georgia"', add
label define bpld_sp_lbl 01500 `"Hawaii"', add
label define bpld_sp_lbl 01600 `"Idaho"', add
label define bpld_sp_lbl 01610 `"Idaho Territory"', add
label define bpld_sp_lbl 01700 `"Illinois"', add
label define bpld_sp_lbl 01800 `"Indiana"', add
label define bpld_sp_lbl 01900 `"Iowa"', add
label define bpld_sp_lbl 02000 `"Kansas"', add
label define bpld_sp_lbl 02100 `"Kentucky"', add
label define bpld_sp_lbl 02200 `"Louisiana"', add
label define bpld_sp_lbl 02300 `"Maine"', add
label define bpld_sp_lbl 02400 `"Maryland"', add
label define bpld_sp_lbl 02500 `"Massachusetts"', add
label define bpld_sp_lbl 02600 `"Michigan"', add
label define bpld_sp_lbl 02700 `"Minnesota"', add
label define bpld_sp_lbl 02800 `"Mississippi"', add
label define bpld_sp_lbl 02900 `"Missouri"', add
label define bpld_sp_lbl 03000 `"Montana"', add
label define bpld_sp_lbl 03100 `"Nebraska"', add
label define bpld_sp_lbl 03200 `"Nevada"', add
label define bpld_sp_lbl 03300 `"New Hampshire"', add
label define bpld_sp_lbl 03400 `"New Jersey"', add
label define bpld_sp_lbl 03500 `"New Mexico"', add
label define bpld_sp_lbl 03510 `"New Mexico Territory"', add
label define bpld_sp_lbl 03600 `"New York"', add
label define bpld_sp_lbl 03700 `"North Carolina"', add
label define bpld_sp_lbl 03800 `"North Dakota"', add
label define bpld_sp_lbl 03900 `"Ohio"', add
label define bpld_sp_lbl 04000 `"Oklahoma"', add
label define bpld_sp_lbl 04010 `"Indian Territory"', add
label define bpld_sp_lbl 04100 `"Oregon"', add
label define bpld_sp_lbl 04200 `"Pennsylvania"', add
label define bpld_sp_lbl 04400 `"Rhode Island"', add
label define bpld_sp_lbl 04500 `"South Carolina"', add
label define bpld_sp_lbl 04600 `"South Dakota"', add
label define bpld_sp_lbl 04610 `"Dakota Territory"', add
label define bpld_sp_lbl 04700 `"Tennessee"', add
label define bpld_sp_lbl 04800 `"Texas"', add
label define bpld_sp_lbl 04900 `"Utah"', add
label define bpld_sp_lbl 04910 `"Utah Territory"', add
label define bpld_sp_lbl 05000 `"Vermont"', add
label define bpld_sp_lbl 05100 `"Virginia"', add
label define bpld_sp_lbl 05300 `"Washington"', add
label define bpld_sp_lbl 05400 `"West Virginia"', add
label define bpld_sp_lbl 05500 `"Wisconsin"', add
label define bpld_sp_lbl 05600 `"Wyoming"', add
label define bpld_sp_lbl 05610 `"Wyoming Territory"', add
label define bpld_sp_lbl 09000 `"Native American"', add
label define bpld_sp_lbl 09900 `"United States, ns"', add
label define bpld_sp_lbl 10000 `"American Samoa"', add
label define bpld_sp_lbl 10010 `"Samoa, 1940-1950"', add
label define bpld_sp_lbl 10500 `"Guam"', add
label define bpld_sp_lbl 11000 `"Puerto Rico"', add
label define bpld_sp_lbl 11500 `"U.S. Virgin Islands"', add
label define bpld_sp_lbl 11510 `"St. Croix"', add
label define bpld_sp_lbl 11520 `"St. John"', add
label define bpld_sp_lbl 11530 `"St. Thomas"', add
label define bpld_sp_lbl 12000 `"Other US Possessions:"', add
label define bpld_sp_lbl 12010 `"Johnston Atoll"', add
label define bpld_sp_lbl 12020 `"Midway Islands"', add
label define bpld_sp_lbl 12030 `"Wake Island"', add
label define bpld_sp_lbl 12040 `"Other US Caribbean Islands"', add
label define bpld_sp_lbl 12041 `"Navassa Island"', add
label define bpld_sp_lbl 12050 `"Other US Pacific Islands"', add
label define bpld_sp_lbl 12051 `"Baker Island"', add
label define bpld_sp_lbl 12052 `"Howland Island"', add
label define bpld_sp_lbl 12053 `"Jarvis Island"', add
label define bpld_sp_lbl 12054 `"Kingman Reef"', add
label define bpld_sp_lbl 12055 `"Palmyra Atoll"', add
label define bpld_sp_lbl 12056 `"Canton and Enderbury Island"', add
label define bpld_sp_lbl 12090 `"US outlying areas, ns"', add
label define bpld_sp_lbl 12091 `"US possessions, ns"', add
label define bpld_sp_lbl 12092 `"US territory, ns"', add
label define bpld_sp_lbl 15000 `"Canada"', add
label define bpld_sp_lbl 15010 `"English Canada"', add
label define bpld_sp_lbl 15011 `"British Columbia"', add
label define bpld_sp_lbl 15013 `"Alberta"', add
label define bpld_sp_lbl 15015 `"Saskatchewan"', add
label define bpld_sp_lbl 15017 `"Northwest"', add
label define bpld_sp_lbl 15019 `"Ruperts Land"', add
label define bpld_sp_lbl 15020 `"Manitoba"', add
label define bpld_sp_lbl 15021 `"Red River"', add
label define bpld_sp_lbl 15030 `"Ontario/Upper Canada"', add
label define bpld_sp_lbl 15031 `"Upper Canada"', add
label define bpld_sp_lbl 15032 `"Canada West"', add
label define bpld_sp_lbl 15040 `"New Brunswick"', add
label define bpld_sp_lbl 15050 `"Nova Scotia"', add
label define bpld_sp_lbl 15051 `"Cape Breton"', add
label define bpld_sp_lbl 15052 `"Halifax"', add
label define bpld_sp_lbl 15060 `"Prince Edward Island"', add
label define bpld_sp_lbl 15070 `"Newfoundland"', add
label define bpld_sp_lbl 15080 `"French Canada"', add
label define bpld_sp_lbl 15081 `"Quebec"', add
label define bpld_sp_lbl 15082 `"Lower Canada"', add
label define bpld_sp_lbl 15083 `"Canada East"', add
label define bpld_sp_lbl 15500 `"St. Pierre and Miquelon"', add
label define bpld_sp_lbl 16000 `"Atlantic Islands"', add
label define bpld_sp_lbl 16010 `"Bermuda"', add
label define bpld_sp_lbl 16020 `"Cape Verde"', add
label define bpld_sp_lbl 16030 `"Falkland Islands"', add
label define bpld_sp_lbl 16040 `"Greenland"', add
label define bpld_sp_lbl 16050 `"St. Helena and Ascension"', add
label define bpld_sp_lbl 16060 `"Canary Islands"', add
label define bpld_sp_lbl 19900 `"North America, ns"', add
label define bpld_sp_lbl 20000 `"Mexico"', add
label define bpld_sp_lbl 21000 `"Central America"', add
label define bpld_sp_lbl 21010 `"Belize/British Honduras"', add
label define bpld_sp_lbl 21020 `"Costa Rica"', add
label define bpld_sp_lbl 21030 `"El Salvador"', add
label define bpld_sp_lbl 21040 `"Guatemala"', add
label define bpld_sp_lbl 21050 `"Honduras"', add
label define bpld_sp_lbl 21060 `"Nicaragua"', add
label define bpld_sp_lbl 21070 `"Panama"', add
label define bpld_sp_lbl 21071 `"Canal Zone"', add
label define bpld_sp_lbl 21090 `"Central America, ns"', add
label define bpld_sp_lbl 25000 `"Cuba"', add
label define bpld_sp_lbl 26000 `"West Indies"', add
label define bpld_sp_lbl 26010 `"Dominican Republic"', add
label define bpld_sp_lbl 26020 `"Haiti"', add
label define bpld_sp_lbl 26030 `"Jamaica"', add
label define bpld_sp_lbl 26040 `"British West Indies"', add
label define bpld_sp_lbl 26041 `"Anguilla"', add
label define bpld_sp_lbl 26042 `"Antigua-Barbuda"', add
label define bpld_sp_lbl 26043 `"Bahamas"', add
label define bpld_sp_lbl 26044 `"Barbados"', add
label define bpld_sp_lbl 26045 `"British Virgin Islands"', add
label define bpld_sp_lbl 26046 `"Anegada"', add
label define bpld_sp_lbl 26047 `"Cooper"', add
label define bpld_sp_lbl 26048 `"Jost Van Dyke"', add
label define bpld_sp_lbl 26049 `"Peter"', add
label define bpld_sp_lbl 26050 `"Tortola"', add
label define bpld_sp_lbl 26051 `"Virgin Gorda"', add
label define bpld_sp_lbl 26052 `"Br. Virgin Islands, ns"', add
label define bpld_sp_lbl 26053 `"Cayman Islands"', add
label define bpld_sp_lbl 26054 `"Dominica"', add
label define bpld_sp_lbl 26055 `"Grenada"', add
label define bpld_sp_lbl 26056 `"Montserrat"', add
label define bpld_sp_lbl 26057 `"St. Kitts-Nevis"', add
label define bpld_sp_lbl 26058 `"St. Lucia"', add
label define bpld_sp_lbl 26059 `"St. Vincent"', add
label define bpld_sp_lbl 26060 `"Trinidad and Tobago"', add
label define bpld_sp_lbl 26061 `"Turks and Caicos"', add
label define bpld_sp_lbl 26069 `"Br. Virgin Islands, ns"', add
label define bpld_sp_lbl 26070 `"Other West Indies"', add
label define bpld_sp_lbl 26071 `"Aruba"', add
label define bpld_sp_lbl 26072 `"Netherlands Antilles"', add
label define bpld_sp_lbl 26073 `"Bonaire"', add
label define bpld_sp_lbl 26074 `"Curacao"', add
label define bpld_sp_lbl 26075 `"Dutch St. Maarten"', add
label define bpld_sp_lbl 26076 `"Saba"', add
label define bpld_sp_lbl 26077 `"St. Eustatius"', add
label define bpld_sp_lbl 26079 `"Dutch Caribbean, ns"', add
label define bpld_sp_lbl 26080 `"French St. Maarten"', add
label define bpld_sp_lbl 26081 `"Guadeloupe"', add
label define bpld_sp_lbl 26082 `"Martinique"', add
label define bpld_sp_lbl 26083 `"St. Barthelemy"', add
label define bpld_sp_lbl 26089 `"French Caribbean, ns"', add
label define bpld_sp_lbl 26090 `"Antilles, ns"', add
label define bpld_sp_lbl 26091 `"Caribbean, ns"', add
label define bpld_sp_lbl 26092 `"Latin America, ns"', add
label define bpld_sp_lbl 26093 `"Leeward Islands, ns"', add
label define bpld_sp_lbl 26094 `"West Indies, ns"', add
label define bpld_sp_lbl 26095 `"Windward Islands, ns"', add
label define bpld_sp_lbl 29900 `"Americas, ns"', add
label define bpld_sp_lbl 30000 `"South America"', add
label define bpld_sp_lbl 30005 `"Argentina"', add
label define bpld_sp_lbl 30010 `"Bolivia"', add
label define bpld_sp_lbl 30015 `"Brazil"', add
label define bpld_sp_lbl 30020 `"Chile"', add
label define bpld_sp_lbl 30025 `"Colombia"', add
label define bpld_sp_lbl 30030 `"Ecuador"', add
label define bpld_sp_lbl 30035 `"French Guiana"', add
label define bpld_sp_lbl 30040 `"Guyana/British Guiana"', add
label define bpld_sp_lbl 30045 `"Paraguay"', add
label define bpld_sp_lbl 30050 `"Peru"', add
label define bpld_sp_lbl 30055 `"Suriname"', add
label define bpld_sp_lbl 30060 `"Uruguay"', add
label define bpld_sp_lbl 30065 `"Venezuela"', add
label define bpld_sp_lbl 30090 `"South America, ns"', add
label define bpld_sp_lbl 30091 `"South and Central America, n.s."', add
label define bpld_sp_lbl 40000 `"Denmark"', add
label define bpld_sp_lbl 40010 `"Faeroe Islands"', add
label define bpld_sp_lbl 40100 `"Finland"', add
label define bpld_sp_lbl 40200 `"Iceland"', add
label define bpld_sp_lbl 40300 `"Lapland, ns"', add
label define bpld_sp_lbl 40400 `"Norway"', add
label define bpld_sp_lbl 40410 `"Svalbard and Jan Meyen"', add
label define bpld_sp_lbl 40411 `"Svalbard"', add
label define bpld_sp_lbl 40412 `"Jan Meyen"', add
label define bpld_sp_lbl 40500 `"Sweden"', add
label define bpld_sp_lbl 41000 `"England"', add
label define bpld_sp_lbl 41010 `"Channel Islands"', add
label define bpld_sp_lbl 41011 `"Guernsey"', add
label define bpld_sp_lbl 41012 `"Jersey"', add
label define bpld_sp_lbl 41020 `"Isle of Man"', add
label define bpld_sp_lbl 41100 `"Scotland"', add
label define bpld_sp_lbl 41200 `"Wales"', add
label define bpld_sp_lbl 41300 `"United Kingdom, ns"', add
label define bpld_sp_lbl 41400 `"Ireland"', add
label define bpld_sp_lbl 41410 `"Northern Ireland"', add
label define bpld_sp_lbl 41900 `"Northern Europe, ns"', add
label define bpld_sp_lbl 42000 `"Belgium"', add
label define bpld_sp_lbl 42100 `"France"', add
label define bpld_sp_lbl 42110 `"Alsace-Lorraine"', add
label define bpld_sp_lbl 42111 `"Alsace"', add
label define bpld_sp_lbl 42112 `"Lorraine"', add
label define bpld_sp_lbl 42200 `"Liechtenstein"', add
label define bpld_sp_lbl 42300 `"Luxembourg"', add
label define bpld_sp_lbl 42400 `"Monaco"', add
label define bpld_sp_lbl 42500 `"Netherlands"', add
label define bpld_sp_lbl 42600 `"Switzerland"', add
label define bpld_sp_lbl 42900 `"Western Europe, ns"', add
label define bpld_sp_lbl 43000 `"Albania"', add
label define bpld_sp_lbl 43100 `"Andorra"', add
label define bpld_sp_lbl 43200 `"Gibraltar"', add
label define bpld_sp_lbl 43300 `"Greece"', add
label define bpld_sp_lbl 43310 `"Dodecanese Islands"', add
label define bpld_sp_lbl 43320 `"Turkey Greece"', add
label define bpld_sp_lbl 43330 `"Macedonia"', add
label define bpld_sp_lbl 43400 `"Italy"', add
label define bpld_sp_lbl 43500 `"Malta"', add
label define bpld_sp_lbl 43600 `"Portugal"', add
label define bpld_sp_lbl 43610 `"Azores"', add
label define bpld_sp_lbl 43620 `"Madeira Islands"', add
label define bpld_sp_lbl 43630 `"Cape Verde Islands"', add
label define bpld_sp_lbl 43640 `"St. Miguel"', add
label define bpld_sp_lbl 43700 `"San Marino"', add
label define bpld_sp_lbl 43800 `"Spain"', add
label define bpld_sp_lbl 43900 `"Vatican City"', add
label define bpld_sp_lbl 44000 `"Southern Europe, ns"', add
label define bpld_sp_lbl 45000 `"Austria"', add
label define bpld_sp_lbl 45010 `"Austria-Hungary"', add
label define bpld_sp_lbl 45020 `"Austria-Graz"', add
label define bpld_sp_lbl 45030 `"Austria-Linz"', add
label define bpld_sp_lbl 45040 `"Austria-Salzburg"', add
label define bpld_sp_lbl 45050 `"Austria-Tyrol"', add
label define bpld_sp_lbl 45060 `"Austria-Vienna"', add
label define bpld_sp_lbl 45070 `"Austria-Kaernsten"', add
label define bpld_sp_lbl 45080 `"Austria-Neustadt"', add
label define bpld_sp_lbl 45100 `"Bulgaria"', add
label define bpld_sp_lbl 45200 `"Czechoslovakia"', add
label define bpld_sp_lbl 45210 `"Bohemia"', add
label define bpld_sp_lbl 45211 `"Bohemia-Moravia"', add
label define bpld_sp_lbl 45212 `"Slovakia"', add
label define bpld_sp_lbl 45213 `"Czech Republic"', add
label define bpld_sp_lbl 45300 `"Germany"', add
label define bpld_sp_lbl 45301 `"Berlin"', add
label define bpld_sp_lbl 45302 `"West Berlin"', add
label define bpld_sp_lbl 45303 `"East Berlin"', add
label define bpld_sp_lbl 45310 `"West Germany"', add
label define bpld_sp_lbl 45311 `"Baden"', add
label define bpld_sp_lbl 45312 `"Bavaria"', add
label define bpld_sp_lbl 45313 `"Braunschweig"', add
label define bpld_sp_lbl 45314 `"Bremen"', add
label define bpld_sp_lbl 45315 `"Hamburg"', add
label define bpld_sp_lbl 45316 `"Hanover"', add
label define bpld_sp_lbl 45317 `"Hessen"', add
label define bpld_sp_lbl 45318 `"Hesse-Nassau"', add
label define bpld_sp_lbl 45319 `"Holstein"', add
label define bpld_sp_lbl 45320 `"Lippe"', add
label define bpld_sp_lbl 45321 `"Lubeck"', add
label define bpld_sp_lbl 45322 `"Oldenburg"', add
label define bpld_sp_lbl 45323 `"Rheinland"', add
label define bpld_sp_lbl 45324 `"Schleswig"', add
label define bpld_sp_lbl 45325 `"Schleswig-Holstein"', add
label define bpld_sp_lbl 45326 `"Schwarzburg"', add
label define bpld_sp_lbl 45327 `"Westphalia"', add
label define bpld_sp_lbl 45328 `"Wurttemberg"', add
label define bpld_sp_lbl 45329 `"Waldeck"', add
label define bpld_sp_lbl 45330 `"Wittenberg"', add
label define bpld_sp_lbl 45331 `"Frankfurt"', add
label define bpld_sp_lbl 45332 `"Saarland"', add
label define bpld_sp_lbl 45333 `"Nordrhein-Westfalen"', add
label define bpld_sp_lbl 45340 `"East Germany"', add
label define bpld_sp_lbl 45341 `"Anhalt"', add
label define bpld_sp_lbl 45342 `"Brandenburg"', add
label define bpld_sp_lbl 45344 `"Mecklenburg"', add
label define bpld_sp_lbl 45345 `"Sachsen-Altenburg"', add
label define bpld_sp_lbl 45346 `"Sachsen-Coburg"', add
label define bpld_sp_lbl 45347 `"Sachsen-Gotha"', add
label define bpld_sp_lbl 45348 `"Sachsen-Meiningen"', add
label define bpld_sp_lbl 45349 `"Sachsen-Weimar-Eisenach"', add
label define bpld_sp_lbl 45350 `"Probable Saxony"', add
label define bpld_sp_lbl 45351 `"Schwerin"', add
label define bpld_sp_lbl 45352 `"Strelitz"', add
label define bpld_sp_lbl 45353 `"Probably Thuringian States"', add
label define bpld_sp_lbl 45360 `"Prussia, nec"', add
label define bpld_sp_lbl 45361 `"Hohenzollern"', add
label define bpld_sp_lbl 45362 `"Niedersachsen"', add
label define bpld_sp_lbl 45400 `"Hungary"', add
label define bpld_sp_lbl 45500 `"Poland"', add
label define bpld_sp_lbl 45510 `"Austrian Poland"', add
label define bpld_sp_lbl 45511 `"Galicia"', add
label define bpld_sp_lbl 45520 `"German Poland"', add
label define bpld_sp_lbl 45521 `"East Prussia"', add
label define bpld_sp_lbl 45522 `"Pomerania"', add
label define bpld_sp_lbl 45523 `"Posen"', add
label define bpld_sp_lbl 45524 `"Prussian Poland"', add
label define bpld_sp_lbl 45525 `"Silesia"', add
label define bpld_sp_lbl 45526 `"West Prussia"', add
label define bpld_sp_lbl 45530 `"Russian Poland"', add
label define bpld_sp_lbl 45600 `"Romania"', add
label define bpld_sp_lbl 45610 `"Transylvania"', add
label define bpld_sp_lbl 45700 `"Yugoslavia"', add
label define bpld_sp_lbl 45710 `"Croatia"', add
label define bpld_sp_lbl 45720 `"Montenegro"', add
label define bpld_sp_lbl 45730 `"Serbia"', add
label define bpld_sp_lbl 45740 `"Bosnia"', add
label define bpld_sp_lbl 45750 `"Dalmatia"', add
label define bpld_sp_lbl 45760 `"Slovonia"', add
label define bpld_sp_lbl 45770 `"Carniola"', add
label define bpld_sp_lbl 45780 `"Slovenia"', add
label define bpld_sp_lbl 45790 `"Kosovo"', add
label define bpld_sp_lbl 45800 `"Central Europe, ns"', add
label define bpld_sp_lbl 45900 `"Eastern Europe, ns"', add
label define bpld_sp_lbl 46000 `"Estonia"', add
label define bpld_sp_lbl 46100 `"Latvia"', add
label define bpld_sp_lbl 46200 `"Lithuania"', add
label define bpld_sp_lbl 46300 `"Baltic States, ns"', add
label define bpld_sp_lbl 46500 `"Other USSR/Russia"', add
label define bpld_sp_lbl 46510 `"Byelorussia"', add
label define bpld_sp_lbl 46520 `"Moldavia"', add
label define bpld_sp_lbl 46521 `"Bessarabia"', add
label define bpld_sp_lbl 46530 `"Ukraine"', add
label define bpld_sp_lbl 46540 `"Armenia"', add
label define bpld_sp_lbl 46541 `"Azerbaijan"', add
label define bpld_sp_lbl 46542 `"Republic of Georgia"', add
label define bpld_sp_lbl 46543 `"Kazakhstan"', add
label define bpld_sp_lbl 46544 `"Kirghizia"', add
label define bpld_sp_lbl 46545 `"Tadzhik"', add
label define bpld_sp_lbl 46546 `"Turkmenistan"', add
label define bpld_sp_lbl 46547 `"Uzbekistan"', add
label define bpld_sp_lbl 46548 `"Siberia"', add
label define bpld_sp_lbl 46590 `"USSR, ns"', add
label define bpld_sp_lbl 49900 `"Europe, ns."', add
label define bpld_sp_lbl 50000 `"China"', add
label define bpld_sp_lbl 50010 `"Hong Kong"', add
label define bpld_sp_lbl 50020 `"Macau"', add
label define bpld_sp_lbl 50030 `"Mongolia"', add
label define bpld_sp_lbl 50040 `"Taiwan"', add
label define bpld_sp_lbl 50100 `"Japan"', add
label define bpld_sp_lbl 50200 `"Korea"', add
label define bpld_sp_lbl 50210 `"North Korea"', add
label define bpld_sp_lbl 50220 `"South Korea"', add
label define bpld_sp_lbl 50900 `"East Asia, ns"', add
label define bpld_sp_lbl 51000 `"Brunei"', add
label define bpld_sp_lbl 51100 `"Cambodia (Kampuchea)"', add
label define bpld_sp_lbl 51200 `"Indonesia"', add
label define bpld_sp_lbl 51210 `"East Indies"', add
label define bpld_sp_lbl 51220 `"East Timor"', add
label define bpld_sp_lbl 51300 `"Laos"', add
label define bpld_sp_lbl 51400 `"Malaysia"', add
label define bpld_sp_lbl 51500 `"Philippines"', add
label define bpld_sp_lbl 51600 `"Singapore"', add
label define bpld_sp_lbl 51700 `"Thailand"', add
label define bpld_sp_lbl 51800 `"Vietnam"', add
label define bpld_sp_lbl 51900 `"Southeast Asia, ns"', add
label define bpld_sp_lbl 51910 `"Indochina, ns"', add
label define bpld_sp_lbl 52000 `"Afghanistan"', add
label define bpld_sp_lbl 52100 `"India"', add
label define bpld_sp_lbl 52110 `"Bangladesh"', add
label define bpld_sp_lbl 52120 `"Bhutan"', add
label define bpld_sp_lbl 52130 `"Burma (Myanmar)"', add
label define bpld_sp_lbl 52140 `"Pakistan"', add
label define bpld_sp_lbl 52150 `"Sri Lanka (Ceylon)"', add
label define bpld_sp_lbl 52200 `"Iran"', add
label define bpld_sp_lbl 52300 `"Maldives"', add
label define bpld_sp_lbl 52400 `"Nepal"', add
label define bpld_sp_lbl 53000 `"Bahrain"', add
label define bpld_sp_lbl 53100 `"Cyprus"', add
label define bpld_sp_lbl 53200 `"Iraq"', add
label define bpld_sp_lbl 53210 `"Mesopotamia"', add
label define bpld_sp_lbl 53300 `"Iraq/Saudi Arabia"', add
label define bpld_sp_lbl 53400 `"Israel/Palestine"', add
label define bpld_sp_lbl 53410 `"Gaza Strip"', add
label define bpld_sp_lbl 53420 `"Palestine"', add
label define bpld_sp_lbl 53430 `"West Bank"', add
label define bpld_sp_lbl 53440 `"Israel"', add
label define bpld_sp_lbl 53500 `"Jordan"', add
label define bpld_sp_lbl 53600 `"Kuwait"', add
label define bpld_sp_lbl 53700 `"Lebanon"', add
label define bpld_sp_lbl 53800 `"Oman"', add
label define bpld_sp_lbl 53900 `"Qatar"', add
label define bpld_sp_lbl 54000 `"Saudi Arabia"', add
label define bpld_sp_lbl 54100 `"Syria"', add
label define bpld_sp_lbl 54200 `"Turkey"', add
label define bpld_sp_lbl 54210 `"European Turkey"', add
label define bpld_sp_lbl 54220 `"Asian Turkey"', add
label define bpld_sp_lbl 54300 `"United Arab Emirates"', add
label define bpld_sp_lbl 54400 `"Yemen Arab Republic (North)"', add
label define bpld_sp_lbl 54500 `"Yemen, PDR (South)"', add
label define bpld_sp_lbl 54600 `"Persian Gulf States, ns"', add
label define bpld_sp_lbl 54700 `"Middle East, ns"', add
label define bpld_sp_lbl 54800 `"Southwest Asia, nec/ns"', add
label define bpld_sp_lbl 54900 `"Asia Minor, ns"', add
label define bpld_sp_lbl 55000 `"South Asia, nec"', add
label define bpld_sp_lbl 59900 `"Asia, nec/ns"', add
label define bpld_sp_lbl 60000 `"Africa"', add
label define bpld_sp_lbl 60010 `"Northern Africa"', add
label define bpld_sp_lbl 60011 `"Algeria"', add
label define bpld_sp_lbl 60012 `"Egypt/United Arab Rep."', add
label define bpld_sp_lbl 60013 `"Libya"', add
label define bpld_sp_lbl 60014 `"Morocco"', add
label define bpld_sp_lbl 60015 `"Sudan"', add
label define bpld_sp_lbl 60016 `"Tunisia"', add
label define bpld_sp_lbl 60017 `"Western Sahara"', add
label define bpld_sp_lbl 60019 `"North Africa, ns"', add
label define bpld_sp_lbl 60020 `"Benin"', add
label define bpld_sp_lbl 60021 `"Burkina Faso"', add
label define bpld_sp_lbl 60022 `"Gambia"', add
label define bpld_sp_lbl 60023 `"Ghana"', add
label define bpld_sp_lbl 60024 `"Guinea"', add
label define bpld_sp_lbl 60025 `"Guinea-Bissau"', add
label define bpld_sp_lbl 60026 `"Ivory Coast"', add
label define bpld_sp_lbl 60027 `"Liberia"', add
label define bpld_sp_lbl 60028 `"Mali"', add
label define bpld_sp_lbl 60029 `"Mauritania"', add
label define bpld_sp_lbl 60030 `"Niger"', add
label define bpld_sp_lbl 60031 `"Nigeria"', add
label define bpld_sp_lbl 60032 `"Senegal"', add
label define bpld_sp_lbl 60033 `"Sierra Leone"', add
label define bpld_sp_lbl 60034 `"Togo"', add
label define bpld_sp_lbl 60038 `"Western Africa, ns"', add
label define bpld_sp_lbl 60039 `"French West Africa, ns"', add
label define bpld_sp_lbl 60040 `"British Indian Ocean Territory"', add
label define bpld_sp_lbl 60041 `"Burundi"', add
label define bpld_sp_lbl 60042 `"Comoros"', add
label define bpld_sp_lbl 60043 `"Djibouti"', add
label define bpld_sp_lbl 60044 `"Ethiopia"', add
label define bpld_sp_lbl 60045 `"Kenya"', add
label define bpld_sp_lbl 60046 `"Madagascar"', add
label define bpld_sp_lbl 60047 `"Malawi"', add
label define bpld_sp_lbl 60048 `"Mauritius"', add
label define bpld_sp_lbl 60049 `"Mozambique"', add
label define bpld_sp_lbl 60050 `"Reunion"', add
label define bpld_sp_lbl 60051 `"Rwanda"', add
label define bpld_sp_lbl 60052 `"Seychelles"', add
label define bpld_sp_lbl 60053 `"Somalia"', add
label define bpld_sp_lbl 60054 `"Tanzania"', add
label define bpld_sp_lbl 60055 `"Uganda"', add
label define bpld_sp_lbl 60056 `"Zambia"', add
label define bpld_sp_lbl 60057 `"Zimbabwe"', add
label define bpld_sp_lbl 60058 `"Bassas de India"', add
label define bpld_sp_lbl 60059 `"Europa"', add
label define bpld_sp_lbl 60060 `"Gloriosos"', add
label define bpld_sp_lbl 60061 `"Juan de Nova"', add
label define bpld_sp_lbl 60062 `"Mayotte"', add
label define bpld_sp_lbl 60063 `"Tromelin"', add
label define bpld_sp_lbl 60064 `"Eastern Africa, nec/ns"', add
label define bpld_sp_lbl 60065 `"Eritrea"', add
label define bpld_sp_lbl 60070 `"Central Africa"', add
label define bpld_sp_lbl 60071 `"Angola"', add
label define bpld_sp_lbl 60072 `"Cameroon"', add
label define bpld_sp_lbl 60073 `"Central African Republic"', add
label define bpld_sp_lbl 60074 `"Chad"', add
label define bpld_sp_lbl 60075 `"Congo"', add
label define bpld_sp_lbl 60076 `"Equatorial Guinea"', add
label define bpld_sp_lbl 60077 `"Gabon"', add
label define bpld_sp_lbl 60078 `"Sao Tome and Principe"', add
label define bpld_sp_lbl 60079 `"Zaire"', add
label define bpld_sp_lbl 60080 `"Central Africa, ns"', add
label define bpld_sp_lbl 60081 `"Equatorial Africa, ns"', add
label define bpld_sp_lbl 60082 `"French Equatorial Africa, ns"', add
label define bpld_sp_lbl 60090 `"Southern Africa"', add
label define bpld_sp_lbl 60091 `"Botswana"', add
label define bpld_sp_lbl 60092 `"Lesotho"', add
label define bpld_sp_lbl 60093 `"Namibia"', add
label define bpld_sp_lbl 60094 `"South Africa (Union of)"', add
label define bpld_sp_lbl 60095 `"Swaziland"', add
label define bpld_sp_lbl 60096 `"Southern Africa, ns"', add
label define bpld_sp_lbl 60099 `"Africa, ns/nec"', add
label define bpld_sp_lbl 70000 `"Australia and New Zealand"', add
label define bpld_sp_lbl 70010 `"Australia"', add
label define bpld_sp_lbl 70011 `"Ashmore and Cartier Islands"', add
label define bpld_sp_lbl 70012 `"Coral Sea Islands Territory"', add
label define bpld_sp_lbl 70013 `"Christmas Island"', add
label define bpld_sp_lbl 70014 `"Cocos Islands"', add
label define bpld_sp_lbl 70020 `"New Zealand"', add
label define bpld_sp_lbl 71000 `"Pacific Islands"', add
label define bpld_sp_lbl 71010 `"New Caledonia"', add
label define bpld_sp_lbl 71012 `"Papua New Guinea"', add
label define bpld_sp_lbl 71013 `"Solomon Islands"', add
label define bpld_sp_lbl 71014 `"Vanuatu (New Hebrides)"', add
label define bpld_sp_lbl 71015 `"Fiji"', add
label define bpld_sp_lbl 71016 `"Melanesia, ns"', add
label define bpld_sp_lbl 71017 `"Norfolk Islands"', add
label define bpld_sp_lbl 71018 `"Niue"', add
label define bpld_sp_lbl 71020 `"Cook Islands"', add
label define bpld_sp_lbl 71022 `"French Polynesia"', add
label define bpld_sp_lbl 71023 `"Tonga"', add
label define bpld_sp_lbl 71024 `"Wallis and Futuna Islands"', add
label define bpld_sp_lbl 71025 `"Western Samoa"', add
label define bpld_sp_lbl 71026 `"Pitcairn Island"', add
label define bpld_sp_lbl 71027 `"Tokelau"', add
label define bpld_sp_lbl 71028 `"Tuvalu"', add
label define bpld_sp_lbl 71029 `"Polynesia, ns"', add
label define bpld_sp_lbl 71032 `"Kiribati"', add
label define bpld_sp_lbl 71033 `"Canton and Enderbury"', add
label define bpld_sp_lbl 71034 `"Nauru"', add
label define bpld_sp_lbl 71039 `"Micronesia, ns"', add
label define bpld_sp_lbl 71040 `"US Pacific Trust Territories"', add
label define bpld_sp_lbl 71041 `"Marshall Islands"', add
label define bpld_sp_lbl 71042 `"Micronesia"', add
label define bpld_sp_lbl 71043 `"Kosrae"', add
label define bpld_sp_lbl 71044 `"Pohnpei"', add
label define bpld_sp_lbl 71045 `"Truk"', add
label define bpld_sp_lbl 71046 `"Yap"', add
label define bpld_sp_lbl 71047 `"Northern Mariana Islands"', add
label define bpld_sp_lbl 71048 `"Palau"', add
label define bpld_sp_lbl 71049 `"Pacific Trust Terr, ns"', add
label define bpld_sp_lbl 71050 `"Clipperton Island"', add
label define bpld_sp_lbl 71090 `"Oceania, ns/nec"', add
label define bpld_sp_lbl 80000 `"Antarctica, ns/nec"', add
label define bpld_sp_lbl 80010 `"Bouvet Islands"', add
label define bpld_sp_lbl 80020 `"British Antarctic Terr."', add
label define bpld_sp_lbl 80030 `"Dronning Maud Land"', add
label define bpld_sp_lbl 80040 `"French Southern and Antarctic Lands"', add
label define bpld_sp_lbl 80050 `"Heard and McDonald Islands"', add
label define bpld_sp_lbl 90000 `"Abroad (unknown) or at sea"', add
label define bpld_sp_lbl 90010 `"Abroad, ns"', add
label define bpld_sp_lbl 90011 `"Abroad (US citizen)"', add
label define bpld_sp_lbl 90020 `"At sea"', add
label define bpld_sp_lbl 90021 `"At sea (US citizen)"', add
label define bpld_sp_lbl 90022 `"At sea or abroad (U.S. citizen)"', add
label define bpld_sp_lbl 95000 `"Other n.e.c."', add
label define bpld_sp_lbl 99900 `"Missing/blank"', add
label values bpld_sp bpld_sp_lbl

label define higrade_sp_lbl 00 `"N/A  (or None, 1980)"'
label define higrade_sp_lbl 01 `"None"', add
label define higrade_sp_lbl 02 `"Nursery school"', add
label define higrade_sp_lbl 03 `"Kindergarten"', add
label define higrade_sp_lbl 04 `"1st grade"', add
label define higrade_sp_lbl 05 `"2nd grade"', add
label define higrade_sp_lbl 06 `"3rd grade"', add
label define higrade_sp_lbl 07 `"4th grade"', add
label define higrade_sp_lbl 08 `"5th grade"', add
label define higrade_sp_lbl 09 `"6th grade"', add
label define higrade_sp_lbl 10 `"7th grade"', add
label define higrade_sp_lbl 11 `"8th grade"', add
label define higrade_sp_lbl 12 `"9th grade"', add
label define higrade_sp_lbl 13 `"10th grade"', add
label define higrade_sp_lbl 14 `"11th grade"', add
label define higrade_sp_lbl 15 `"12th grade"', add
label define higrade_sp_lbl 16 `"1st year"', add
label define higrade_sp_lbl 17 `"2nd year"', add
label define higrade_sp_lbl 18 `"3rd year"', add
label define higrade_sp_lbl 19 `"4th year"', add
label define higrade_sp_lbl 20 `"5th year or more (40-50)"', add
label define higrade_sp_lbl 21 `"6th year or more (60,70)"', add
label define higrade_sp_lbl 22 `"7th year"', add
label define higrade_sp_lbl 23 `"8th year or more"', add
label values higrade_sp higrade_sp_lbl

label define higraded_sp_lbl 000 `"N/A"'
label define higraded_sp_lbl 010 `"None"', add
label define higraded_sp_lbl 011 `"Did not finish nurs sch"', add
label define higraded_sp_lbl 012 `"Attending nurs sch"', add
label define higraded_sp_lbl 020 `"Nursery school"', add
label define higraded_sp_lbl 021 `"Did not finish kindergart"', add
label define higraded_sp_lbl 022 `"Attending kindergarten"', add
label define higraded_sp_lbl 030 `"Kindergarten"', add
label define higraded_sp_lbl 031 `"Did not finish 1st grade"', add
label define higraded_sp_lbl 032 `"Attending 1st grade"', add
label define higraded_sp_lbl 040 `"1st grade"', add
label define higraded_sp_lbl 041 `"Did not finish 2nd grade"', add
label define higraded_sp_lbl 042 `"Attending 2nd grade"', add
label define higraded_sp_lbl 050 `"2nd grade"', add
label define higraded_sp_lbl 051 `"Did not finish 3rd grade"', add
label define higraded_sp_lbl 052 `"Attending 3rd grade"', add
label define higraded_sp_lbl 060 `"3rd grade"', add
label define higraded_sp_lbl 061 `"Did not finish 4th grade"', add
label define higraded_sp_lbl 062 `"Attending 4th grade"', add
label define higraded_sp_lbl 070 `"4th grade"', add
label define higraded_sp_lbl 071 `"Did not finish 5th grade"', add
label define higraded_sp_lbl 072 `"Attending 5th grade"', add
label define higraded_sp_lbl 080 `"5th grade"', add
label define higraded_sp_lbl 081 `"Did not finish 6th grade"', add
label define higraded_sp_lbl 082 `"Attending 6th grade"', add
label define higraded_sp_lbl 090 `"6th grade"', add
label define higraded_sp_lbl 091 `"Did not finish 7th grade"', add
label define higraded_sp_lbl 092 `"Attending 7th grade"', add
label define higraded_sp_lbl 100 `"7th grade"', add
label define higraded_sp_lbl 101 `"Did not finish 8th grade"', add
label define higraded_sp_lbl 102 `"Attending 8th grade"', add
label define higraded_sp_lbl 110 `"8th grade"', add
label define higraded_sp_lbl 111 `"Did not finish 9th grade"', add
label define higraded_sp_lbl 112 `"Attending 9th grade"', add
label define higraded_sp_lbl 120 `"9th grade"', add
label define higraded_sp_lbl 121 `"Did not finish 10th grade"', add
label define higraded_sp_lbl 122 `"Attending 10th grade"', add
label define higraded_sp_lbl 130 `"10th grade"', add
label define higraded_sp_lbl 131 `"Did not finish 11th grade"', add
label define higraded_sp_lbl 132 `"Attending 11th grade"', add
label define higraded_sp_lbl 140 `"11th grade"', add
label define higraded_sp_lbl 141 `"Did not finish 12th grade"', add
label define higraded_sp_lbl 142 `"Attending 12th grade"', add
label define higraded_sp_lbl 150 `"12th grade"', add
label define higraded_sp_lbl 151 `"Did not finish 1st year college"', add
label define higraded_sp_lbl 152 `"Attending 1st yesr college"', add
label define higraded_sp_lbl 160 `"1st year of college"', add
label define higraded_sp_lbl 161 `"Did not finish 2nd year of college"', add
label define higraded_sp_lbl 162 `"Attending 2nd year of college"', add
label define higraded_sp_lbl 170 `"2nd year of college"', add
label define higraded_sp_lbl 171 `"Did not finish 3rd year of college"', add
label define higraded_sp_lbl 172 `"Attending 3rd year of college"', add
label define higraded_sp_lbl 180 `"3rd year of college"', add
label define higraded_sp_lbl 181 `"Did not finish 4th year of college"', add
label define higraded_sp_lbl 182 `"Attending 4th year of college"', add
label define higraded_sp_lbl 190 `"4th year of college"', add
label define higraded_sp_lbl 191 `"Did not finish 5th year of college"', add
label define higraded_sp_lbl 192 `"Attending 5th year of college"', add
label define higraded_sp_lbl 200 `"5th year or more of college (1940, 50)"', add
label define higraded_sp_lbl 201 `"Did not finish 6th year of college"', add
label define higraded_sp_lbl 202 `"Attending 6th year of college"', add
label define higraded_sp_lbl 210 `"6th year or more of college (1960,70)"', add
label define higraded_sp_lbl 211 `"Did not finish 7th year of college"', add
label define higraded_sp_lbl 212 `"Attending 7th year of college"', add
label define higraded_sp_lbl 220 `"7th year of college"', add
label define higraded_sp_lbl 221 `"Did not finish 8th year of college"', add
label define higraded_sp_lbl 222 `"Attending 8th year of college"', add
label define higraded_sp_lbl 230 `"8th year or more of college"', add
label define higraded_sp_lbl 999 `"Missing"', add
label values higraded_sp higraded_sp_lbl

label define empstat_sp_lbl 0 `"N/A"'
label define empstat_sp_lbl 1 `"Employed"', add
label define empstat_sp_lbl 2 `"Unemployed"', add
label define empstat_sp_lbl 3 `"Not in labor force"', add
label values empstat_sp empstat_sp_lbl

label define empstatd_sp_lbl 00 `"N/A"'
label define empstatd_sp_lbl 10 `"At work"', add
label define empstatd_sp_lbl 11 `"At work, public emerg"', add
label define empstatd_sp_lbl 12 `"Has job, not working"', add
label define empstatd_sp_lbl 13 `"Armed forces"', add
label define empstatd_sp_lbl 14 `"Armed forces--at work"', add
label define empstatd_sp_lbl 15 `"Armed forces--not at work but with job"', add
label define empstatd_sp_lbl 20 `"Unemployed"', add
label define empstatd_sp_lbl 21 `"Unemp, exper worker"', add
label define empstatd_sp_lbl 22 `"Unemp, new worker"', add
label define empstatd_sp_lbl 30 `"Not in Labor Force"', add
label define empstatd_sp_lbl 31 `"NILF, housework"', add
label define empstatd_sp_lbl 32 `"NILF, unable to work"', add
label define empstatd_sp_lbl 33 `"NILF, school"', add
label define empstatd_sp_lbl 34 `"NILF, other"', add
label values empstatd_sp empstatd_sp_lbl

label define labforce_sp_lbl 0 `"N/A"'
label define labforce_sp_lbl 1 `"No, not in the labor force"', add
label define labforce_sp_lbl 2 `"Yes, in the labor force"', add
label values labforce_sp labforce_sp_lbl

label define occ1950_sp_lbl 000 `"Accountants and auditors"'
label define occ1950_sp_lbl 001 `"Actors and actresses"', add
label define occ1950_sp_lbl 002 `"Airplane pilots and navigators"', add
label define occ1950_sp_lbl 003 `"Architects"', add
label define occ1950_sp_lbl 004 `"Artists and art teachers"', add
label define occ1950_sp_lbl 005 `"Athletes"', add
label define occ1950_sp_lbl 006 `"Authors"', add
label define occ1950_sp_lbl 007 `"Chemists"', add
label define occ1950_sp_lbl 008 `"Chiropractors"', add
label define occ1950_sp_lbl 009 `"Clergymen"', add
label define occ1950_sp_lbl 010 `"College presidents and deans"', add
label define occ1950_sp_lbl 012 `"Agricultural sciences-Professors and instructors"', add
label define occ1950_sp_lbl 013 `"Biological sciences-Professors and instructors"', add
label define occ1950_sp_lbl 014 `"Chemistry-Professors and instructors"', add
label define occ1950_sp_lbl 015 `"Economics-Professors and instructors"', add
label define occ1950_sp_lbl 016 `"Engineering-Professors and instructors"', add
label define occ1950_sp_lbl 017 `"Geology and geophysics-Professors and instructors"', add
label define occ1950_sp_lbl 018 `"Mathematics-Professors and instructors"', add
label define occ1950_sp_lbl 019 `"Medical Sciences-Professors and instructors"', add
label define occ1950_sp_lbl 023 `"Physics-Professors and instructors"', add
label define occ1950_sp_lbl 024 `"Psychology-Professors and instructors"', add
label define occ1950_sp_lbl 025 `"Statistics-Professors and instructors"', add
label define occ1950_sp_lbl 026 `"Natural science (nec)-Professors and instructors"', add
label define occ1950_sp_lbl 027 `"Social sciences (nec)-Professors and instructors"', add
label define occ1950_sp_lbl 028 `"Non-scientific subjects-Professors and instructors"', add
label define occ1950_sp_lbl 029 `"Subject not specified-Professors and instructors"', add
label define occ1950_sp_lbl 031 `"Dancers and dancing teachers"', add
label define occ1950_sp_lbl 032 `"Dentists"', add
label define occ1950_sp_lbl 033 `"Designers"', add
label define occ1950_sp_lbl 034 `"Dietitians and nutritionists"', add
label define occ1950_sp_lbl 035 `"Draftsmen"', add
label define occ1950_sp_lbl 036 `"Editors and reporters"', add
label define occ1950_sp_lbl 041 `"Aeronautical-Engineers"', add
label define occ1950_sp_lbl 042 `"Chemical-Engineers"', add
label define occ1950_sp_lbl 043 `"Civil-Engineers"', add
label define occ1950_sp_lbl 044 `"Electrical-Engineers"', add
label define occ1950_sp_lbl 045 `"Industrial-Engineers"', add
label define occ1950_sp_lbl 046 `"Mechanical-Engineers"', add
label define occ1950_sp_lbl 047 `"Metallurgical, metallurgists-Engineers"', add
label define occ1950_sp_lbl 048 `"Mining-Engineers"', add
label define occ1950_sp_lbl 049 `"Engineers (nec)"', add
label define occ1950_sp_lbl 051 `"Entertainers (nec)"', add
label define occ1950_sp_lbl 052 `"Farm and home management advisors"', add
label define occ1950_sp_lbl 053 `"Foresters and conservationists"', add
label define occ1950_sp_lbl 054 `"Funeral directors and embalmers"', add
label define occ1950_sp_lbl 055 `"Lawyers and judges"', add
label define occ1950_sp_lbl 056 `"Librarians"', add
label define occ1950_sp_lbl 057 `"Musicians and music teachers"', add
label define occ1950_sp_lbl 058 `"Nurses, professional"', add
label define occ1950_sp_lbl 059 `"Nurses, student professional"', add
label define occ1950_sp_lbl 061 `"Agricultural scientists"', add
label define occ1950_sp_lbl 062 `"Biological scientists"', add
label define occ1950_sp_lbl 063 `"Geologists and geophysicists"', add
label define occ1950_sp_lbl 067 `"Mathematicians"', add
label define occ1950_sp_lbl 068 `"Physicists"', add
label define occ1950_sp_lbl 069 `"Misc. natural scientists"', add
label define occ1950_sp_lbl 070 `"Optometrists"', add
label define occ1950_sp_lbl 071 `"Osteopaths"', add
label define occ1950_sp_lbl 072 `"Personnel and labor relations workers"', add
label define occ1950_sp_lbl 073 `"Pharmacists"', add
label define occ1950_sp_lbl 074 `"Photographers"', add
label define occ1950_sp_lbl 075 `"Physicians and surgeons"', add
label define occ1950_sp_lbl 076 `"Radio operators"', add
label define occ1950_sp_lbl 077 `"Recreation and group workers"', add
label define occ1950_sp_lbl 078 `"Religious workers"', add
label define occ1950_sp_lbl 079 `"Social and welfare workers, except group"', add
label define occ1950_sp_lbl 081 `"Economists"', add
label define occ1950_sp_lbl 082 `"Psychologists"', add
label define occ1950_sp_lbl 083 `"Statisticians and actuaries"', add
label define occ1950_sp_lbl 084 `"Misc social scientists"', add
label define occ1950_sp_lbl 091 `"Sports instructors and officials"', add
label define occ1950_sp_lbl 092 `"Surveyors"', add
label define occ1950_sp_lbl 093 `"Teachers (n.e.c.)"', add
label define occ1950_sp_lbl 094 `"Medical and dental-technicians"', add
label define occ1950_sp_lbl 095 `"Testing-technicians"', add
label define occ1950_sp_lbl 096 `"Technicians (nec)"', add
label define occ1950_sp_lbl 097 `"Therapists and healers (nec)"', add
label define occ1950_sp_lbl 098 `"Veterinarians"', add
label define occ1950_sp_lbl 099 `"Professional, technical and kindred workers (nec)"', add
label define occ1950_sp_lbl 100 `"Farmers (owners and tenants)"', add
label define occ1950_sp_lbl 123 `"Farm managers"', add
label define occ1950_sp_lbl 200 `"Buyers and dept heads, store"', add
label define occ1950_sp_lbl 201 `"Buyers and shippers, farm products"', add
label define occ1950_sp_lbl 203 `"Conductors, railroad"', add
label define occ1950_sp_lbl 204 `"Credit men"', add
label define occ1950_sp_lbl 205 `"Floormen and floor managers, store"', add
label define occ1950_sp_lbl 210 `"Inspectors, public administration"', add
label define occ1950_sp_lbl 230 `"Managers and superintendants, building"', add
label define occ1950_sp_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ1950_sp_lbl 250 `"Officials and administratators (nec), public administration"', add
label define occ1950_sp_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ1950_sp_lbl 270 `"Postmasters"', add
label define occ1950_sp_lbl 280 `"Purchasing agents and buyers (nec)"', add
label define occ1950_sp_lbl 290 `"Managers, officials, and proprietors (nec)"', add
label define occ1950_sp_lbl 300 `"Agents (nec)"', add
label define occ1950_sp_lbl 301 `"Attendants and assistants, library"', add
label define occ1950_sp_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ1950_sp_lbl 304 `"Baggagemen, transportation"', add
label define occ1950_sp_lbl 305 `"Bank tellers"', add
label define occ1950_sp_lbl 310 `"Bookkeepers"', add
label define occ1950_sp_lbl 320 `"Cashiers"', add
label define occ1950_sp_lbl 321 `"Collectors, bill and account"', add
label define occ1950_sp_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ1950_sp_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ1950_sp_lbl 335 `"Mail carriers"', add
label define occ1950_sp_lbl 340 `"Messengers and office boys"', add
label define occ1950_sp_lbl 341 `"Office machine operators"', add
label define occ1950_sp_lbl 342 `"Shipping and receiving clerks"', add
label define occ1950_sp_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ1950_sp_lbl 360 `"Telegraph messengers"', add
label define occ1950_sp_lbl 365 `"Telegraph operators"', add
label define occ1950_sp_lbl 370 `"Telephone operators"', add
label define occ1950_sp_lbl 380 `"Ticket, station, and express agents"', add
label define occ1950_sp_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ1950_sp_lbl 400 `"Advertising agents and salesmen"', add
label define occ1950_sp_lbl 410 `"Auctioneers"', add
label define occ1950_sp_lbl 420 `"Demonstrators"', add
label define occ1950_sp_lbl 430 `"Hucksters and peddlers"', add
label define occ1950_sp_lbl 450 `"Insurance agents and brokers"', add
label define occ1950_sp_lbl 460 `"Newsboys"', add
label define occ1950_sp_lbl 470 `"Real estate agents and brokers"', add
label define occ1950_sp_lbl 480 `"Stock and bond salesmen"', add
label define occ1950_sp_lbl 490 `"Salesmen and sales clerks (nec)"', add
label define occ1950_sp_lbl 500 `"Bakers"', add
label define occ1950_sp_lbl 501 `"Blacksmiths"', add
label define occ1950_sp_lbl 502 `"Bookbinders"', add
label define occ1950_sp_lbl 503 `"Boilermakers"', add
label define occ1950_sp_lbl 504 `"Brickmasons,stonemasons, and tile setters"', add
label define occ1950_sp_lbl 505 `"Cabinetmakers"', add
label define occ1950_sp_lbl 510 `"Carpenters"', add
label define occ1950_sp_lbl 511 `"Cement and concrete finishers"', add
label define occ1950_sp_lbl 512 `"Compositors and typesetters"', add
label define occ1950_sp_lbl 513 `"Cranemen,derrickmen, and hoistmen"', add
label define occ1950_sp_lbl 514 `"Decorators and window dressers"', add
label define occ1950_sp_lbl 515 `"Electricians"', add
label define occ1950_sp_lbl 520 `"Electrotypers and stereotypers"', add
label define occ1950_sp_lbl 521 `"Engravers, except photoengravers"', add
label define occ1950_sp_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ1950_sp_lbl 523 `"Foremen (nec)"', add
label define occ1950_sp_lbl 524 `"Forgemen and hammermen"', add
label define occ1950_sp_lbl 525 `"Furriers"', add
label define occ1950_sp_lbl 530 `"Glaziers"', add
label define occ1950_sp_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ1950_sp_lbl 532 `"Inspectors, scalers, and graders log and lumber"', add
label define occ1950_sp_lbl 533 `"Inspectors (nec)"', add
label define occ1950_sp_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ1950_sp_lbl 535 `"Job setters, metal"', add
label define occ1950_sp_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ1950_sp_lbl 541 `"Locomotive engineers"', add
label define occ1950_sp_lbl 542 `"Locomotive firemen"', add
label define occ1950_sp_lbl 543 `"Loom fixers"', add
label define occ1950_sp_lbl 544 `"Machinists"', add
label define occ1950_sp_lbl 545 `"Airplane-mechanics and repairmen"', add
label define occ1950_sp_lbl 550 `"Automobile-mechanics and repairmen"', add
label define occ1950_sp_lbl 551 `"Office machine-mechanics and repairmen"', add
label define occ1950_sp_lbl 552 `"Radio and television-mechanics and repairmen"', add
label define occ1950_sp_lbl 553 `"Railroad and car shop-mechanics and repairmen"', add
label define occ1950_sp_lbl 554 `"Mechanics and repairmen (nec)"', add
label define occ1950_sp_lbl 555 `"Millers, grain, flour, feed, etc"', add
label define occ1950_sp_lbl 560 `"Millwrights"', add
label define occ1950_sp_lbl 561 `"Molders, metal"', add
label define occ1950_sp_lbl 562 `"Motion picture projectionists"', add
label define occ1950_sp_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ1950_sp_lbl 564 `"Painters, construction and maintenance"', add
label define occ1950_sp_lbl 565 `"Paperhangers"', add
label define occ1950_sp_lbl 570 `"Pattern and model makers, except paper"', add
label define occ1950_sp_lbl 571 `"Photoengravers and lithographers"', add
label define occ1950_sp_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ1950_sp_lbl 573 `"Plasterers"', add
label define occ1950_sp_lbl 574 `"Plumbers and pipe fitters"', add
label define occ1950_sp_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ1950_sp_lbl 580 `"Rollers and roll hands, metal"', add
label define occ1950_sp_lbl 581 `"Roofers and slaters"', add
label define occ1950_sp_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ1950_sp_lbl 583 `"Stationary engineers"', add
label define occ1950_sp_lbl 584 `"Stone cutters and stone carvers"', add
label define occ1950_sp_lbl 585 `"Structural metal workers"', add
label define occ1950_sp_lbl 590 `"Tailors and tailoresses"', add
label define occ1950_sp_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ1950_sp_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ1950_sp_lbl 593 `"Upholsterers"', add
label define occ1950_sp_lbl 594 `"Craftsmen and kindred workers (nec)"', add
label define occ1950_sp_lbl 595 `"Members of the armed services"', add
label define occ1950_sp_lbl 600 `"Auto mechanics apprentice"', add
label define occ1950_sp_lbl 601 `"Bricklayers and masons apprentice"', add
label define occ1950_sp_lbl 602 `"Carpenters apprentice"', add
label define occ1950_sp_lbl 603 `"Electricians apprentice"', add
label define occ1950_sp_lbl 604 `"Machinists and toolmakers apprentice"', add
label define occ1950_sp_lbl 605 `"Mechanics, except auto apprentice"', add
label define occ1950_sp_lbl 610 `"Plumbers and pipe fitters apprentice"', add
label define occ1950_sp_lbl 611 `"Apprentices, building trades (nec)"', add
label define occ1950_sp_lbl 612 `"Apprentices, metalworking trades (nec)"', add
label define occ1950_sp_lbl 613 `"Apprentices, printing  trades"', add
label define occ1950_sp_lbl 614 `"Apprentices, other specified trades"', add
label define occ1950_sp_lbl 615 `"Apprentices, trade not specified"', add
label define occ1950_sp_lbl 620 `"Asbestos and insulation workers"', add
label define occ1950_sp_lbl 621 `"Attendants, auto service and parking"', add
label define occ1950_sp_lbl 622 `"Blasters and powdermen"', add
label define occ1950_sp_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ1950_sp_lbl 624 `"Brakemen, railroad"', add
label define occ1950_sp_lbl 625 `"Bus drivers"', add
label define occ1950_sp_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ1950_sp_lbl 631 `"Conductors, bus and street railway"', add
label define occ1950_sp_lbl 632 `"Deliverymen and routemen"', add
label define occ1950_sp_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ1950_sp_lbl 634 `"Dyers"', add
label define occ1950_sp_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ1950_sp_lbl 640 `"Fruit, nut, and vegetable graders, and packers, except facto"', add
label define occ1950_sp_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ1950_sp_lbl 642 `"Heaters, metal"', add
label define occ1950_sp_lbl 643 `"Laundry and dry cleaning Operatives"', add
label define occ1950_sp_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ1950_sp_lbl 645 `"Milliners"', add
label define occ1950_sp_lbl 650 `"Mine operatives and laborers"', add
label define occ1950_sp_lbl 660 `"Motormen, mine, factory, logging camp, etc"', add
label define occ1950_sp_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ1950_sp_lbl 662 `"Oilers and greaser, except auto"', add
label define occ1950_sp_lbl 670 `"Painters, except construction or maintenance"', add
label define occ1950_sp_lbl 671 `"Photographic process workers"', add
label define occ1950_sp_lbl 672 `"Power station operators"', add
label define occ1950_sp_lbl 673 `"Sailors and deck hands"', add
label define occ1950_sp_lbl 674 `"Sawyers"', add
label define occ1950_sp_lbl 675 `"Spinners, textile"', add
label define occ1950_sp_lbl 680 `"Stationary firemen"', add
label define occ1950_sp_lbl 681 `"Switchmen, railroad"', add
label define occ1950_sp_lbl 682 `"Taxicab drivers and chauffeurs"', add
label define occ1950_sp_lbl 683 `"Truck and tractor drivers"', add
label define occ1950_sp_lbl 684 `"Weavers, textile"', add
label define occ1950_sp_lbl 685 `"Welders and flame cutters"', add
label define occ1950_sp_lbl 690 `"Operative and kindred workers (nec)"', add
label define occ1950_sp_lbl 700 `"Housekeepers, private household"', add
label define occ1950_sp_lbl 710 `"Laundressses, private household"', add
label define occ1950_sp_lbl 720 `"Private household workers (nec)"', add
label define occ1950_sp_lbl 730 `"Attendants, hospital and other institution"', add
label define occ1950_sp_lbl 731 `"Attendants, professional and personal service (nec)"', add
label define occ1950_sp_lbl 732 `"Attendants, recreation and amusement"', add
label define occ1950_sp_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ1950_sp_lbl 750 `"Bartenders"', add
label define occ1950_sp_lbl 751 `"Bootblacks"', add
label define occ1950_sp_lbl 752 `"Boarding and lodging house keepers"', add
label define occ1950_sp_lbl 753 `"Charwomen and cleaners"', add
label define occ1950_sp_lbl 754 `"Cooks, except private household"', add
label define occ1950_sp_lbl 760 `"Counter and fountain workers"', add
label define occ1950_sp_lbl 761 `"Elevator operators"', add
label define occ1950_sp_lbl 762 `"Firemen, fire protection"', add
label define occ1950_sp_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ1950_sp_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ1950_sp_lbl 770 `"Janitors and sextons"', add
label define occ1950_sp_lbl 771 `"Marshals and constables"', add
label define occ1950_sp_lbl 772 `"Midwives"', add
label define occ1950_sp_lbl 773 `"Policemen and detectives"', add
label define occ1950_sp_lbl 780 `"Porters"', add
label define occ1950_sp_lbl 781 `"Practical nurses"', add
label define occ1950_sp_lbl 782 `"Sheriffs and bailiffs"', add
label define occ1950_sp_lbl 783 `"Ushers, recreation and amusement"', add
label define occ1950_sp_lbl 784 `"Waiters and waitresses"', add
label define occ1950_sp_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ1950_sp_lbl 790 `"Service workers, except private household (nec)"', add
label define occ1950_sp_lbl 810 `"Farm foremen"', add
label define occ1950_sp_lbl 820 `"Farm laborers, wage workers"', add
label define occ1950_sp_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ1950_sp_lbl 840 `"Farm service laborers, self-employed"', add
label define occ1950_sp_lbl 910 `"Fishermen and oystermen"', add
label define occ1950_sp_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ1950_sp_lbl 930 `"Gardeners, except farm and groundskeepers"', add
label define occ1950_sp_lbl 940 `"Longshoremen and stevedores"', add
label define occ1950_sp_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ1950_sp_lbl 960 `"Teamsters"', add
label define occ1950_sp_lbl 970 `"Laborers (nec)"', add
label define occ1950_sp_lbl 979 `"Not yet classified"', add
label define occ1950_sp_lbl 980 `"Keeps house/housekeeping at home/housewife"', add
label define occ1950_sp_lbl 981 `"Imputed keeping house (1850-1900)"', add
label define occ1950_sp_lbl 982 `"Helping at home/helps parents/housework"', add
label define occ1950_sp_lbl 983 `"At school/student"', add
label define occ1950_sp_lbl 984 `"Retired"', add
label define occ1950_sp_lbl 985 `"Unemployed/without occupation"', add
label define occ1950_sp_lbl 986 `"Invalid/disabled w/ no occupation reported"', add
label define occ1950_sp_lbl 987 `"Inmate"', add
label define occ1950_sp_lbl 990 `"New Worker"', add
label define occ1950_sp_lbl 991 `"Gentleman/lady/at leisure"', add
label define occ1950_sp_lbl 995 `"Other non-occupation"', add
label define occ1950_sp_lbl 997 `"Occupation missing/unknown"', add
label define occ1950_sp_lbl 999 `"N/A (blank)"', add
label values occ1950_sp occ1950_sp_lbl

label define migplac5_sp_lbl 000 `"N/A"'
label define migplac5_sp_lbl 001 `"Alabama"', add
label define migplac5_sp_lbl 002 `"Alaska"', add
label define migplac5_sp_lbl 004 `"Arizona"', add
label define migplac5_sp_lbl 005 `"Arkansas"', add
label define migplac5_sp_lbl 006 `"California"', add
label define migplac5_sp_lbl 008 `"Colorado"', add
label define migplac5_sp_lbl 009 `"Connecticut"', add
label define migplac5_sp_lbl 010 `"Delaware"', add
label define migplac5_sp_lbl 011 `"District of Columbia"', add
label define migplac5_sp_lbl 012 `"Florida"', add
label define migplac5_sp_lbl 013 `"Georgia"', add
label define migplac5_sp_lbl 015 `"Hawaii"', add
label define migplac5_sp_lbl 016 `"Idaho"', add
label define migplac5_sp_lbl 017 `"Illinois"', add
label define migplac5_sp_lbl 018 `"Indiana"', add
label define migplac5_sp_lbl 019 `"Iowa"', add
label define migplac5_sp_lbl 020 `"Kansas"', add
label define migplac5_sp_lbl 021 `"Kentucky"', add
label define migplac5_sp_lbl 022 `"Louisiana"', add
label define migplac5_sp_lbl 023 `"Maine"', add
label define migplac5_sp_lbl 024 `"Maryland"', add
label define migplac5_sp_lbl 025 `"Massachusetts"', add
label define migplac5_sp_lbl 026 `"Michigan"', add
label define migplac5_sp_lbl 027 `"Minnesota"', add
label define migplac5_sp_lbl 028 `"Mississippi"', add
label define migplac5_sp_lbl 029 `"Missouri"', add
label define migplac5_sp_lbl 030 `"Montana"', add
label define migplac5_sp_lbl 031 `"Nebraska"', add
label define migplac5_sp_lbl 032 `"Nevada"', add
label define migplac5_sp_lbl 033 `"New Hampshire"', add
label define migplac5_sp_lbl 034 `"New Jersey"', add
label define migplac5_sp_lbl 035 `"New Mexico"', add
label define migplac5_sp_lbl 036 `"New York"', add
label define migplac5_sp_lbl 037 `"North Carolina"', add
label define migplac5_sp_lbl 038 `"North Dakota"', add
label define migplac5_sp_lbl 039 `"Ohio"', add
label define migplac5_sp_lbl 040 `"Oklahoma"', add
label define migplac5_sp_lbl 041 `"Oregon"', add
label define migplac5_sp_lbl 042 `"Pennsylvania"', add
label define migplac5_sp_lbl 044 `"Rhode Island"', add
label define migplac5_sp_lbl 045 `"South Carolina"', add
label define migplac5_sp_lbl 046 `"South Dakota"', add
label define migplac5_sp_lbl 047 `"Tennessee"', add
label define migplac5_sp_lbl 048 `"Texas"', add
label define migplac5_sp_lbl 049 `"Utah"', add
label define migplac5_sp_lbl 050 `"Vermont"', add
label define migplac5_sp_lbl 051 `"Virginia"', add
label define migplac5_sp_lbl 053 `"Washington"', add
label define migplac5_sp_lbl 054 `"West Virginia"', add
label define migplac5_sp_lbl 055 `"Wisconsin"', add
label define migplac5_sp_lbl 056 `"Wyoming"', add
label define migplac5_sp_lbl 061 `"Maine-New Hampshire-Vermont"', add
label define migplac5_sp_lbl 062 `"Massachussetts-Rhode Island"', add
label define migplac5_sp_lbl 063 `"Minnesota-Iowa-Missouri-Kansas-Nebraska-Dakotas"', add
label define migplac5_sp_lbl 064 `"Maryland-Delaware"', add
label define migplac5_sp_lbl 065 `"Montana-Idaho-Wyoming"', add
label define migplac5_sp_lbl 066 `"Utah-Nevada"', add
label define migplac5_sp_lbl 067 `"Arizona-New Mexico"', add
label define migplac5_sp_lbl 068 `"Alaska-Hawaii"', add
label define migplac5_sp_lbl 099 `"United States, not specified or state confidential"', add
label define migplac5_sp_lbl 100 `"Samoa"', add
label define migplac5_sp_lbl 105 `"Guam"', add
label define migplac5_sp_lbl 110 `"Puerto Rico"', add
label define migplac5_sp_lbl 115 `"Virgin Islands"', add
label define migplac5_sp_lbl 119 `"US outlying area (1980)"', add
label define migplac5_sp_lbl 120 `"Other US Possessions"', add
label define migplac5_sp_lbl 150 `"Canada"', add
label define migplac5_sp_lbl 151 `"English Canada"', add
label define migplac5_sp_lbl 152 `"French Canada"', add
label define migplac5_sp_lbl 155 `"St Pierre and Miquelon"', add
label define migplac5_sp_lbl 160 `"Atlantic Islands"', add
label define migplac5_sp_lbl 199 `"North America"', add
label define migplac5_sp_lbl 200 `"Mexico"', add
label define migplac5_sp_lbl 211 `"Belize/British Honduras"', add
label define migplac5_sp_lbl 212 `"Costa Rica"', add
label define migplac5_sp_lbl 213 `"El Salvador"', add
label define migplac5_sp_lbl 214 `"Guatemala"', add
label define migplac5_sp_lbl 215 `"Honduras"', add
label define migplac5_sp_lbl 216 `"Nicaragua"', add
label define migplac5_sp_lbl 217 `"Panama"', add
label define migplac5_sp_lbl 218 `"Canal Zone"', add
label define migplac5_sp_lbl 219 `"Central America, nec"', add
label define migplac5_sp_lbl 250 `"Cuba"', add
label define migplac5_sp_lbl 260 `"West Indies"', add
label define migplac5_sp_lbl 261 `"Dominican Republic"', add
label define migplac5_sp_lbl 262 `"Haita"', add
label define migplac5_sp_lbl 263 `"Jamaica"', add
label define migplac5_sp_lbl 264 `"British West Indies"', add
label define migplac5_sp_lbl 266 `"Trinidad and Tobago"', add
label define migplac5_sp_lbl 267 `"Other West Indies"', add
label define migplac5_sp_lbl 305 `"Argentina"', add
label define migplac5_sp_lbl 310 `"Bolivia"', add
label define migplac5_sp_lbl 315 `"Brazil"', add
label define migplac5_sp_lbl 320 `"Chile"', add
label define migplac5_sp_lbl 325 `"Colombia"', add
label define migplac5_sp_lbl 330 `"Ecuador"', add
label define migplac5_sp_lbl 345 `"Paraguay"', add
label define migplac5_sp_lbl 350 `"Peru"', add
label define migplac5_sp_lbl 360 `"Uruguay"', add
label define migplac5_sp_lbl 365 `"Venezuela"', add
label define migplac5_sp_lbl 370 `"North or Central America, n.s. (2000 5%)"', add
label define migplac5_sp_lbl 390 `"South America, nec"', add
label define migplac5_sp_lbl 400 `"Denmark"', add
label define migplac5_sp_lbl 401 `"Finland"', add
label define migplac5_sp_lbl 402 `"Iceland"', add
label define migplac5_sp_lbl 404 `"Norway"', add
label define migplac5_sp_lbl 405 `"Sweden"', add
label define migplac5_sp_lbl 410 `"England"', add
label define migplac5_sp_lbl 411 `"Scotland"', add
label define migplac5_sp_lbl 412 `"Wales"', add
label define migplac5_sp_lbl 413 `"United Kingdom"', add
label define migplac5_sp_lbl 414 `"Ireland"', add
label define migplac5_sp_lbl 415 `"Northern Ireland"', add
label define migplac5_sp_lbl 420 `"Belgium"', add
label define migplac5_sp_lbl 421 `"France"', add
label define migplac5_sp_lbl 422 `"Liechtenstein"', add
label define migplac5_sp_lbl 423 `"Luxembourg"', add
label define migplac5_sp_lbl 424 `"Monaco"', add
label define migplac5_sp_lbl 425 `"Netherlands"', add
label define migplac5_sp_lbl 426 `"Switzerland"', add
label define migplac5_sp_lbl 430 `"Albania"', add
label define migplac5_sp_lbl 431 `"Andorra"', add
label define migplac5_sp_lbl 432 `"Gibraltar"', add
label define migplac5_sp_lbl 433 `"Greece"', add
label define migplac5_sp_lbl 434 `"Dodecanese Islands"', add
label define migplac5_sp_lbl 435 `"Italy"', add
label define migplac5_sp_lbl 436 `"Portugal"', add
label define migplac5_sp_lbl 437 `"Azores"', add
label define migplac5_sp_lbl 438 `"Spain"', add
label define migplac5_sp_lbl 439 `"Vatican City"', add
label define migplac5_sp_lbl 440 `"Malta"', add
label define migplac5_sp_lbl 450 `"Austria"', add
label define migplac5_sp_lbl 451 `"Bulgaria"', add
label define migplac5_sp_lbl 452 `"Czechoslovakia"', add
label define migplac5_sp_lbl 453 `"Germany"', add
label define migplac5_sp_lbl 454 `"Hungary"', add
label define migplac5_sp_lbl 455 `"Poland"', add
label define migplac5_sp_lbl 456 `"Romania"', add
label define migplac5_sp_lbl 457 `"Yugoslavia"', add
label define migplac5_sp_lbl 460 `"Estonia"', add
label define migplac5_sp_lbl 461 `"Latvia"', add
label define migplac5_sp_lbl 462 `"Lithuania"', add
label define migplac5_sp_lbl 465 `"USSR"', add
label define migplac5_sp_lbl 496 `"Byelorussia"', add
label define migplac5_sp_lbl 498 `"Ukraine"', add
label define migplac5_sp_lbl 499 `"Europe, n.s."', add
label define migplac5_sp_lbl 500 `"China"', add
label define migplac5_sp_lbl 501 `"Japan"', add
label define migplac5_sp_lbl 502 `"Korea"', add
label define migplac5_sp_lbl 510 `"Brunei"', add
label define migplac5_sp_lbl 511 `"Cambodia "', add
label define migplac5_sp_lbl 512 `"Indonesia"', add
label define migplac5_sp_lbl 513 `"Laos"', add
label define migplac5_sp_lbl 514 `"Malaysia"', add
label define migplac5_sp_lbl 515 `"Philippines"', add
label define migplac5_sp_lbl 516 `"Singapore"', add
label define migplac5_sp_lbl 517 `"Thailand"', add
label define migplac5_sp_lbl 518 `"Vietnam"', add
label define migplac5_sp_lbl 520 `"Afghanistan"', add
label define migplac5_sp_lbl 521 `"India"', add
label define migplac5_sp_lbl 525 `"Pakistan"', add
label define migplac5_sp_lbl 522 `"Iran"', add
label define migplac5_sp_lbl 523 `"Maldives"', add
label define migplac5_sp_lbl 524 `"Nepal"', add
label define migplac5_sp_lbl 530 `"Bahrain"', add
label define migplac5_sp_lbl 531 `"Cyprus"', add
label define migplac5_sp_lbl 532 `"Iraq"', add
label define migplac5_sp_lbl 534 `"Israel"', add
label define migplac5_sp_lbl 535 `"Jordan"', add
label define migplac5_sp_lbl 536 `"Kuwait"', add
label define migplac5_sp_lbl 537 `"Lebanon"', add
label define migplac5_sp_lbl 538 `"Oman"', add
label define migplac5_sp_lbl 539 `"Qatar"', add
label define migplac5_sp_lbl 540 `"Saudi Arabia"', add
label define migplac5_sp_lbl 541 `"Syria"', add
label define migplac5_sp_lbl 542 `"Turkey"', add
label define migplac5_sp_lbl 543 `"United Arab Emirates"', add
label define migplac5_sp_lbl 544 `"Yemen"', add
label define migplac5_sp_lbl 548 `"Southwest Asia, nec/ns"', add
label define migplac5_sp_lbl 599 `"Asia, nec/ns"', add
label define migplac5_sp_lbl 600 `"Africa"', add
label define migplac5_sp_lbl 610 `"Northern Africa"', add
label define migplac5_sp_lbl 612 `"Egypt/United Arab Rep."', add
label define migplac5_sp_lbl 670 `"Central Africa"', add
label define migplac5_sp_lbl 690 `"Southern Africa"', add
label define migplac5_sp_lbl 694 `"South Africa (Union of)"', add
label define migplac5_sp_lbl 699 `"Africa, nec"', add
label define migplac5_sp_lbl 700 `"Coral Sea Islands"', add
label define migplac5_sp_lbl 701 `"Australia"', add
label define migplac5_sp_lbl 702 `"New Zealand"', add
label define migplac5_sp_lbl 710 `"Pacific Islands"', add
label define migplac5_sp_lbl 715 `"US Pacific Trust Territories"', add
label define migplac5_sp_lbl 800 `"Heard and McDonald Islands"', add
label define migplac5_sp_lbl 900 `"Abroad (unknown) or at sea"', add
label define migplac5_sp_lbl 911 `"Abroad, ns"', add
label define migplac5_sp_lbl 912 `"At sea"', add
label define migplac5_sp_lbl 990 `"Same house"', add
label define migplac5_sp_lbl 999 `"Missing/unknown"', add
label values migplac5_sp migplac5_sp_lbl

label define work5yr_sp_lbl 0 `"N/A"'
label define work5yr_sp_lbl 1 `"No"', add
label define work5yr_sp_lbl 2 `"Yes (1970)"', add
label define work5yr_sp_lbl 3 `"Yes, full time (35+ hours)"', add
label define work5yr_sp_lbl 4 `"Yes, part time (1-34 hours)"', add
label define work5yr_sp_lbl 9 `"Not reported"', add
label values work5yr_sp work5yr_sp_lbl

label define milit5yr_sp_lbl 0 `"N/A"'
label define milit5yr_sp_lbl 1 `"No"', add
label define milit5yr_sp_lbl 2 `"Yes"', add
label define milit5yr_sp_lbl 9 `"Not reported"', add
label values milit5yr_sp milit5yr_sp_lbl

label define coll5yr_sp_lbl 0 `"N/A"'
label define coll5yr_sp_lbl 1 `"No"', add
label define coll5yr_sp_lbl 2 `"Yes"', add
label define coll5yr_sp_lbl 9 `"Not reported"', add
label values coll5yr_sp coll5yr_sp_lbl

label define occ5yr95_sp_lbl 000 `"Accountants and auditors"'
label define occ5yr95_sp_lbl 001 `"Actors and actresses"', add
label define occ5yr95_sp_lbl 002 `"Airplane pilots and navigators"', add
label define occ5yr95_sp_lbl 003 `"Architects"', add
label define occ5yr95_sp_lbl 004 `"Artists and art teachers"', add
label define occ5yr95_sp_lbl 005 `"Athletes"', add
label define occ5yr95_sp_lbl 006 `"Authors"', add
label define occ5yr95_sp_lbl 007 `"Chemists"', add
label define occ5yr95_sp_lbl 008 `"Chiropractors"', add
label define occ5yr95_sp_lbl 009 `"Clergymen"', add
label define occ5yr95_sp_lbl 010 `"College presidents and deans"', add
label define occ5yr95_sp_lbl 012 `"Professors and instructors, agricultural sciences"', add
label define occ5yr95_sp_lbl 013 `"Professors and instructors, biological sciences"', add
label define occ5yr95_sp_lbl 014 `"Profs and instructors, chemistry"', add
label define occ5yr95_sp_lbl 015 `"Profs and instructors, economics"', add
label define occ5yr95_sp_lbl 016 `"Professors and instructors, engineering"', add
label define occ5yr95_sp_lbl 017 `"Professors and instructors, geology and geophysics"', add
label define occ5yr95_sp_lbl 018 `"Professors and instructors, mathematics"', add
label define occ5yr95_sp_lbl 019 `"Professors and instructors, medical sciences"', add
label define occ5yr95_sp_lbl 023 `"Profs and instructors, physics"', add
label define occ5yr95_sp_lbl 024 `"Professors and instructors, psychology"', add
label define occ5yr95_sp_lbl 025 `"Professors and instructors, statistics"', add
label define occ5yr95_sp_lbl 026 `"Professors and instructors, natural science (nec)"', add
label define occ5yr95_sp_lbl 027 `"Professors and instructors, social sciences (nec)"', add
label define occ5yr95_sp_lbl 028 `"Professors and instructors, nonscientific subjects"', add
label define occ5yr95_sp_lbl 029 `"Professors and instructors, subject not specified"', add
label define occ5yr95_sp_lbl 031 `"Dancers and dancing teachers"', add
label define occ5yr95_sp_lbl 032 `"Dentists"', add
label define occ5yr95_sp_lbl 033 `"Designers"', add
label define occ5yr95_sp_lbl 034 `"Dieticians and nutritionists"', add
label define occ5yr95_sp_lbl 035 `"Draftsmen"', add
label define occ5yr95_sp_lbl 036 `"Editors and reporters"', add
label define occ5yr95_sp_lbl 041 `"Engineers, aeronautical"', add
label define occ5yr95_sp_lbl 042 `"Engineers, chemical"', add
label define occ5yr95_sp_lbl 043 `"Engineers, civil"', add
label define occ5yr95_sp_lbl 044 `"Engineers, electrical"', add
label define occ5yr95_sp_lbl 045 `"Engineers, industrial"', add
label define occ5yr95_sp_lbl 046 `"Engineers, mechanical"', add
label define occ5yr95_sp_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ5yr95_sp_lbl 048 `"Engineers, mining"', add
label define occ5yr95_sp_lbl 049 `"Engineers (nec)"', add
label define occ5yr95_sp_lbl 051 `"Entertainers (nec)"', add
label define occ5yr95_sp_lbl 052 `"Farm and home management advisors"', add
label define occ5yr95_sp_lbl 053 `"Foresters and conservationists"', add
label define occ5yr95_sp_lbl 054 `"Funeral directors and embalmers"', add
label define occ5yr95_sp_lbl 055 `"Lawyers and judges"', add
label define occ5yr95_sp_lbl 056 `"Librarians"', add
label define occ5yr95_sp_lbl 057 `"Musicians and music teachers"', add
label define occ5yr95_sp_lbl 058 `"Nurses, professional"', add
label define occ5yr95_sp_lbl 059 `"Nurses, student professional"', add
label define occ5yr95_sp_lbl 061 `"Agricultural scientists"', add
label define occ5yr95_sp_lbl 062 `"Biological scientists"', add
label define occ5yr95_sp_lbl 063 `"Geologists and geophysicists"', add
label define occ5yr95_sp_lbl 067 `"Mathematicians"', add
label define occ5yr95_sp_lbl 068 `"Physicists"', add
label define occ5yr95_sp_lbl 069 `"Misc. natural scientists"', add
label define occ5yr95_sp_lbl 070 `"Optometrists"', add
label define occ5yr95_sp_lbl 071 `"Osteopaths"', add
label define occ5yr95_sp_lbl 072 `"Personnel and labor relations workers"', add
label define occ5yr95_sp_lbl 073 `"Pharmacists"', add
label define occ5yr95_sp_lbl 074 `"Photographers"', add
label define occ5yr95_sp_lbl 075 `"Physicians and surgeons"', add
label define occ5yr95_sp_lbl 076 `"Radio operators"', add
label define occ5yr95_sp_lbl 077 `"Recreation and group workers"', add
label define occ5yr95_sp_lbl 078 `"Religious workers"', add
label define occ5yr95_sp_lbl 079 `"Social and welfare workers, except group"', add
label define occ5yr95_sp_lbl 081 `"Economists"', add
label define occ5yr95_sp_lbl 082 `"Psychologists"', add
label define occ5yr95_sp_lbl 083 `"Statisticians and actuaries"', add
label define occ5yr95_sp_lbl 084 `"Misc social scientists"', add
label define occ5yr95_sp_lbl 091 `"Sports instructors and officials"', add
label define occ5yr95_sp_lbl 092 `"Surveyors"', add
label define occ5yr95_sp_lbl 093 `"Teachers (n.e.c.)"', add
label define occ5yr95_sp_lbl 094 `"Technicians, medical and dental"', add
label define occ5yr95_sp_lbl 095 `"Technicians, testing"', add
label define occ5yr95_sp_lbl 096 `"Technicians (nec)"', add
label define occ5yr95_sp_lbl 097 `"Therapists and healers (nec)"', add
label define occ5yr95_sp_lbl 098 `"Veterinarians"', add
label define occ5yr95_sp_lbl 099 `"Professional, technical and kindred workers (nec)"', add
label define occ5yr95_sp_lbl 100 `"Farmers (owners and tenants)"', add
label define occ5yr95_sp_lbl 123 `"Farm managers"', add
label define occ5yr95_sp_lbl 200 `"Buyers and dept heads, store"', add
label define occ5yr95_sp_lbl 201 `"Buyers and shippers, farm products"', add
label define occ5yr95_sp_lbl 203 `"Conductors, railroad"', add
label define occ5yr95_sp_lbl 204 `"Credit men"', add
label define occ5yr95_sp_lbl 205 `"Floormen and floor managers, store"', add
label define occ5yr95_sp_lbl 210 `"Inspectors, public administration"', add
label define occ5yr95_sp_lbl 230 `"Managers and superintendants, building"', add
label define occ5yr95_sp_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ5yr95_sp_lbl 250 `"Officials and administratators (nec), public administration"', add
label define occ5yr95_sp_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ5yr95_sp_lbl 270 `"Postmasters"', add
label define occ5yr95_sp_lbl 280 `"Purchasing agents and buyers (nec)"', add
label define occ5yr95_sp_lbl 290 `"Managers, officials, and proprietors (nec)"', add
label define occ5yr95_sp_lbl 300 `"Agents (nec)"', add
label define occ5yr95_sp_lbl 301 `"Attendants and assistants, library"', add
label define occ5yr95_sp_lbl 302 `"Attendants, physician's and dentist's office"', add
label define occ5yr95_sp_lbl 304 `"Baggagemen, transportation"', add
label define occ5yr95_sp_lbl 305 `"Bank tellers"', add
label define occ5yr95_sp_lbl 310 `"Bookkeepers"', add
label define occ5yr95_sp_lbl 320 `"Cashiers"', add
label define occ5yr95_sp_lbl 321 `"Collectors, bill and account"', add
label define occ5yr95_sp_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ5yr95_sp_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ5yr95_sp_lbl 335 `"Mail carriers"', add
label define occ5yr95_sp_lbl 340 `"Messengers and office boys"', add
label define occ5yr95_sp_lbl 341 `"Office machine operators"', add
label define occ5yr95_sp_lbl 342 `"Shipping and receiving clerks"', add
label define occ5yr95_sp_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ5yr95_sp_lbl 360 `"Telegraph messengers"', add
label define occ5yr95_sp_lbl 365 `"Telegraph operators"', add
label define occ5yr95_sp_lbl 370 `"Telephone operators"', add
label define occ5yr95_sp_lbl 380 `"Ticket, station, and express agents"', add
label define occ5yr95_sp_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ5yr95_sp_lbl 400 `"Advertising agents and salesmen"', add
label define occ5yr95_sp_lbl 410 `"Auctioneers"', add
label define occ5yr95_sp_lbl 420 `"Demonstrators"', add
label define occ5yr95_sp_lbl 430 `"Hucksters and peddlers"', add
label define occ5yr95_sp_lbl 450 `"Insurance agents and brokers"', add
label define occ5yr95_sp_lbl 460 `"Newsboys"', add
label define occ5yr95_sp_lbl 470 `"Real estate agents and brokers"', add
label define occ5yr95_sp_lbl 480 `"Stock and bond salesmen"', add
label define occ5yr95_sp_lbl 490 `"Salesmen and sales clerks (nec)"', add
label define occ5yr95_sp_lbl 500 `"Bakers"', add
label define occ5yr95_sp_lbl 501 `"Blacksmiths"', add
label define occ5yr95_sp_lbl 502 `"Bookbinders"', add
label define occ5yr95_sp_lbl 503 `"Boilermakers"', add
label define occ5yr95_sp_lbl 504 `"Brickmasons,stonemasons, and tile setters"', add
label define occ5yr95_sp_lbl 505 `"Cabinetmakers"', add
label define occ5yr95_sp_lbl 510 `"Carpenters"', add
label define occ5yr95_sp_lbl 511 `"Cement and concrete finishers"', add
label define occ5yr95_sp_lbl 512 `"Compositors and typesetters"', add
label define occ5yr95_sp_lbl 513 `"Cranemen,derrickmen, and hoistmen"', add
label define occ5yr95_sp_lbl 514 `"Decorators and window dressers"', add
label define occ5yr95_sp_lbl 515 `"Electricians"', add
label define occ5yr95_sp_lbl 520 `"Electrotypers and stereotypers"', add
label define occ5yr95_sp_lbl 521 `"Engravers, except engravers"', add
label define occ5yr95_sp_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ5yr95_sp_lbl 523 `"Foremen (nec)"', add
label define occ5yr95_sp_lbl 524 `"Forgemen and hammermen"', add
label define occ5yr95_sp_lbl 525 `"Furriers"', add
label define occ5yr95_sp_lbl 530 `"Glaziers"', add
label define occ5yr95_sp_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ5yr95_sp_lbl 532 `"Inspectors, scalers, and graders log and lumber"', add
label define occ5yr95_sp_lbl 533 `"Inspectors (nec)"', add
label define occ5yr95_sp_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ5yr95_sp_lbl 535 `"Job setters, metal"', add
label define occ5yr95_sp_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ5yr95_sp_lbl 541 `"Locomotive engineers"', add
label define occ5yr95_sp_lbl 542 `"Locomotive firemen"', add
label define occ5yr95_sp_lbl 543 `"Loom fixers"', add
label define occ5yr95_sp_lbl 544 `"Machinists"', add
label define occ5yr95_sp_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ5yr95_sp_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ5yr95_sp_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ5yr95_sp_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ5yr95_sp_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ5yr95_sp_lbl 554 `"Mechanics and repairmen (nec)"', add
label define occ5yr95_sp_lbl 555 `"Millers, grain, flour, feed, etc"', add
label define occ5yr95_sp_lbl 560 `"Millwrights"', add
label define occ5yr95_sp_lbl 561 `"Molders, metal"', add
label define occ5yr95_sp_lbl 562 `"Motion picture projectionists"', add
label define occ5yr95_sp_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ5yr95_sp_lbl 564 `"Painters, construction and maintenance"', add
label define occ5yr95_sp_lbl 565 `"Paperhangers"', add
label define occ5yr95_sp_lbl 570 `"Pattern and model makers, except paper"', add
label define occ5yr95_sp_lbl 571 `"Photoengravers and lithographers"', add
label define occ5yr95_sp_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ5yr95_sp_lbl 573 `"Plasterers"', add
label define occ5yr95_sp_lbl 574 `"Plumbers and pipe fitters"', add
label define occ5yr95_sp_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ5yr95_sp_lbl 580 `"Rollers and roll hands, metal"', add
label define occ5yr95_sp_lbl 581 `"Roofers and slaters"', add
label define occ5yr95_sp_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ5yr95_sp_lbl 583 `"Stationary engineers"', add
label define occ5yr95_sp_lbl 584 `"Stone cutters and stone carvers"', add
label define occ5yr95_sp_lbl 585 `"Structural metal workers"', add
label define occ5yr95_sp_lbl 590 `"Tailors and tailoresses"', add
label define occ5yr95_sp_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ5yr95_sp_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ5yr95_sp_lbl 593 `"Upholsterers"', add
label define occ5yr95_sp_lbl 594 `"Craftsmen and kindred workers (nec)"', add
label define occ5yr95_sp_lbl 595 `"Members of the armed services"', add
label define occ5yr95_sp_lbl 600 `"Apprentice auto mechanics"', add
label define occ5yr95_sp_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ5yr95_sp_lbl 602 `"Apprentice carpenters"', add
label define occ5yr95_sp_lbl 603 `"Apprentice electricians"', add
label define occ5yr95_sp_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ5yr95_sp_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ5yr95_sp_lbl 610 `"Apprentice plumbers and and pipe fitters"', add
label define occ5yr95_sp_lbl 611 `"Apprentices, building trades (nec)"', add
label define occ5yr95_sp_lbl 612 `"Apprentices, metalworking trades (nec)"', add
label define occ5yr95_sp_lbl 613 `"Apprentices, printing  trades"', add
label define occ5yr95_sp_lbl 614 `"Apprentices, other specified trades"', add
label define occ5yr95_sp_lbl 615 `"Apprentices, trade not specified"', add
label define occ5yr95_sp_lbl 620 `"Asbestos and insulation workers"', add
label define occ5yr95_sp_lbl 621 `"Attendants, auto service and parking"', add
label define occ5yr95_sp_lbl 622 `"Blasters and powdermen"', add
label define occ5yr95_sp_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ5yr95_sp_lbl 624 `"Brakemen, railroad"', add
label define occ5yr95_sp_lbl 625 `"Bus drivers"', add
label define occ5yr95_sp_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ5yr95_sp_lbl 631 `"Conductors, bus and street railway"', add
label define occ5yr95_sp_lbl 632 `"Deliverymen and routemen"', add
label define occ5yr95_sp_lbl 633 `"Dressmakers and seamstresses except factory"', add
label define occ5yr95_sp_lbl 634 `"Dyers"', add
label define occ5yr95_sp_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ5yr95_sp_lbl 640 `"Fruit, nut, and vegetable graders, and packers, except facto"', add
label define occ5yr95_sp_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ5yr95_sp_lbl 642 `"Heaters, metal"', add
label define occ5yr95_sp_lbl 643 `"Laundry and dry cleaning Operatives"', add
label define occ5yr95_sp_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ5yr95_sp_lbl 645 `"Milliners"', add
label define occ5yr95_sp_lbl 650 `"Mine operatives and laborers"', add
label define occ5yr95_sp_lbl 660 `"Motormen, mine, factory, logging camp, etc"', add
label define occ5yr95_sp_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ5yr95_sp_lbl 662 `"Oilers and greaser, except auto"', add
label define occ5yr95_sp_lbl 670 `"Painters, except construction or maintenance"', add
label define occ5yr95_sp_lbl 671 `"Photographic process workers"', add
label define occ5yr95_sp_lbl 672 `"Power station operators"', add
label define occ5yr95_sp_lbl 673 `"Sailors and deck hands"', add
label define occ5yr95_sp_lbl 674 `"Sawyers"', add
label define occ5yr95_sp_lbl 675 `"Spinners, textile"', add
label define occ5yr95_sp_lbl 680 `"Stationary firemen"', add
label define occ5yr95_sp_lbl 681 `"Switchmen, railroad"', add
label define occ5yr95_sp_lbl 682 `"Taxicab drivers and chauffeurs"', add
label define occ5yr95_sp_lbl 683 `"Truck and tractor drivers"', add
label define occ5yr95_sp_lbl 684 `"Weavers, textile"', add
label define occ5yr95_sp_lbl 685 `"Welders and flame cutters"', add
label define occ5yr95_sp_lbl 690 `"Operative and kindred workers (nec)"', add
label define occ5yr95_sp_lbl 700 `"Housekeepers, private household"', add
label define occ5yr95_sp_lbl 710 `"Laundressses, private household"', add
label define occ5yr95_sp_lbl 720 `"Private household workers (nec)"', add
label define occ5yr95_sp_lbl 730 `"Attendants, hospital and other institution"', add
label define occ5yr95_sp_lbl 731 `"Attendants, professional and personal service (nec)"', add
label define occ5yr95_sp_lbl 732 `"Attendants, recreation and amusement"', add
label define occ5yr95_sp_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ5yr95_sp_lbl 750 `"Bartenders"', add
label define occ5yr95_sp_lbl 751 `"Bootblacks"', add
label define occ5yr95_sp_lbl 752 `"Boarding and lodging house keepers"', add
label define occ5yr95_sp_lbl 753 `"Charwomen and cleaners"', add
label define occ5yr95_sp_lbl 754 `"Cooks, except private household"', add
label define occ5yr95_sp_lbl 760 `"Counter and fountain workers"', add
label define occ5yr95_sp_lbl 761 `"Elevator operators"', add
label define occ5yr95_sp_lbl 762 `"Firemen, fire protection"', add
label define occ5yr95_sp_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ5yr95_sp_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ5yr95_sp_lbl 770 `"Janitors and sextons"', add
label define occ5yr95_sp_lbl 771 `"Marshals and constables"', add
label define occ5yr95_sp_lbl 772 `"Midwives"', add
label define occ5yr95_sp_lbl 773 `"Policemen and detectives"', add
label define occ5yr95_sp_lbl 780 `"Porters"', add
label define occ5yr95_sp_lbl 781 `"Practical nurses"', add
label define occ5yr95_sp_lbl 782 `"Sheriffs and bailiffs"', add
label define occ5yr95_sp_lbl 783 `"Ushers, recreation and amusement"', add
label define occ5yr95_sp_lbl 784 `"Waiters and waitresses"', add
label define occ5yr95_sp_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ5yr95_sp_lbl 790 `"Service workers, except private household (nec)"', add
label define occ5yr95_sp_lbl 810 `"Farm foremen"', add
label define occ5yr95_sp_lbl 820 `"Farm laborers, wage workers"', add
label define occ5yr95_sp_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ5yr95_sp_lbl 840 `"Farm service laborers, self-employed"', add
label define occ5yr95_sp_lbl 910 `"Fishermen and oystermen"', add
label define occ5yr95_sp_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ5yr95_sp_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ5yr95_sp_lbl 940 `"Longshoremen and stevedores"', add
label define occ5yr95_sp_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ5yr95_sp_lbl 960 `"Teamsters"', add
label define occ5yr95_sp_lbl 970 `"Laborers (nec)"', add
label define occ5yr95_sp_lbl 975 `"EMPLOYED (unclassifiable)"', add
label define occ5yr95_sp_lbl 976 `"Conductors, not specified"', add
label define occ5yr95_sp_lbl 977 `"RR employee"', add
label define occ5yr95_sp_lbl 978 `"Govt officials, level unknown"', add
label define occ5yr95_sp_lbl 980 `"Keeps house/house work/housewife"', add
label define occ5yr95_sp_lbl 981 `"Imputed keeping house (1880)"', add
label define occ5yr95_sp_lbl 982 `"At home/ helps in home"', add
label define occ5yr95_sp_lbl 983 `"At school"', add
label define occ5yr95_sp_lbl 984 `"Retired"', add
label define occ5yr95_sp_lbl 985 `"Unemployed/ without occ"', add
label define occ5yr95_sp_lbl 986 `"Invalid/sick/disabled"', add
label define occ5yr95_sp_lbl 987 `"Inmate/prisoner"', add
label define occ5yr95_sp_lbl 988 `"Ration Indian"', add
label define occ5yr95_sp_lbl 990 `"Landlord"', add
label define occ5yr95_sp_lbl 991 `"Capitalist/gentleman"', add
label define occ5yr95_sp_lbl 992 `"Child labor-farm"', add
label define occ5yr95_sp_lbl 993 `"Child labor-domestic"', add
label define occ5yr95_sp_lbl 994 `"Child labor-other"', add
label define occ5yr95_sp_lbl 995 `"Other non-occupation"', add
label define occ5yr95_sp_lbl 996 `"Unclassifiable (employment status unk)"', add
label define occ5yr95_sp_lbl 997 `"Occupation missing/unknown"', add
label define occ5yr95_sp_lbl 998 `"Illegible"', add
label define occ5yr95_sp_lbl 999 `"N/A (blank)"', add
label values occ5yr95_sp occ5yr95_sp_lbl


