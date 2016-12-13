#Codebook.md
This codebook describes the tidy datasets created for Johns Hopkins Data Science coursera week 4. Specifically, the course project for week 4, "Getting and Cleaning Data"
All codesets ultimately come from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, but were acquired as part of the Johns Hopkins Coursera.

The following general descriptions of variable names are presented in the following section, adapted with modifications from the aforementioned dataset:
""
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean""


## tidyAccelerometerData.csv
tidyAccelerometerData.csv contains a combined view of the train AND test data offered by UCI, but only the columns related to means and standard deviations. We've mostly maintained the original naming convention, with the exception that special characters like -,(, and ) are being replaced by ".".

We've also created the final column, descriptiveActivity, which gives an english language readable description of the data


## tidySummaryData.csv 
tidySummaryData takes the data in tidyAccelerometerData, groups it by activity type according to the descriptiveActivity column, and computes a mean. A row identifies an observation of an activity's mean for the measurement of the column name's mean for that activity. Columns are named according to the same convention as the source data, with the exception that special characters like -,(, and ) are being replaced by ".".



