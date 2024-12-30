
******* p-values for GRP journal revision ****
******* 3rd July 2023 *******


********************************************  ANALYSIS
replace ind_lab=2 if ind_lab==. & donline==4
keep if donline==4

keep if country==2 // bangladesh
foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(female) 
}


foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(public) 
}

***********
replace ind_lab=2 if ind_lab==. & donline==4
keep if donline==4

keep if country==3 // india
foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(female) 
}


foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(public) 
}



***********
replace ind_lab=2 if ind_lab==. & donline==4
keep if donline==4

keep if country==6 // pakistan
foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(female) 
}


foreach i in c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study {
ttest `i', by(public) 
}


foreach i in olmh11 olmh12 olmh13 olmh14 olmh15 olmh16 olmh17 olmh18 {
ttest `i', by(female) 
}

foreach i in olmh11 olmh12 olmh13 olmh14 olmh15 olmh16 olmh17 olmh18 {
ttest `i', by(public) 
}


foreach i in olmh11 olmh12 olmh13 olmh14 olmh15 olmh16 olmh17 olmh18 {
ttest `i', by(inc_fall) 
}

foreach i in pbmh1 pbmh2 pbmh3 pbmh4 pbmh5 {
ttest `i', by(female) 
}

foreach i in pbmh1 pbmh2 pbmh3 pbmh4 pbmh5 {
ttest `i', by(public) 
}

foreach i in pbmh1 pbmh2 pbmh3 pbmh4 pbmh5 {
ttest `i', by(inc_fall) 
}





use "C:\Users\user\Documents\SAESM\dta\saesmdata_june12.dta", clear
keep if country==6
ttest newindex ==0
ttest newindexpca ==0
