***** SAESM Education Team 1 ******
*** 5th June 2021
*** Data till 31st May, N=2016
*** Clean data N==1983


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

