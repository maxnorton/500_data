* Transform higrade to properly coded education variable representing grades completed.
*TO-DO: compare derivation to 200c derivation (see logs on campus network)
generate education=0
replace education=0 if higrade==1
replace education=1 if higrade==1 | higrade==2
replace education=higrade-2 if higrade>2
