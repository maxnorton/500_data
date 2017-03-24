generate education=0
replace education=0 if higrade==1
replace education=1 if higrade==1 | higrade==2
replace education=higrade-2 if higrade>2 
