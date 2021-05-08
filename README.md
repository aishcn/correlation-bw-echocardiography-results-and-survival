# correlation-bw-echocardiography-results-and-survival

1  Source of Data

The  data  for  the  project  is  collected  from  the  UC  Irvine  Machine  Learning Repository.  The donor of the data set is Steven Salzberg,  an American computational biologist and computer scientist who is a Bloomberg Distinguished Professor  of  Biomedical  Engineering,  Computer  Science,  and  Biostatistics  at Johns Hopkins University. The data set was donated in 1989.


2  Description of the variables

The data set was collected in 1989, it contains information of 132 patients in a U.S. clinical trial studied by Steven Salzberg at Harvard University. All 132 patients suffered from heart attacks at some point before the study was conducted. Echocardiography examinations were performed on all patients. The variables studied include: 

●	Survival Month :  The number of months a patient survived (has survived,  if patient is still alive).  Because all the patients had their heart attacks at different times, it is possible that some patients have survived less than one year but they are still alive.  Check the second variable to confirm this.  Such patients cannot be used for the prediction task mentioned above.The unit of this variable is months.

●	Still-alive : Dummy variable.  0 = dead at end of survival period, 1 = still alive.

●	Age at Heart Attack :  Age in years when the patient’s first heart attack occurred. The unit of this variable is years.

●	Pericardial-Effusion (PE) : Dummy Variable.  Pericardial effusion is fluid around the heart. 0=no fluid, 1=fluid. Pericardial effusion is the buildup of extra fluid in the space around the heart. If too much fluid builds up, it can put pressure on the heart. This can prevent it from pumping normally. PE is examined using echocardiography.

●	Fractional-Shortening (FS) :  A measure of contractility around the heart. Fractional shortening (FS) is calculated by measuring the percentage change in left ventricular diameter during systole, examined using echocardiography. The unit of FS variable is observed as percentage values (%).

●	EPSS :  E-point septal separation, another measure of contractility.  Larger Numbers are increasingly abnormal. EPSS can be examined using echocardiography by measuring distance in space separating the anterior MV leaflet from the septal wall. The unit of EPSS is millimeter (mm).

●	LVDD :  left ventricular end-diastolic dimension, examined using echocardiography.  This is a measure of the size of the heart at the end-diastole.  Large hearts tend to be sick hearts.The LVDD variable is observed as percentage values (%).

●	Wall-Motion-Index :  equals wall-motion-score divided by number of segments seen.  Using a standard transthoracic echocardiography sequence, each myocardial segment is assigned a score from 1 to 4. Usually 12-13 segments are seen in an echocardiogram. 


3. Research question or motivation

Heart attack, or myocardial infarction (MI), occurs when the flow of blood to the heart is blocked. WHO reported that cardiovascular diseases (CVDs) are the number 1 cause of death globally, taking an estimated 17.9 million lives each year. CVDs create a significant impact both socially and economically. According to the American Heart Association, the direct and indirect costs of cardiovascular diseases and stroke totaled more than $316.6 billion, which includes health expenditures and lost productivity. 

Echocardiography is one of the most prominent methods used for CVD diagnosis as it provides crucial information including the variables listed in the part 2. In this research, we aim to use the echocardiography explanatory variables listed above to predict the patients’ total survival months. This analysis will help identify the key echocardio factors that affect the patients’ survivals, and examine whether echocardiography results are good predictors for patients’ total survival months.
![image](https://user-images.githubusercontent.com/37977458/117555989-d96cfb80-b081-11eb-9457-1fcd15dd9b3a.png)
