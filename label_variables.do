
***** SAESM Education Team 1 ******
*** 5th June 2021
*** Data till 31st May, N=2016
*** Clean data N==1983

ta gender
gen female=.
replace female=1 if gender==1
replace female=0 if gender==2
tab female
label variable female "1=female 0=male"

ta area
gen urban=1
replace urban=0 if area==7
ta urban

// HH size
tab hhsize
sum hhsize

// parental education 
ta feduc
gen feduc1=.
replace feduc1=1 if feduc==2
replace feduc1=2 if feduc==4
replace feduc1=3 if feduc==5
replace feduc1=4 if feduc==1
replace feduc1=5 if feduc==6
replace feduc1=6 if feduc==3

label define feduc11 1 "No formal education" 2 "Primary school (grade 5 or below)" 3 "Secondary school" 4 "Higher secondary" 5 "Undergraduate" 6 "Post graduate"
label values feduc1 feduc11
ta feduc1

// label these
ta meduc
gen meduc1=.
replace meduc1=1 if meduc==2
replace meduc1=2 if meduc==4
replace meduc1=3 if meduc==5
replace meduc1=4 if meduc==1
replace meduc1=5 if meduc==6
replace meduc1=6 if meduc==3
tab meduc1

label define meduc11 1 "No formal education" 2 "Primary school (grade 5 or below)" 3 "Secondary school" 4 "Higher secondary" 5 "Undergraduate" 6 "Post graduate"
label values meduc1 meduc11
ta meduc1

*************** minimum years of schooling***********

****** Parental Occupation *****

// working vs nonworking dummy
tab foccup
tab foccup, nol

gen f_work=1
replace f_work=0 if foccup==12 | foccup==7 | foccup==5 | foccup==3  //retired, unemployed, househusband, disabled
replace f_work=. if foccup==2   // deceased
label variable f_work "1=working 0=nonworking"
ta f_work

gen m_work=1
replace m_work=0 if moccup==12 | moccup==7 | moccup==5 | moccup==3  //retired, unemployed, housewife, disabled
replace m_work=. if moccup==2   // deceased
label variable m_work "1=working 0=nonworking"
ta m_work


// Categories of occupation

gen foccup2=.   // deceased will be missing
replace foccup2=1 if foccup==3 | foccup==5  | foccup==12  // non-working: housewife, unemployed, disabled
replace foccup2=2 if foccup==7   // retired
replace foccup2=3 if foccup==9   // self employed
replace foccup2=4 if foccup==8 | foccup==10 | foccup==13 | foccup==11 | foccup==1 // semi or low skilled: low, semi, agri, sales workers
replace foccup2=5 if foccup==4 | foccup==6 // high skilled: high skill workers + military

label define focc 1 "Househusband,unemployed,disabled" 2 "Retired" 3 "Self-employed" 4 "Semi/low skilled" 5 "High skilled"
label values foccup2 focc
tab foccup2

gen moccup2=.   // deceased will be missing
replace moccup2=1 if moccup==3 | moccup==5  | moccup==12  // non-working: housewife, unemployed, disabled
replace moccup2=2 if moccup==7   // retired
replace moccup2=3 if moccup==9   // self employed
replace moccup2=4 if moccup==8 | moccup==10 | moccup==13 | moccup==11 | moccup==1 // semi or low skilled: low, semi, agri, sales workers
replace moccup2=5 if moccup==4 | moccup==6 // high skilled: high skill workers + military

label define mocc 1 "Housewife,unemployed,disabled" 2 "Retired" 3 "Self-employed" 4 "Semi/low skilled" 5 "High skilled"
label values moccup2 mocc
tab moccup2 



/// family income 

gen	inc1_new	=	.				
replace 	inc1_new=1	if	inc1==5
replace 	inc1_new=2	if	inc1==1
replace 	inc1_new=3	if	inc1==2
replace 	inc1_new=4	if	inc1==3
replace 	inc1_new=5	if	inc1==4
						
gen	inc2_new	=	.				
replace 	inc2_new	=	1	if	inc2	==	5
replace 	inc2_new	=	2	if	inc2	==	1
replace 	inc2_new	=	3	if	inc2	==	2
replace 	inc2_new	=	4	if	inc2	==	3
replace 	inc2_new	=	5	if	inc2	==	4


gen c_inc= inc2_new - inc1_new   // change in income level 
tab c_inc

gen ind_inc=.
replace ind_inc=3 if c_inc>0 & c_inc<5   // income increased
replace ind_inc=1 if c_inc<0             // decreased
replace ind_inc=2 if c_inc==0            // unchanged
tab ind_inc



// income decreased dummy
gen inc_fall=0
replace inc_fall=1 if ind_inc==1
ta inc_fall

/// university type

gen type=1
replace type=2 if uni2==22 | uni2==9  // private
replace type=3 if uni2==14 | uni2==15 | uni2==16 | uni2==17 | uni2==20 | uni2==21 | uni2==25  // others - intl, semi

label define uni 1 "Public" 2 "Private" 3 "Others(semi, intl)" 
label values type uni
tab type

*** Academic discipline/degree

// Categories will be bachelor of arts, bachelor of science, bachelor of business and others 
// for others see if you can trace from Major. what is the major of those who said others

tab new_degree
tab new_degree, nol
gen disci=.
replace disci=1 if new_degree==3  | new_degree==11 | new_degree==7    // Humanities includes arts, social science, fine arts
replace disci=2 if  new_degree==1 | new_degree==9| new_degree==6 | new_degree==2 | new_degree==10 // Science includes science, medical, architecture, engineering
replace disci=3 if new_degree==5 | new_degree==4 | new_degree==8   // Business includes commerce, law, business
replace disci=4 if new_degree==12   // Others (i will work on this later to reduce the "others" by matching with major)

label define acadisc 1 "Arts & Humanities" 2 "Science" 3 "Business" 4 "Others"
label values disci acadisc
label variable disci "academic discipline"
tab disci

***************************************LEARNING OUTCOMES (for the index) ***************

****** only for a certain segment of our entire sample, only those who attended online class during COVID
// Attended online classes: N=1859

// grades, assignment, study hours 

tab c_grades
tab c_assi
tab c_study

br name uni1 uni2 idno selfhr1 selfhr2 c_study if c_study==. & donline==4

replace c_study=3 if idno==10644
replace c_study=1 if idno==11947
replace c_study=0 if idno==		10093
replace c_study=0 if idno==		10113
replace c_study=0 if idno==		10280
replace c_study=0 if idno==		10369
replace c_study=0 if idno==		10419
replace c_study=0 if idno==		10627
replace c_study=0 if idno==		10644
replace c_study=0 if idno==		10786
replace c_study=0 if idno==		10858
replace c_study=0 if idno==		11054
replace c_study=0 if idno==		11260
replace c_study=0 if idno==		11348
replace c_study=0 if idno==		11418
replace c_study=0 if idno==		11472
replace c_study=0 if idno==		11507
replace c_study=0 if idno==		11656
replace c_study=0 if idno==		11700
replace c_study=0 if idno==		11791
replace c_study=0 if idno==		11942
replace c_study=0 if idno==		11947
replace c_study=0 if idno==		11970
replace c_study=0 if idno==		11988


br name uni1 uni2 idno avgas1 avgas2 c_assi if fake==0 & c_assi==. & donline==4
replace c_assi=3 if idno==10382
replace c_assi=1 if idno==10628
replace c_assi=3 if idno==11593
replace c_assi=2 if idno==11861

// class participation

gen c_clspar= clspar2 - clspar1
ta c_clspar
gen ind_clspar=.
replace ind_clspar=3 if c_clspar>0 & c_clspar<5  
replace ind_clspar=1 if c_clspar<0 
replace ind_clspar=2 if c_clspar==0
tab ind_clspar

// supplementary learning activites

gen supple1=.
replace supple1=1 if supp1==2
replace supple1=2 if supp1==1
replace supple1=3 if supp1==5
replace supple1=4 if supp1==3
replace supple1=5 if supp1==4

gen supple2=.
replace supple2=1 if supp2==2
replace supple2=2 if supp2==1
replace supple2=3 if supp2==5
replace supple2=4 if supp2==3
replace supple2=5 if supp2==4

tab supple1
tab supple2

gen c_supp= supple2-supple1
ta c_supp

gen ind_supp=.
replace ind_supp=3 if c_supp>0 & c_supp<5  
replace ind_supp=1 if c_supp<0 
replace ind_supp=2 if c_supp==0
tab ind_supp


/// academic honesty 
** (need the scale to be reversed so acadh1-acadh2 for this one)
gen c_acadh	= acadh1-acadh2

gen ind_acadh=.
replace ind_acadh=3 if c_acadh>0 & c_acadh<5  
replace ind_acadh=1 if c_acadh<0 
replace ind_acadh=2 if c_acadh==0
tab ind_acadh

** 1 means it's a bad thing (dishonest), 3 means more honest now

// peer to peer learning

gen c_ppl = ppl2- ppl1
gen ind_ppl=.
replace ind_ppl=3 if c_ppl>0 & c_ppl<5  
replace ind_ppl=1 if c_ppl<0 
replace ind_ppl=2 if c_ppl==0
tab ind_ppl

// feedback from teachers
gen c_fedte = fedte2- fedte1
gen ind_feed=.
replace ind_feed=3 if c_fedte>0 & c_fedte<5  
replace ind_feed=1 if c_fedte<0 
replace ind_feed=2 if c_fedte==0
tab ind_feed

****(ask ma'am if chtt and excc will go under learning index) 

//planning for self study (time management)
gen ind_chtt=.
replace ind_chtt=1 if chtt==3
replace ind_chtt=2 if chtt==2
replace ind_chtt=3 if chtt==1
tab ind_chtt

// extracurricular activities 

gen c_excc = excc2-excc1

gen ind_excc= 3 if  c_excc>0 & c_excc<5 
replace ind_excc= 1 if c_excc<0 
replace ind_excc= 2 if c_excc==0
tab ind_excc


******************** Internship*************

gen int_new1 = 1 if (intop1 == 1 | intop1 ==2)
replace int_new1 = 0 if intop1 == 3
tab int_new1   // 1= internship available 0= not available

gen int_new2 = 1 if (intop2 == 1 | intop2 ==2)
replace int_new2=0 if intop2==3
tab int_new2  // 1= internship available 0= not available

gen c_int= int_new2-int_new1

******** access to labwork ***********
tab dlab
tab dlab, nol
tab daccess
tab daccess, nol

gen ind_lab=.
replace ind_lab = 1 if (dlab==2 & daccess==1)
replace ind_lab  = 2 if (dlab==2 & daccess==3)
replace ind_lab  = 3 if (dlab==2 & daccess==2)
replace ind_lab = 2 if dlab==1
browse idno name fake country ind_lab dlab daccess


********** Acces to technology  (undecided)
// sharing device
// family device
//own device
//attend class wihtout disruption




********************************************  Emotional Wellbeing (undecided)**********



gen	olmh11	=	.				
gen	olmh12	=	.				
gen	olmh13	=	.				
gen	olmh14	=	.				
gen	olmh15	=	.				
gen	olmh16	=	.				
gen	olmh17	=	.				
gen	olmh18	=	.				
							
replace 	olmh11	=	0	if 	olmh1	==	4
replace 	olmh12	=	0	if 	olmh2	==	4
replace 	olmh13	=	0	if 	olmh3	==	4
replace 	olmh14	=	0	if 	olmh4	==	4
replace 	olmh15	=	0	if 	olmh5	==	4
replace 	olmh16	=	0	if 	olmh6	==	4
replace 	olmh17	=	0	if 	olmh7	==	4
replace 	olmh18	=	0	if 	olmh8	==	4
							
replace 	olmh11	=	1	if 	olmh1	==	1
replace 	olmh12	=	1	if 	olmh2	==	1
replace 	olmh13	=	1	if 	olmh3	==	1
replace 	olmh14	=	1	if 	olmh4	==	1
replace 	olmh15	=	1	if 	olmh5	==	1
replace 	olmh16	=	1	if 	olmh6	==	1
replace 	olmh17	=	1	if 	olmh7	==	1
replace 	olmh18	=	1	if 	olmh8	==	1
							
							
							
replace 	olmh11	=	2	if 	olmh1	==	5
replace 	olmh12	=	2	if 	olmh2	==	5
replace 	olmh13	=	2	if 	olmh3	==	5
replace 	olmh14	=	2	if 	olmh4	==	5
replace 	olmh15	=	2	if 	olmh5	==	5
replace 	olmh16	=	2	if 	olmh6	==	5
replace 	olmh17	=	2	if 	olmh7	==	5
replace 	olmh18	=	2	if 	olmh8	==	5
							
							
replace 	olmh11	=	3	if 	olmh1	==	3
replace 	olmh12	=	3	if 	olmh2	==	3
replace 	olmh13	=	3	if 	olmh3	==	3
replace 	olmh14	=	3	if 	olmh4	==	3
replace 	olmh15	=	3	if 	olmh5	==	3
replace 	olmh16	=	3	if 	olmh6	==	3
replace 	olmh17	=	3	if 	olmh7	==	3
replace 	olmh18	=	3	if 	olmh8	==	3
							
replace 	olmh11	=	4	if 	olmh1	==	2
replace 	olmh12	=	4	if 	olmh2	==	2
replace 	olmh13	=	4	if 	olmh3	==	2
replace 	olmh14	=	4	if 	olmh4	==	2
replace 	olmh15	=	4	if 	olmh5	==	2
replace 	olmh16	=	4	if 	olmh6	==	2
replace 	olmh17	=	4	if 	olmh7	==	2
replace 	olmh18	=	4	if 	olmh8	==	2


gen distress= olmh11 + olmh12 + olmh13+ olmh14 + olmh15 + olmh16+	olmh17 + olmh18  // 0 to 32, 32 is highly distressed
tab distress
// attitude towards learning, motivation 

gen 	pbmh1_1	=	.				
gen 	pbmh2_1	=	.				
gen 	pbmh3_1	=	.				
gen 	pbmh4_1	=	.				
gen 	pbmh5_1	=	.				
							
replace 	pbmh1_1	=	0	if 	pbmh1	==	1
replace 	pbmh2_1	=	0	if 	pbmh2	==	1
replace 	pbmh3_1	=	0	if 	pbmh3	==	1
replace 	pbmh4_1	=	0	if 	pbmh4	==	1
replace 	pbmh5_1	=	0	if 	pbmh5	==	1
							
							
							
replace 	pbmh1_1	=	1	if 	pbmh1	==	2
replace 	pbmh2_1	=	1	if 	pbmh2	==	2
replace 	pbmh3_1	=	1	if 	pbmh3	==	2
replace 	pbmh4_1	=	1	if 	pbmh4	==	2
replace 	pbmh5_1	=	1	if 	pbmh5	==	2
							
							
replace 	pbmh1_1	=	2	if 	pbmh1	==	3
replace 	pbmh2_1	=	2	if 	pbmh2	==	3
replace 	pbmh3_1	=	2	if 	pbmh3	==	3
replace 	pbmh4_1	=	2	if 	pbmh4	==	3
replace 	pbmh5_1	=	2	if 	pbmh5	==	3

gen demoti=.
replace demoti= pbmh1_1 + pbmh2_1 +pbmh3_1 + pbmh4_1 +pbmh5_1  // 0 to 


***************************************************  Social Characteristics  ************

tab religion
tab religion, nolabel
gen reli2=4 // non-believers, don't want to disclose
replace reli2=1 if religion==11 | religion==12 | religion==30 // Hinduism
replace reli2=2 if religion==20 | religion==15 | religion==24 // Islam
replace reli2=3 if religion==8  | religion==9 | religion==22 | religion==23 | religion==34  // Others: christian/sikhism/jainism/buddhism
label define reli 1 "Hinduism" 2 "Islam" 3 "Others(christianity,buddhism,sikhism,jainism)" 4 "Non-believers/Don't want to disclose"
label values reli2 reli
tab reli2
 
// caste

tab caste
tab caste, nol
gen caste2=3 // Don't know or N/A
replace caste2=1 if caste==8 | caste==9 | caste==10 | caste==35 | caste==25 | caste==28  // Upper caste: general, normal, uppercaste , other backward caste ( OBC)
replace caste2=2 if caste==19| caste==30 |caste==31   //Lower caste: Sc , St, mostly backwardcaste  
replace caste2=4 if caste==3 // Don't want to disclose
label define caste0 1 "Upper caste" 2 "Lower caste" 3 "Don't know; N/A" 4 "Don't want to disclose"
label values caste2 caste0
tab caste2

// quota will be yes/no
tab quota
gen quota2=1
replace quota2=0 if quota<7  | quota==12
label variable quota2 "1=yes 0=no"

// disability dummy will be made
tab phdis
tab phdis, nol

gen d_phdis=0
replace d_phdis=1 if phdis==5 | phdis==9 | phdis==21 | phdis==17 | phdis==18  
label variable d_phdis "1=disability"
