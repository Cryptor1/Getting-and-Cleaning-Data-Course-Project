---

#Data Dictionary#

---

This codebook is related to *tidy_data.csv* data&nbsp;set. The&nbsp;file
contains **average** values of signals obtained from accelerometer
(*t&#8230;Acc&#8230;X/Y/Z* variables) and 3&#8209;axial&nbsp;gyroscope
(*t&#8230;Gyro&#8230;X/Y/Z* variables) of Samsung&nbsp;Galaxy&nbsp;S smartphone.
These time&nbsp;domain signals (variables' prefix *t* to denote time) were
captured at a&nbsp;constant rate of 50&nbsp;Hz. Then they were filtered using
a&nbsp;median&nbsp;filter and a&nbsp;3rd&nbsp;order low&nbsp;pass Butterworth
filter with a&nbsp;corner&nbsp;frequency of 20&nbsp;Hz to remove noise.
Similarly, the&nbsp;acceleration&nbsp;signal was then separated into body and
gravity acceleration signals (*tBodyAcc&#8230;X/Y/Z* and
*tGravityAcc&#8230;X/Y/Z* variables) using another low&nbsp;pass Butterworth
filter with a&nbsp;corner&nbsp;frequency of 0.3&nbsp;Hz.

<p>Subsequently, the&nbsp;body&nbsp;linear&nbsp;acceleration and
angular&nbsp;velocity were derived in time to obtain Jerk signals
(*tBodyAccJerk&#8230;X/Y/Z* and *tBodyGyroJerk&#8230;X/Y/Z* variables). Also
the&nbsp;magnitude of these three&#8209;dimensional&nbsp;signals were calculated
using the&nbsp;Euclidean&nbsp;norm (*tBodyAccMag&#8230;*,
*tGravityAccMag&#8230;*, *tBodyAccJerkMag&#8230;*, *tBodyGyroMag&#8230;*,
*tBodyGyroJerkMag&#8230;* variables).

<p>Finally a&nbsp;Fast&nbsp;Fourier&nbsp;Transform&nbsp;(FFT) was applied to
some of these signals producing *fBodyAcc&#8230;X/Y/Z*,
*fBodyAccJerk&#8230;X/Y/Z*, *fBodyGyro&#8230;X/Y/Z* variables (variables' prefix
*f* to indicate frequency&nbsp;domain&nbsp;signals).

<p>These signals were used to estimate variables of the&nbsp;feature&nbsp;vector
for each pattern: *X/Y/Z* is used to denote 3&#8209;axial&nbsp;signals in
the&nbsp;X, Y and Z directions.

<p>Additional vectors obtained by averaging the&nbsp;signals in
a&nbsp;signal&nbsp;window sample. These are used on the&nbsp;*angle&#8230;*
variables.

---

##Variables Overview##

###<a name="subject"></a>subject###
**Subject identifier.** Uniquely identifies person
performing specific [*activity_type*](#activity_type).<br />
*integer*<br />
&nbsp;&nbsp;&nbsp;&nbsp;1 &ndash; 30

###<a name="activity_type"></a>activity_type###
**Physical activity type performed by [*subject*](#subject).**<br />
*character*</br />
&nbsp;&nbsp;&nbsp;&nbsp;laying<br />
&nbsp;&nbsp;&nbsp;&nbsp;sitting<br />
&nbsp;&nbsp;&nbsp;&nbsp;standing<br />
&nbsp;&nbsp;&nbsp;&nbsp;walking<br />
&nbsp;&nbsp;&nbsp;&nbsp;walking downstairs<br />
&nbsp;&nbsp;&nbsp;&nbsp;walking upstairs

###tBodyAcc_mean_X###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal mean of
X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;0.2215982 &ndash; 0.3014610

###tBodyAcc_mean_Y###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal mean of
Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.040513953 &ndash; -0.001308288

###tBodyAcc_mean_Z###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal mean of
Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.15251390 &ndash; -0.07537847

###tBodyAcc_std_X###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9960686 &ndash; 0.6269171

###tBodyAcc_std_Y###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9902409 &ndash; 0.6169370

###tBodyAcc_std_Z###
**Average for the&nbsp;time&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9876587 &ndash; 0.6090179

###tGravityAcc_mean_X###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal mean of
X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.6800432 &ndash; 0.9745087

###tGravityAcc_mean_Y###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal mean of
Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.4798948 &ndash; 0.9565938

###tGravityAcc_mean_Z###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal mean of
Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.4950887 &ndash; 0.9578730

###tGravityAcc_std_X###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9967642 &ndash; -0.8295549

###tGravityAcc_std_Y###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9942476 &ndash; -0.6435784

###tGravityAcc_std_Z###
**Average for the&nbsp;time&nbsp;domain gravity acceleration&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9909572 &ndash; -0.6101612

###tBodyAccJerk_mean_X###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal mean
of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;0.0426881 &ndash; 0.1301930

###tBodyAccJerk_mean_Y###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal mean
of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.03868721 &ndash; 0.05681859

###tBodyAccJerk_mean_Z###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal mean
of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.06745839 &ndash; 0.03805336

###tBodyAccJerk_std_X###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9946045 &ndash; 0.5442730

###tBodyAccJerk_std_Y###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9895136 &ndash; 0.3553067

###tBodyAccJerk_std_Z###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.99328831 &ndash; 0.03101571

###tBodyGyro_mean_X###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal mean of
X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.2057754 &nbash; 0.1927045

###tBodyGyro_mean_Y###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal mean of
Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.20420536 &ndash; 0.02747076

###tBodyGyro_mean_Z###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal mean of
Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.0724546 &ndash; 0.1791021

###tBodyGyro_std_X###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9942766 &ndash; 0.2676572

###tBodyGyro_std_Y###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9942105 &ndash; 0.4765187

###tBodyGyro_std_Z###
**Average for the&nbsp;time&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9855384 &ndash; 0.5648758

###tBodyGyroJerk_mean_X###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal mean of
X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.15721254 &ndash; -0.02209163

###tBodyGyroJerk_mean_Y###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal mean of
Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.07680899 &ndash; -0.01320228

###tBodyGyroJerk_mean_Z###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal mean of
Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.092499853 &ndash; -0.006940664

###tBodyGyroJerk_std_X###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9965425 &nbash; 0.1791486

###tBodyGyroJerk_std_Y###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9970816 &ndash; 0.2959459

###tBodyGyroJerk_std_Z###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9953808 &ndash; 0.1932065

###tBodyAccMag_mean###
**Average for the&nbsp;time&nbsp;domain body acceleration magnitude&nbsp;signal
mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9864932 &ndash; 0.6446043

###tBodyAccMag_std###
**Average for the&nbsp;time&nbsp;domain body acceleration magnitude&nbsp;signal
standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9864645 &ndash; 0.4284059

###tGravityAccMag_mean###
**Average for the&nbsp;time&nbsp;domain gravity acceleration
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9864932 &ndash; 0.6446043

###tGravityAccMag_std###
**Average for the&nbsp;time&nbsp;domain gravity acceleration
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9864645 &ndash; 0.4284059

###tBodyAccJerkMag_mean###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9928147 &ndash; 0.4344904

###tBodyAccJerkMag_std###
**Average for the&nbsp;time&nbsp;domain body acceleration Jerk
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9946469 &ndash; 0.4506121

###tBodyGyroMag_mean###
**Average for the&nbsp;time&nbsp;domain body gyroscope magnitude&nbsp;signal
mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9807408 &ndash; 0.4180046

###tBodyGyroMag_std###
**Average for the&nbsp;time&nbsp;domain body gyroscope magnitude&nbsp;signal
standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9813727 &ndash; 0.2999760

###tBodyGyroJerkMag_mean###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.99732253 &ndash; 0.08758166

###tBodyGyroJerkMag_std###
**Average for the&nbsp;time&nbsp;domain body gyroscope Jerk
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9976661 &ndash; 0.2501732

###fBodyAcc_mean_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal mean
of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9952499 &ndash; 0.5370120

###fBodyAcc_mean_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal mean
of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9890343 &ndash; 0.5241877

###fBodyAcc_mean_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal mean
of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9894739 &ndash; 0.2807360

###fBodyAcc_std_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9966046 &ndash; 0.6585065

###fBodyAcc_std_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9906804 &ndash; 0.5601913

###fBodyAcc_std_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9872248 &ndash; 0.6871242

###fBodyAcc_meanFreq_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
mean&nbsp;frequency of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.6359130 &ndash; 0.1591236

###fBodyAcc_meanFreq_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
mean&nbsp;frequency of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.3795185 &ndash; 0.4665282

###fBodyAcc_meanFreq_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration&nbsp;signal
mean&nbsp;frequency of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.5201148 &ndash; 0.4025326

###fBodyAccJerk_mean_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9946308 &ndash; 0.4743173

###fBodyAccJerk_mean_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9893988 &ndash; 0.2767169

###fBodyAccJerk_mean_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9920184 &ndash; 0.1577757

###fBodyAccJerk_std_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9950738 &ndash; 0.4768039

###fBodyAccJerk_std_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9904681 &ndash; 0.3497713

###fBodyAccJerk_std_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.993107760 &ndash; -0.006236475

###fBodyAccJerk_meanFreq_X###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean&nbsp;frequency of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.5760440 &ndash; 0.3314493

###fBodyAccJerk_meanFreq_Y###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean&nbsp;frequency of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.6019714 &ndash; 0.1956773

###fBodyAccJerk_meanFreq_Z###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk&nbsp;signal
mean&nbsp;frequency of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.6275555 &ndash; 0.2301079

###fBodyGyro_mean_X###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal mean of
X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9931226 &ndash; 0.4749624

###fBodyGyro_mean_Y###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal mean of
Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9940255 &ndash; 0.3288170

###fBodyGyro_mean_Z###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal mean of
Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9859578 &ndash; 0.4924144

###fBodyGyro_std_X###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9946522 &ndash; 0.1966133

###fBodyGyro_std_Y###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9943531 &ndash; 0.6462336

###fBodyGyro_std_Z###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
standard&nbsp;deviation of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9867253 &ndash; 0.5224542

###fBodyGyro_meanFreq_X###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
mean&nbsp;frequency of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.3957702 &ndash; 0.2492094

###fBodyGyro_meanFreq_Y###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
mean&nbsp;frequency of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.6668148 &ndash; 0.2731413

###fBodyGyro_meanFreq_Z###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope&nbsp;signal
mean&nbsp;frequency of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.5074909 &ndash; 0.3770741

###fBodyAccMag_mean###
**Average for the&nbsp;frequency&nbsp;domain body acceleration
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9868006 &ndash; 0.5866376

###fBodyAccMag_std###
**Average for the&nbsp;frequency&nbsp;domain body acceleration
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9876485 &ndash; 0.1786846

###fBodyAccMag_meanFreq###
**Average for the&nbsp;frequency&nbsp;domain body acceleration
magnitude&nbsp;signal mean&nbsp;frequency.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.3123380 &ndash; 0.4358469

###fBodyBodyAccJerkMag_mean###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9939983 &ndash; 0.5384048

###fBodyBodyAccJerkMag_std###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9943667 &ndash; 0.3163464

###fBodyBodyAccJerkMag_meanFreq###
**Average for the&nbsp;frequency&nbsp;domain body acceleration Jerk
magnitude&nbsp;signal mean&nbsp;frequency.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.1252104 &ndash; 0.4880885

###fBodyBodyGyroMag_mean###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9865352 &ndash; 0.2039798

###fBodyBodyGyroMag_std###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9814688 &ndash; 0.2366597

###fBodyBodyGyroMag_meanFreq###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope
magnitude&nbsp;signal mean&nbsp;frequency.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.4566387 &ndash; 0.4095216

###fBodyBodyGyroJerkMag_mean###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope Jerk
magnitude&nbsp;signal mean.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9976174 &ndash; 0.1466186

###fBodyBodyGyroJerkMag_std###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope Jerk
magnitude&nbsp;signal standard&nbsp;deviation.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9975852 &ndash; 0.2878346

###fBodyBodyGyroJerkMag_meanFreq###
**Average for the&nbsp;frequency&nbsp;domain body gyroscope Jerk
magnitude&nbsp;signal mean&nbsp;frequency.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.1829236 &ndash; 0.4263017

###angle_tBodyAccMean_gravity###
**Average for the&nbsp;vectors&nbsp;angle time&nbsp;domain body acceleration
mean and gravity signal.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.1630426 &ndash; 0.1291540

###angle_tBodyAccJerkMean_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle time&nbsp;domain body acceleration
Jerk&nbsp;mean and gravity&nbsp;mean signal.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.120554 &ndash; 0.203260

###angle_tBodyGyroMean_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle time&nbsp;domain body
gyroscope&nbsp;mean and gravity&nbsp;mean signal.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.3893051 &ndash; 0.4441012

###angle_tBodyGyroJerkMean_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle time7nbsp;domain body gyroscope
Jerk&nbsp;mean and gravity&nbsp;mean signal.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.2236721 &ndash; 0.1823848

###angle_X_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle gravity&nbsp;mean of X&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.9471165 &ndash; 0.7377844

###angle_Y_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle gravity&nbsp;mean of Y&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.8745677 &ndash; 0.4247612

###angle_Z_gravityMean###
**Average for the&nbsp;vectors&nbsp;angle gravity&nbsp;mean of Z&nbsp;axis.**<br />
*numeric*<br />
&nbsp;&nbsp;&nbsp;&nbsp;-0.8736494 &ndash; 0.3904444
