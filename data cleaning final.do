***** SAESM Education Team 1 ******
*** 5th June 2021
*** Data till 31st May, N=2016
*** Clean data N==1983

************************************************* Don't run these *******************************

use "C:\Users\user\Desktop\Stata13\Stata13\saesmdata_june1.dta", clear


rename	Timestamp	timestamp
rename	StudentsName	name
rename	EmailAddress	email
rename	ContactNumberPreferablyWhats	contact
rename	Age	age
rename	Gender	gender
rename	NationalityCountryofResidence country
rename	Nameofyourdivisionprovinces	state
rename	Isyourhomelocatedinarural	area
rename	Howmanymembersarethereinyo	hhsize
rename	Whatiswasyourparentshighes	feduc
rename	M	meduc
rename	Whatisyourparentsoccupation	foccup
rename	O 	moccup
rename	Whatwasyourfamilysapproxima 	inc1
rename	Whatisyourfamilysapproximat	inc2
rename  IncomebeforeCOVIDUSD inc1_usd
rename  IncomeafterCOVIDUSD inc2_usd 
rename	Areyouinvolvedinanyincomeg	dinc1
rename	Ifyesisyourfamilyfinancial	dinc2
rename	Nameofyouruniversity	uni1
rename	Typeofuniversity	uni2
rename	Degree	degree
rename  DegreeNewCategories new_degree
rename	Currentmajorfieldofstudy	major
rename	Isyourdegreeprogrammearegul	course
rename	Currentyearorlevelofstudy	year



rename	Didyouattendanyonlineclasse	donline
rename	Whydidntyouattendonlinecla	nonline
rename	Haveyouleftyourstudiesperma	stu_perm
rename	Ifgivenachancewillyouresu	stu_res
rename	Ifnotwhydidyoudropoutfro	drop_edu
rename	Whatkindofgradingsystemdid	grad_sys
rename	Whatwasyouraverageacademicp	p_perf
rename	Whydidntyouruniversityarran	n_edu
rename	AK	grad_sys1
rename	AL	p_perf1
rename	Didyoureviseorselfstudyat	study1
rename	Onaveragehowmanyhoursdidy	study_t1
rename	AO	a_studyt1
rename	Howdidthepandemicaffectyour	attend 
rename	Ifyourattendancedecreaseddur	r_attend
rename	Howhasyourcourseloadacadem	a_load
rename	AS	p_study_t2
rename	AT	a_study_t2
rename	Howhasyourparticipationinsu	activ
rename	Doesyourcourseworkinvolveany	lab
rename	Ifyeshowhasyouraccesstoo	lab_ac
rename	Howhasyouruseofoncampusre	resource
rename	Doesyourfamilyownorhaveacc	fmown
rename	Doyouownapersonalcomputers	device
rename	Arethereothermemberssibling	dsh1
rename	Doyouhavetoshareyourperson	dsh2
rename	Whendidonlinelearningfirsts	date
rename	Whatwasyourmodeoflearningd	mode
rename	Whatsoftwaresdidyourinstit	software
rename	Whattypeofexaminationassessm	asmed
rename	Whatwasyouraverageclassatte	avgat1


rename	BH	avgat2
rename	Whatkindofgradingsystemdoes	grade_sys
rename	BJ	avgacad1
rename	BK	avgacad2
rename	Howmanyassignmentsdidyousub	avgas1
rename	BN	avgas2
rename	BP	selfhr1
rename	BQ	selfhr2
rename	Howoftenwereyouattendingsup	supp1
rename	BT	supp2

rename	Howfrequentlydidyouuseonca resource2
rename	BV	dlab
rename	Ifyeshowhasyouraccessto	daccess
rename	Howhasthenumberofcoursescr	numcre
rename	Hastheexpectedtimeofyourgr	tgrad
rename	Howlikelyisitthatyouareab	conint
rename	Howlikelywereyoutotakepart	clspar1
rename	Howlikelyareyoutotakepart	clspar2
rename	Howlikelywereyouoranyofyo	acadh1
rename	Howlikelyareyouoranyofyou	acadh2
rename	CE	ppl1
rename	CF	ppl2
rename	Howlikelywereyoutoreceiver	fedte1
rename	Howlikelyareyoutoreceivere	fedte2
rename	Howhasyourabilitytofollowy	chtt
rename	Howlikelywereyoutoparticipa	excc1
rename	CK	excc2
rename	Didyourcomputerliteracyimpro	comp
rename	Howoftendidyougetinternship	intop1
rename	CN	intop2
rename	Ifyouarecurrentlydoinganin	dint
rename	Whatimpactdidonlinelearning	phys
rename	Howoftendidyouexperiencethe	olmh1

rename	CR	olmh2
rename	CS	olmh3
rename	CT	olmh4
rename	CU	olmh5
rename	CV	olmh6
rename	CW	olmh7
rename	CX	olmh8
rename	Therecouldbenegativeeffects	pbmh1
rename	CZ	pbmh2
rename	DA	pbmh3
rename	DB	pbmh4
rename	DC	pbmh5
rename	Therecouldbepositiveeffects	pbmh6
rename	DE	pbmh7
rename	DF	pbmh8
rename	DG	pbmh9
rename	DH	pbmh10
rename	DI	pbmh11
rename	Whatisyourlevelofsatisfacti	stol
rename	Didyoufaceanyofthefollowin	ldmh1
rename	DL	ldmh2
rename	DM	ldmh3
rename	DN	ldmh4
rename	Didyouexperienceanyofthefo	ldmh5
rename	DP	ldmh6
rename	DQ	ldmh7
rename	DR	ldmh8
rename	Haveyousharedaboutyouremoti	shem1
rename	DT	shem2
rename	Whatisyourreligion	religion
rename	Whatisyourcastegroup	caste
rename	Haveyoutakenadmissiontoyour	quota
rename	Areyousufferingfromanykind	phdis
rename	Whatotherdifficultiesyouenco notes 

rename C_Grades c_grades
rename C_Assignments c_assi
rename C_Studyhours c_study
rename Fakeresponse fake

save saesmdata_june1.dta, replace
***************************
label variable selfhr11 "self-study number before COVID"
label variable selfhr22 "self-study number during COVID"
label variable avgas11 "assignments before COVID"
label variable avgas22 "assignments during COVID"


label variable	feduc	"highest level of education? Father	"
label variable	meduc	"highest level of education? Mother	"
label variable	foccup	"father's occ	"
label variable	moccup	"mother's occ	"
label variable	inc1	"family income_before	"
label variable	inc2	"family income_during	"
label variable	dinc1	"involved in any income generating activity	"
label variable	dinc2	"family financially dependent on your earnings	"
label variable	uni1	"Name of your university	"
label variable	uni2	"Type of university	"

label variable	major	"Current major/field of study	"
label variable	course	"Is your degree programme a regular course or a distance learning course?	"
label variable	donline	"Did you attend any online classes during the pandemic	"
label variable	nonline	"Reason for not attending online classes	"
label variable	stu_perm	"Have you left studies permanatly	"
label variable	stu_res	"will you resume your education when physical classes start?	"
label variable	drop_edu	"Reasons for drop out from univerisity	"
label variable	grad_sys	"grading system (didnt attend)	"
label variable	p_perf	"average academic performance PRIOR TO the COVID-19 pandemic (didnt attend)	"
label variable	n_edu	"Why didn't your university arrange any online teaching 	"
label variable	grad_sys1	"grading system(no online class)	"
label variable	p_perf1	"average academic performance PRIOR TO the COVID-19 pandemic (no online)	"
label variable	study1	"revise or self-study at all during the pandemic while official classes were off?	"
label variable	study_t1	"Revision or self study hours prior to COVID 	"
label variable	a_studyt1	"Self study hours after COVID	"
label variable	attend 	"Class attendance impact post COVID (offline class)	"
label variable	r_attend	"Reason for fall in attendance post COVID 	"
label variable	a_load	"Academic workload post COVID (offline class)	"
label variable	p_study_t2	"Hours of self study prior to COVID (offline)	"
label variable	a_study_t2	"Hours of self study post COVID (offline)	"
label variable	activ	"Change in supplementary learning activites (offline)	"
label variable	lab	"Course involves labwork or not (offline)	"
label variable	lab_ac	"Change in access to lab (offline class)	"
label variable	resource	"Change in on campus resources (offline class)	"
label variable	fmown	"Does family own/access to tech	"
label variable	device	"Personal devices	"
label variable	dsh1	"Sibling attending online classes	"
label variable	dsh2	"Sharing of devices	"
label variable	date	"Start date of Online classes	"
label variable	mode	"Mode of learning post COVID	"
label variable	software	"Softwares for online learning 	"
label variable	asmed	"Examination medium for online learning 	"
label variable	avgat1	"Class attendance pre COVID	"
label variable	avgat2	"Class attendance post COVID	"
label variable	grade_sys	"University grading system 	"
label variable	avgacad1	"Average academic performace prior to COVID 	"
label variable	avgacad2	"Average academic performace post COVID 	"
label variable	avgas1	"Assigments submitted per month pre COVID 	"
label variable	avgas2	"Assigments submitted per month post COVID	"
label variable	selfhr1	"Hours of self study pre COVID	"
label variable	selfhr2	"Hours of self study post COVID 	"
label variable	supp1	"Supplementary learning activites prior to COVID	"
label variable	supp2	"Supplementary learning activites post COVID	"
label variable	resource2	"Usage of on campus resources prior to COVID 	"
label variable	dlab	"Whether course involves lab work	"
label variable	daccess	"Access to equipment	"
label variable	numcre	"Change in credit hours post COVID 	"
label variable	tgrad	"Change in time of graduation post COVID	"
label variable	conint	"Likelihood of attending classes without disruption 	"
label variable	clspar1	"Classroom engagement prior to COVID	"
label variable	clspar2	"Classroom engagement post COVID 	"
label variable	acadh1	"Academic dishonesty prior to COVID 	"
label variable	acadh2	"Academic dishonesty post COVID 	"
label variable	ppl1	"Peer to peer learning prior to COVID 	"
label variable	ppl2	"Peer to peer learning post COVID 	"
label variable	fedte1	"Academic feedback pre COVID	"
label variable	fedte2	"Academic feedback post COVID	"
label variable	chtt	"Planning for self study after COVID	"
label variable	excc1	"Extracirriculars pre COVID"
label variable	excc2	"Extracirriculars post COVID	"
label variable	comp	"Change in computer literacy 	"
label variable	intop1	"Internship pre COVID	"
label variable	intop2	"Internship post COVID	"
label variable	dint	"Medium of Internship	"
label variable	phys	"Impact of COVID on physical health	"
label variable	olmh1	"Stress due to COVID	"
label variable	olmh2	"Panic due to COVID 	"
label variable	olmh3	"Anger due to COVID 	"
label variable	olmh4	"Depression due to COVID 	"
label variable	olmh5	"Tiredness due to COVID	"
label variable	olmh6	"Sleeping Disorder due to COVID 	"
label variable	olmh7	"Eating Disorder due to COVID	"
label variable	olmh8	"Social Inhibtion due to COVID	"
label variable	pbmh1	"Restlesness due to COVID 	"
label variable	pbmh2	"Boredom due to COVID 	"
label variable	pbmh3	"Frustration due to COVID 	"
label variable	pbmh4	"Decreased concentration due to COVID 	"
label variable	pbmh5	"Laziness due to COVID	"
label variable	pbmh6	"Calmness due to COVID 	"
label variable	pbmh7	"Increased productivity due to COVID 	"
label variable	pbmh8	"Greater clarity in learning post COVID	"
label variable	pbmh9	"Greater interaction due to COVID 	"
label variable	pbmh10	"Less pressure due to COVID 	"
label variable	pbmh11	"Flexiblity due to COVID 	"
label variable	stol	"Satisfaction with online learning 	"
label variable	ldmh1	"Greater focus due to COVID 	"
label variable	ldmh2	"More time with family due to COVID	"
label variable	ldmh3	"Better communte due to COVID 	"
label variable	ldmh4	"Happy to not have social interaction post COVID 	"
label variable	ldmh5	"Lower motivation due to COVID 	"
label variable	ldmh6	"Lack of enjoyment due to COVID 	"
label variable	ldmh7	"Restlessness due to lockdown 	"
label variable	ldmh8	"Depressive thoughts due to lockdown 	"
label variable	shem1	"Sharing of Mental State pre COVID	"
label variable	shem2	"Sharing of Mental State post COVID 	"
label variable	religion "Religion 	"
label variable	caste	"Caste	"
label variable	quota	"Affirmative action 	"
label variable	phdis	"Suffering from Disability 	"
label variable	notes	"Other difficulties 	"

replace c_assi=3 if c_assi==4
replace c_study=3 if c_study==4
**************************** String to numeric *********************************

destring, replace

***for rest of the string variables: encode and generate

encode	gender,	generate(gender2)
encode	country,	generate(country2)
encode	area,	generate(area2)
encode	inc1,	generate(inc12)
encode inc2,    generate(inc22)
encode	feduc,	generate(feduc2)
encode	meduc,	generate(meduc2)
encode	foccup,	generate(foccup2)
encode	moccup,	generate(moccup2)
encode	uni2,	generate(uni22)
encode	degree,	generate(degree2)
encode new_degree, generate(new_degree2)
encode	course,	generate(course2)
encode	year,	generate(year2)
encode	donline	,	generate(donline2)
encode	nonline	,	generate(nonline2)
encode	stu_perm	,	generate(stu_perm2)
encode	stu_res	,	generate(stu_res2)
encode	drop_edu	,	generate(drop_edu2)
encode	attend 	,	generate(attend2)
encode	r_attend	,	generate(r_attend2)
encode	a_load	,	generate(a_load2)
encode	activ	,	generate(activ2)
encode	lab	,	generate(lab2)
encode	lab_ac	,	generate(lab_ac2)
encode	resource	,	generate(resource_2)
encode	device	,	generate(device2)
encode	dsh1	,	generate(dsh12)
encode	dsh2	,	generate(dsh22)
encode	avgat1	,	generate(avgat12)
encode	avgat2	,	generate(avgat22)
encode	supp1	,	generate(supp12)
encode	supp2	,	generate(supp22)
encode	resource2	,	generate(resource22)
encode	dlab	,	generate(dlab2)
encode	daccess	,	generate(daccess2)
encode	numcre	,	generate(numcre2)
encode	tgrad	,	generate(tgrad2)

encode	chtt	,	generate(chtt2)
encode	comp	,	generate(comp2)
encode	intop1	,	generate(intop12)
encode	intop2	,	generate(intop22)
encode	dint	,	generate(dint2)
encode	olmh1	,	generate(olmh12)
encode	olmh2	,	generate(olmh22)
encode	olmh3	,	generate(olmh32)
encode	olmh4	,	generate(olmh42)
encode	olmh5	,	generate(olmh52)
encode	olmh6	,	generate(olmh62)
encode	olmh7	,	generate(olmh72)
encode	olmh8	,	generate(olmh82)
encode	pbmh1	,	generate(pbmh12)
encode	pbmh2	,	generate(pbmh22)
encode	pbmh3	,	generate(pbmh32)
encode	pbmh4	,	generate(pbmh42)
encode	pbmh5	,	generate(pbmh52)
encode	pbmh6	,	generate(pbmh62)
encode	pbmh7	,	generate(pbmh72)
encode	pbmh8	,	generate(pbmh82)
encode	pbmh9	,	generate(pbmh92)
encode	pbmh10	,	generate(pbmh102)
encode	pbmh11	,	generate(pbmh112)
encode	stol	,	generate(stol2)
encode	ldmh1	,	generate(ldmh12)
encode	ldmh2	,	generate(ldmh22)
encode	ldmh3	,	generate(ldmh32)
encode	ldmh4	,	generate(ldmh42)
encode	ldmh5	,	generate(ldmh52)
encode	ldmh6	,	generate(ldmh62)
encode	ldmh7	,	generate(ldmh72)
encode	ldmh8	,	generate(ldmh82)
encode	shem1	,	generate(shem12)
encode	shem2	,	generate(shem22)
encode	religion	,	generate(religion2)
encode	caste	,	generate(caste2)
encode	quota	,	generate(quota2)
encode	phdis	,	generate(phdis2)




*************************** dropping numeric variables *******************
drop    gender
drop 	country
drop 	area
drop    inc1
drop    inc2
drop 	feduc
drop 	meduc
drop 	foccup
drop 	moccup
drop 	uni2
drop 	degree
drop    new_degree
drop    year
drop 	donline
drop 	nonline
drop  stu_perm
drop stu_res
drop 	drop_edu
drop 	attend
drop 	r_attend
drop 	a_load
drop 	activ
drop 	lab
drop 	lab_ac
drop 	resource
drop 	device
drop 	dsh1
drop 	dsh2
drop 	avgat1
drop 	avgat2
drop 	supp1
drop 	supp2
drop 	resource2
drop 	dlab
drop 	daccess
drop 	numcre
drop 	tgrad
drop 	chtt
drop 	comp
drop 	intop1
drop intop2
drop 	olmh1
drop 	olmh2
drop 	olmh3
drop 	olmh4
drop 	olmh5
drop 	olmh6
drop 	olmh7
drop 	olmh8
drop 	pbmh1
drop 	pbmh2
drop 	pbmh3
drop 	pbmh4
drop 	pbmh5
drop 	pbmh6
drop 	pbmh7
drop 	pbmh8
drop 	pbmh9
drop 	pbmh10
drop 	pbmh11
drop 	ldmh1
drop 	ldmh2
drop 	ldmh3
drop 	ldmh4
drop 	ldmh5
drop 	ldmh6
drop 	ldmh7
drop 	ldmh8
drop 	shem1
drop 	shem2
drop    religion
drop    caste
drop quota
drop course
drop phdis
drop dint

************************************

rename	gender2	gender
rename	country2	country
rename	area2	area
rename	feduc2	feduc
rename	meduc2	meduc
rename	foccup2	foccup
rename	moccup2	moccup
rename	uni22	uni2
rename	degree2	degree
rename  new_degree2 new_degree
rename	donline2	donline
rename	nonline2	nonline
rename stu_perm2 stu_perm
rename stu_res2 stu_res
rename	drop_edu2	drop_edu
rename	attend2	attend
rename	r_attend2	r_attend
rename	a_load2	a_load
rename	activ2	activ
rename	lab2	lab
rename	lab_ac2	lab_ac
rename	resource2	resource
rename	device2	device
rename	dsh12	dsh1
rename	dsh22	dsh2
rename	avgat12	avgat1
rename	avgat22	avgat2
rename	supp12	supp1
rename	supp22	supp2
rename	resource_2	resource2
rename	dlab2	dlab
rename	daccess2	daccess
rename	numcre2	numcre
rename	tgrad2	tgrad
rename	chtt2	chtt
rename	comp2	comp
rename	intop12	intop1
rename intop22 intop2
rename	olmh12	olmh1
rename	olmh22	olmh2
rename	olmh32	olmh3
rename	olmh42	olmh4
rename	olmh52	olmh5
rename	olmh62	olmh6
rename	olmh72	olmh7
rename	olmh82	olmh8
rename	pbmh12	pbmh1
rename	pbmh22	pbmh2
rename	pbmh32	pbmh3
rename	pbmh42	pbmh4
rename	pbmh52	pbmh5
rename	pbmh62	pbmh6
rename	pbmh72	pbmh7
rename	pbmh82	pbmh8
rename	pbmh92	pbmh9
rename	pbmh102	pbmh10
rename	pbmh112	pbmh11
rename	ldmh12	ldmh1
rename	ldmh22	ldmh2
rename	ldmh32	ldmh3
rename	ldmh42	ldmh4
rename	ldmh52	ldmh5
rename	ldmh62	ldmh6
rename	ldmh72	ldmh7
rename	ldmh82	ldmh8
rename	shem12	shem1
rename	shem22	shem2
rename  religion2 religion
rename  caste2 caste
rename quota2 quota
rename inc12 inc1
rename inc22 inc2
rename year2  year
rename course2 course
rename phdis2 phdis
rename dint2 dint

order idno fake timestamp name email contact age	gender	country	state	area	hhsize	feduc	meduc	foccup	moccup	inc1	inc2	inc1_usd inc2_usd dinc1	dinc2	uni1	uni2	degree new_degree	major	course	year	donline	nonline	stu_perm stu_res	drop_edu grad_sys	p_perf	n_edu	grad_sys1	p_perf1	study1	study_t1	a_studyt1	attend 	r_attend	a_load	p_study_t2	a_study_t2	activ	lab	lab_ac	resource2	fmown	device	dsh1	dsh2	date	mode	software	asmed	avgat1	avgat2	grade_sys avgacad1 avgacad2 c_grades avgas1 avgas2 c_assi selfhr1 selfhr2 c_study supp1 supp2  resource dlab daccess numcre tgrad conint clspar1 clspar2 acadh1 acadh2 ppl1 ppl2 fedte1 fedte2 chtt excc1 excc2 comp intop1 intop2 dint	phys	olmh1	olmh2	olmh3	olmh4	olmh5	olmh6	olmh7	olmh8	pbmh1	pbmh2	pbmh3	pbmh4	pbmh5	pbmh6	pbmh7	pbmh8	pbmh9	pbmh10	pbmh11	stol	ldmh1	ldmh2	ldmh3	ldmh4	ldmh5	ldmh6	ldmh7	ldmh8	shem1	shem2	religion	caste	quota	phdis	notes


//dropping duplicates
drop if idno==10406 | idno==10407
drop if idno==10437
drop if idno==10450
drop if idno==10482
drop if idno==10578
drop if idno==10729
drop if idno==10732
drop if idno==10740
drop if idno==10801
drop if idno==10867
drop if idno==10917
drop if idno==10953

replace fake=0 if fake==2

// dropping fake responses
drop if idno==10280
drop if idno==10291
drop if idno==10292
drop if idno==10397
drop if idno==10467
drop if idno==10996
drop if idno==11062
drop if idno==11123
drop if idno==11372
drop if idno==11469
drop if idno==11508
drop if idno==11509
drop if idno==11923
drop if idno==11957
drop if idno==11989
drop if idno==11990
drop if idno==11991
drop if idno==12000
drop if idno==12007

// this response doesn't look fake
replace fake=0 if fake==1

// dropping maldives
drop if country==4


****************************************************************************************************************************************
*************************************** No need to run upto this part *******************************************************************

cd "C:\Users\farzi\OneDrive\Documents\SAESM"
use saesmdata_clean.dta , clear

count 
tab idno
tab fake

replace fake=1 if idno==11923
*********************************** Demographic HH characteristics ***************

//// country dummies!!  

// check for fake response if age==100 
replace fake=1 if age>30
gen n_age=age
replace n_age=19 if age==18.5
replace n_age=21 if age==20.5

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
// country specific


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

// write footnote about highskilled 50% 

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


//// caregory academic

gen acad = 1
replace acad = 2 if science == 1
replace acad = 3 if business == 1
replace acad = 4 if others == 1




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

// class attendance 

gen c_att= avgat2 - avgat1
ta c_att
gen ind_att=.
replace ind_att=3 if c_att>0 & c_att<5  
replace ind_att=1 if c_att<0 
replace ind_att=2 if c_att==0
tab ind_att

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
gen c_c_study=.
replace c_c_study=-1 if c_study==1
replace c_c_study=0 if c_study==2
replace c_c_study=1 if c_study==3
tab c_c_study








//planning for self study (time management)
gen c_chtt=.
replace c_chtt=-1 if chtt==3
replace c_chtt=0 if chtt==2
replace c_chtt=1 if chtt==1
tab c_chtt




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
tab ind_lab

browse idno name fake country ind_lab dlab daccess


//access to labwork (labwork)
gen c_lab=.
replace c_lab=-1 if ind_lab==1
replace c_lab=0 if ind_lab==2
replace c_lab=1 if ind_lab==3
tab c_lab




********** Acces to technology  (undecided)
// sharing device
// family device
//own device
//attend class wihtout disruption

// personal 


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


/////

tab country 
tab country if fake==0



//////// 

global xlist ind_clspar ind_supp ind_acadh ind_ppl ind_feed ind_excc
describe $xlist
summarize $xlist
corr $xlist
pca $xlist
pca $xlist, mineigen(1)
rotate, varimax

//// 

pca c_study ind_att ind_supp ind_acadh ind_clspar ind_ppl ind_feed ind_chtt ind_excc if c_study!= 0

//// public

gen type1=.
replace type1 =1 if type ==1
replace type1 =0  if type ==2 | type ==3
rename type1 public

//// stream dummy
gen science=0
replace science =1  if disci == 2

gen business=0
replace business =1  if disci == 3

gen arts=0
replace arts =1  if disci == 1

gen others=0
replace others =1  if disci == 4
////
gen medu_yr=.
replace	medu_yr	=	5	if	meduc1	==	2		
replace	medu_yr	=	6	if	meduc1	==	2	& country	==1
replace	medu_yr	=	10	if	meduc1	==	3		
replace	medu_yr	=	11	if	meduc1	==	3	& country	==7
replace	medu_yr	=	12	if	meduc1	==	4		
replace	medu_yr	=	13	if	meduc1	==	4	& country	==7
replace	medu_yr	=	16	if	meduc1	==	5		
replace	medu_yr	=	15	if	meduc1	==	5	& country	==3
replace	medu_yr	=	15	if	meduc1	==	5	& country	==5
replace	medu_yr	=	17	if	meduc1	==	5	& country	==7
replace	medu_yr	=	17	if	meduc1	==	6		
replace	medu_yr	=	18	if	meduc1	==	6	& country	==1
replace	medu_yr	=	18	if	meduc1	==	6	& country	==3
replace	medu_yr	=	19	if	meduc1	==	6	& country	==7
////
gen fedu_yr=.
replace	fedu_yr	=	5	if	feduc1	==	2		
replace	fedu_yr	=	6	if	feduc1	==	2	& country	==1
replace	fedu_yr	=	10	if	feduc1	==	3		
replace	fedu_yr	=	11	if	feduc1	==	3	& country	==7
replace	fedu_yr	=	12	if	feduc1	==	4		
replace	fedu_yr	=	13	if	feduc1	==	4	& country	==7
replace	fedu_yr	=	16	if	feduc1	==	5		
replace	fedu_yr	=	15	if	feduc1	==	5	& country	==3
replace	fedu_yr	=	15	if	feduc1	==	5	& country	==5
replace	fedu_yr	=	17	if	feduc1	==	5	& country	==7
replace	fedu_yr	=	17	if	feduc1	==	6		
replace	fedu_yr	=	18	if	feduc1	==	6	& country	==1
replace	fedu_yr	=	18	if	feduc1	==	6	& country	==3
replace	fedu_yr	=	19	if	feduc1	==	6	& country	==7


////
encode inc2_usd, generate(inc2_usd2)
drop inc2_usd
rename inc2_usd2 inc2_usd
////
gen av_inc2=.
replace av_inc2=	179	if inc2_usd==	1
replace av_inc2=	1541	if inc2_usd==	2
replace av_inc2=	224	if inc2_usd==	3
replace av_inc2=	301	if inc2_usd==	4
replace av_inc2=	413	if inc2_usd==	5
replace av_inc2=	444	if inc2_usd==	6
replace av_inc2=	319	if inc2_usd==	7
replace av_inc2=	480	if inc2_usd==	8
replace av_inc2=	400	if inc2_usd==	9
replace av_inc2=	574	if inc2_usd==	10
replace av_inc2=	538	if inc2_usd==	11
replace av_inc2=	720	if inc2_usd==	12
replace av_inc2=	737	if inc2_usd==	13
replace av_inc2=	792	if inc2_usd==	14
replace av_inc2=	968	if inc2_usd==	15
replace av_inc2=	856	if inc2_usd==	16
replace av_inc2=	1326	if inc2_usd==	17
replace av_inc2=	1426	if inc2_usd==	18
replace av_inc2=	1769	if inc2_usd==	19
replace av_inc2=	1290	if inc2_usd==	20
replace av_inc2=	1902	if inc2_usd==	21
replace av_inc2=	2055	if inc2_usd==	22
replace av_inc2=	765	if inc2_usd==	23
replace av_inc2=	960	if inc2_usd==	24
replace av_inc2=	102	if inc2_usd==	25
replace av_inc2=	172	if inc2_usd==	26
replace av_inc2=	236	if inc2_usd==	27
replace av_inc2=	254	if inc2_usd==	28
replace av_inc2=	253.59	if inc2_usd==	29
replace av_inc2=	274	if inc2_usd==	30
////Acccess to techh


gen d_device1=0 if donline==4
replace d_device1=1 if device==2 & dsh2==2 // personal device and never shares
replace d_device1=1 if device==2 & dsh2==4 // personal device and rarely has to share

tab d_device1


//attend class wihtout disruption
gen disruption=.
replace disruption=1 if conint<4
replace disruption=0 if conint==4 | conint==5
tab disruption

///// grade dummy
ta c_grades
gen dgrade = 1 if c_grades==1
replace dgrade = 0 if  c_grades==2 |  c_grades==3
ta dgrade
///// studyhours dummy
ta c_study
gen dstudy = 1 if c_study==1
replace dstudy = 0 if  c_study==2 |  c_study==3
ta dstudy
///// asssignment dummy
ta c_assi
gen dassi= 1 if c_assi==1
replace dassi = 0 if  c_assi==2 |  c_assi==3
ta dassi

////

kdensity newindex, nograph generate(x fx)
kdensity index6 if gender ==0, nograph generate(fx0) at(x)
kdensity index6 if gender ==1, nograph generate(fx1) at(x)
label var fx0 "Male"
label var fx1 "Female"
line fx0 fx1 x, sort ytitle(Density)

//////
gen country1 = country
replace country1 = 1 if country ==3
replace country1= 2 if country == 1
replace country1= 3 if country == 2




