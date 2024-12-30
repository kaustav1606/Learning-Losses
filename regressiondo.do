
***** Learning Losses Journal submission ******
*** June 2023 *** 
***** all regression including regression on sub-sample *****


use "C:\Users\user\Desktop\Stata13\Stata13\saesmdata_june12.dta", clear


regress index3 d_device disruption Ind Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban
regress index3 d_device disruption Ind Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban
regress index3 d_device disruption Ind Bd Np Pak Sri hhsize  female science  inc_fall public urban
regress index4 d_device disruption Ind Bd Np Pak Sri hhsize  female science  inc_fall public urban
regress index4 d_device disruption  hhsize  female science  inc_fall public urban
ta d_device female
regress index2 d_device disruption  hhsize  female science  inc_fall public urban
regress index3 d_device disruption Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban
regress index3 d_device disruption Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==3
regress index3 d_device disruption hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==3
regress index3 d_device disruption hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==2
regress index3 d_device disruption hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==5
regress index3 d_device disruption hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==6
regress index3 d_device disruption hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban if country==7
regress index2 d_device disruption  hhsize  female science  inc_fall public urban
regress index3 d_device disruption Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban
regress index4 d_device disruption Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban
regress index3 d_device disruption Afg Bd Np Pak Sri hhsize  female science fedu_yr medu_yr moccup2 foccup2 inc_fall public urban age year 
ta index3
regress index3 female public inc_fall d_device disruption science medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri
regress index4 female public inc_fall d_device disruption science medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri
regress index2 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri
hettest
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri
hettest

regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year fdistress if country==3
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year fdistress distress if country==3
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year Afg Bd Np Pak Sri deviceinc
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age year pubincfall if country==3
regress index3 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year if country ==3

////

gen index6 = ( ind_clspar+ ind_supp+ ind_acadh+ ind_ppl+ ind_feed+ ind_chtt+ ind_lab+ ind_att)/8



//// final regressions
regress index6 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri business science others, vce(robust)
regress index8 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri business science others, vce(robust)
 
 //// final regressions countrywise
 
regress index6 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age business science others if country==3, vce(robust)
regress index6 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age business science others if country==6 
 

regress index9 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age business science others if country==2

//// final regressions academicwise
regress index6 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri others if science =1, vce(robust)

probit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc age  if country ==3



//// logit model for dgrade
logit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress if country ==3
margins, dydx(*) atmeans
logit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr f_work m_work urban deviceinc year fdistress distress if country ==3
//// probit model for dgrade

probit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress if country ==3
margins, dydx(*) atmeans
probit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr f_work m_work urban deviceinc year fdistress distress if country ==3
//// probit model for study

probit dstudy female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress if country ==3
margins, dydx(*) atmeans
probit dstudy female public inc_fall d_device disruption science hhsize medu_yr fedu_yr f_work m_work urban deviceinc year fdistress distress if country ==3
//// probit model for asssignment 
probit dassi female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress if country ==3
margins, dydx(*) atmeans
probit dassi female public inc_fall d_device disruption science hhsize medu_yr fedu_yr f_work m_work urban deviceinc year fdistress distress if country ==3

//// models for all country

probit dstudy female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress Afg Bd Np Pak Sri
probit dassi female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress Afg Bd Np Pak Sri
probit dgrade female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban deviceinc year fdistress distress Afg Bd Np Pak Sri
////



ttest index8 =2 if Afg==1
ttest index8 =2 if Bd ==1
 ttest index8 =2 if Np ==1
ttest index8 =2 if Pak ==1
ttest index8 =2 if Ind ==1
 ttest index8 =2 if Sri ==1
 
 

///////////////////// countrywise regressions
 
regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==3, robust 
outreg2 using myreg.doc, replace ctitle(Model 1)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==2, robust 
outreg2 using myreg.doc, append ctitle(Model 2)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==5, robust 
outreg2 using myreg.doc, append ctitle(Model 3)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==6, robust 
outreg2 using myreg.doc, append ctitle(Model 4)
 
 
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==3, robust
outreg2 using myreg.doc, append ctitle(Model 1)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==2, robust 
outreg2 using myreg.doc, append ctitle(Model 2)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==5, robust 
outreg2 using myreg.doc, append ctitle(Model 3)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==6, robust 
outreg2 using myreg.doc, append ctitle(Model 4)


///////////////////// countrywise regressions with only edu controls
 
regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==3, robust level(90)
outreg2 using countrywise1.doc, replace ctitle(Model 1)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==2, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 2)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==5, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 3)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==6, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 4)
 
 
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==3, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 1)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==2, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 2)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==5, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 3)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad if country==6, robust level(90)
outreg2 using countrywise1.doc, append ctitle(Model 4)


///////////////////// countrywise regressions with only m edu controls
 
regress newindex female public inc_fall d_device disruption hhsize medu_yr urban age i.acad if country==3, robust 
outreg2 using countrywise2.doc, replace ctitle(Model 1)

regress newindex female public inc_fall d_device disruption hhsize medu_yr urban age i.acad if country==2, robust 
outreg2 using countrywise2.doc, append ctitle(Model 2)

regress newindex female public inc_fall d_device disruption hhsize medu_yr urban age i.acad if country==5, robust 
outreg2 using countrywise2.doc, append ctitle(Model 3)

regress newindex female public inc_fall d_device disruption hhsize medu_yr urban age i.acad if country==6, robust 
outreg2 using countrywise2.doc, append ctitle(Model 4)
 
 
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr urban age i.acad if country==3, robust
outreg2 using countrywise2.doc, append ctitle(Model 1)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr  urban age i.acad if country==2, robust 
outreg2 using countrywise2.doc, append ctitle(Model 2)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr  urban age i.acad if country==5, robust 
outreg2 using countrywise2.doc, append ctitle(Model 3)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr  urban age i.acad if country==6, robust 
outreg2 using countrywise2.doc, append ctitle(Model 4)




///////////////////// full sample regressions

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, replace ctitle(All variables)
regress newindex female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(Without Educ and Occup controls)
regress newindex female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using fullsample.doc, append ctitle(Without controls and FEs)
regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(With Educ controls)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(All variables)
regress newindexpca female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(Without Educ and Occup controls)
regress newindexpca female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using fullsample.doc, append ctitle(Without controls and FEs)
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(With Educ controls)

///////////////////// ACADEMICwise regressions
 
regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==1, robust 
outreg2 using ACADEMICwise.doc, replace ctitle(Model 1)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==2, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 2)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==3, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 3)

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==4, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 4)
 
 
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==1, robust
outreg2 using ACADEMICwise.doc, append ctitle(Model 1)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==2, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 2)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==3, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 3)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.country if acad==4, robust 
outreg2 using ACADEMICwise.doc, append ctitle(Model 4)




///////////////////// probit full sample regressions

probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, replace ctitle(All variables)
probit dumindex female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, append ctitle(Without Educ and Occup controls)
probit dumindex female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using probitfullsample.doc, append ctitle(Without controls and FEs)
probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, append ctitle(With Educ controls)

probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, append ctitle(All variables)
probit dumindexpca female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, append ctitle(Without Educ and Occup controls)
probit dumindexpca female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using probitfullsample.doc, append ctitle(Without controls and FEs)
probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using probitfullsample.doc, append ctitle(With Educ controls)

///////////////////// probit countrywise regressions 
 
probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==3, robust level(90)
outreg2 using probitcountrywise1.doc, replace ctitle(Model 1)

probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==2, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 2)

probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==5, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 3)

probit dumindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==6, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 4)
 
 
probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==3, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 1)

probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==2, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 2)

probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==5, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 3)

probit dumindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==6, robust level(90)
outreg2 using probitcountrywise1.doc, append ctitle(Model 4)

///////////////////// full sample regressions INTERACTION

regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad##i.country1, robust 
outreg2 using fullsampleINTER.doc, replace ctitle(Model 1)

regress newindex female##inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age public i.acad i.country1, robust 
outreg2 using fullsampleINTER.doc, append ctitle(Model 2)

regress newindex female inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age public##i.acad i.country1, robust 
outreg2 using fullsampleINTER.doc, append ctitle(Model 2)

regress newindex female##inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age public##i.acad i.country1, robust 
outreg2 using fullsampleINTER.doc, append ctitle(Model 2)







regress newindex female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(Without Educ and Occup controls)
regress newindex female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using fullsample.doc, append ctitle(Without controls and FEs)
regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(With Educ controls)

regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(All variables)
regress newindexpca female public inc_fall d_device disruption hhsize urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(Without Educ and Occup controls)
regress newindexpca female public inc_fall d_device disruption hhsize urban age, robust 
outreg2 using fullsample.doc, append ctitle(Without controls and FEs)
regress newindexpca female public inc_fall d_device disruption hhsize medu_yr fedu_yr urban age i.acad i.country1, robust 
outreg2 using fullsample.doc, append ctitle(With Educ controls)
