
* Principal Component Analysis and Factor Analysis in Stata

// use after running the earlier do file
//// pca index with study hours (excluding the ones with 0)

global xlist c_study ind_att ind_supp ind_acadh ind_clspar ind_ppl ind_feed ind_chtt if c_study!= 0
summarize $xlist
* Principal component analysis (PCA)
pca $xlist
pca $xlist, mineigen(1)
gen index = 0.153820239*c_study + 0.080953337*ind_att + 0.129954513*ind_supp + 0.138956711*ind_acadh + 0.108042726*ind_clspar + 0.121766188*ind_ppl + 0.126586062*ind_feed + 0.139920225*ind_chtt if c_study!= 0
sum index
estat kmo

////// pca index without study hours 

global xlist ind_att ind_supp ind_acadh ind_clspar ind_ppl ind_feed ind_chtt
summarize $xlist
* Principal component analysis (PCA)
pca $xlist
pca $xlist, mineigen(1)
gen index2 =  0.116139157*ind_att + 0.172376244*ind_supp + 0.176152819*ind_acadh + 0.140409961*ind_clspar + 0.1320226*ind_ppl + 0.138420883*ind_feed + 0.124478245*ind_chtt
sum index2
estat kmo
///// equal weighted index
gen index3 = 0.142*ind_att + 0.142*ind_supp + 0.142*ind_acadh + 0.142*ind_clspar + 0.142*ind_ppl + 0.142*ind_feed + 0.142*ind_chtt
sum index3
//// perceived loss score
gen index4 = (ind_supp + ind_acadh + ind_clspar + ind_ppl + *ind_feed)/5

//// country dummies
gen India=0
replace India=1 if country==3
gen Afghanistan=0
replace Afghanistan=1 if country==1
gen Bangladesh =0
replace Bangladesh=1 if country==2
gen Nepal =0
replace Nepal =1 if country==5
gen   Pakistan=0
replace  Pakistan=1 if country==6
gen Sri=0
replace Sri=1 if country==7
rename India Ind
rename Afghanistan Afg
rename Bangladesh Bd
rename Nepal Np
rename Pakistan Pak


//// public

gen type1=.
replace type1 =1 if type ==1
replace type1 =0  if type ==2 | type ==3
rename type1 public

////
gen science=0
replace science =1  if disci == 2

//// with access to lab

//// index without study hours equal weighted 

gen index6 = ( ind_clspar+ ind_supp+ ind_acadh+ ind_ppl+ ind_feed+ ind_chtt+ ind_lab+ ind_att)/8


////index without study hours pca weighted 

global xlist ind_att ind_supp ind_acadh ind_clspar ind_ppl ind_feed ind_chtt ind_lab
pca $xlist
pca $xlist, mineigen(1)
gen index8 =  0.111542486*ind_att + 0.137930482*ind_supp + 0.14923651*ind_acadh + 0.11559848*ind_clspar + 0.124437786*ind_ppl + 0.11471707*ind_feed + 0.111484176*ind_chtt+ 0.135053012*ind_lab
sum index8
////
regress index6 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri business science others
regress index8 female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri business science others
 
///////

////index with study hours equal weighted 

gen index7 = ( ind_clspar+ ind_supp+ ind_acadh+ ind_ppl+ ind_feed+ ind_chtt+ ind_lab+ ind_att+ c_study )/9 if c_study!=0
sum index7
regress index8 female public inc_fall d_device disruption science hhsize medu_yr fedu_yr foccup2 moccup2 urban age Afg Bd Np Pak Sri

////index with study hours pca weighted 

global xlist ind_att ind_supp ind_acadh ind_clspar ind_ppl ind_feed ind_chtt ind_lab c_study
pca $xlist
pca $xlist, mineigen(1)
gen index9 =  0.088579116*ind_att + 0.10042714*ind_supp + 0.111955104*ind_acadh + 0.098957298*ind_clspar + 0.109386499*ind_ppl + 0.113707594*ind_feed + 0.126634727*ind_chtt+ 0.106286133*ind_lab+0.144066389*c_study

sum index9


/////  ind_att : , ind_supp :  ,ind_acadh : acadh1 ,ind_clspar :  clspar1, ind_ppl: , ind_feed ind_chtt ind_lab c_study
/////// distress 



olmh1
olmh2
olmh3
olmh4
olmh5
olmh6
olmh7
olmh8

alpha olmh11 olmh12 olmh13 olmh14 olmh15 olmh16 olmh17 olmh18, item


///// demotivation
alpha pbmh1 pbmh2 pbmh3 pbmh4 pbmh5, item


pbmh1
pbmh2
pbmh3
pbmh4
pbmh5

////////// old index 1 2 3

alpha ind_clspar ind_supp ind_acadh ind_ppl ind_feed ind_chtt ind_lab ind_att, std item
alpha ind_clspar ind_supp ind_acadh ind_ppl ind_feed ind_chtt ind_lab ind_att,item

alpha ind_clspar ind_supp ind_acadh ind_ppl ind_feed ind_chtt ind_lab ind_att,asis std item detail gen(SCALE)

//////new index -5 +5

alpha c_clspar c_supp c_acadh c_ppl c_fedte c_chtt c_lab c_att, item
alpha c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att, item
alpha c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_study, item


////newindex
gen newindex = ( c_clspar + c_acadh + c_ppl + c_fedte + c_chtt + c_lab + c_att + c_c_study)/8


gen  indnewindex= ( ind_clspar + ind_acadh + ind_ppl + ind_feed + ind_chtt + ind_lab + ind_att + c_study)/8
sum newindex


regress newindex female public inc_fall d_device disruption hhsize medu_yr fedu_yr foccup2 moccup2 urban age i.acad if country==3, robust 

////dumindex
gen dumindex = 0
replace dumindex = 1 if newindex <0

////dumindexpca
gen dumindexpca = 0
replace dumindexpca = 1 if newindexpca <0

probit dumindex female##urban public inc_fall d_device disruption hhsize medu_yr age business science others if country ==3





//// new pca index
global xlist c_clspar c_acadh c_ppl c_fedte c_chtt c_lab c_att c_c_study if c_study!= 0
summarize $xlist
* Principal component analysis (PCA)
pca $xlist
pca $xlist, mineigen(1)
gen newindexpca = 0.1261387325*c_clspar + 0.2022042106*c_acadh + 0.1228954909*c_ppl + 0.137725479*c_fedte + 0.132915679*c_chtt + 0.2309765685*c_lab + 0.001507785189*c_att + 0.04563605431*c_c_study if c_study!= 0
sum newindexpca
estat kmo


regress newindexpca female acad urban hhsize d_device public inc_fall disruption medu_yr age if country ==3, vce(robust)


//// new index`with old parameters

gen newindex2 = ( c_clspar + c_acadh + c_ppl + c_fedte + c_chtt + c_lab + c_att + c_supp)/8

//// new index`without c study


gen newindex1 = ( c_clspar + c_acadh + c_ppl + c_fedte + c_chtt + c_lab + c_att )/7

////// new model

gen preindex = (clspar1+acadh1+ppl1+fedte1+avgat1)/5

gen postindex = (clspar2+acadh2+ppl2+fedte2+avgat2)/5

regress preindex female##t



egen ac=group(id time)
tab ct, gen(countryyear)








