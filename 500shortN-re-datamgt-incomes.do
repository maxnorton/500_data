* Adjust occscore to real 1964 or 1969 dollars
gen occscore_dollars = occscore*100
gen occscore_real = 0
replace occscore_real = occscore_dollars * 18.366 / 13.745 if time==0
replace occscore_real = occscore_dollars * 21.642 / 13.745 if time==1
