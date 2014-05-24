Means of mean and standard deviation data from Human Activity Recognition Using Smartphones Data Set
========================================================

This data comes from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and has been cleaned up for the Coursera course "Getting and Cleaning Data"

## Original Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Clean Data Set Information

The data included in this tidy data set include only the mean and standard deviation features for each of the 30 subjects for each of the six activities they partook in.

First the partitioned data, which were separated for testing and training, were recombined to form one data set. After adding the names of each feature to the column heading for this data set, only the features containing **mean** or standard deviation (**std**) of the measurement were retained. 

To this data the subject ID was added to identify to whom which subject the data belonged to. In addition the name of the activity was added to identify what activity the subject was engaged in while the data was collected.

This data set was then transformed into a smaller data set containing only the mean of each feature for each activity and each subject.


### Variables

Each of the **30 subjects** engaged in 6 activities. The subjects are identified by ID number. The activities are:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### Feature Selection on Original Data Set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals and are included in this tidy data set are: 

mean(): Mean value
std(): Standard deviation

This tidy data set contains the **mean** of 66 features. These features are:

- tBodyAcc-mean()-X mean
- tBodyAcc-mean()-Y mean
-	tBodyAcc-mean()-Z mean
-	tBodyAcc-std()-X mean
-	tBodyAcc-std()-Y mean
-	tBodyAcc-std()-Z mean
-	tGravityAcc-mean()-X mean
-	tGravityAcc-mean()-Y mean
-	tGravityAcc-mean()-Z mean
-	tGravityAcc-std()-X mean
-	tGravityAcc-std()-Y mean
-	tGravityAcc-std()-Z mean
-	tBodyAccJerk-mean()-X mean
-	tBodyAccJerk-mean()-Y mean
-	tBodyAccJerk-mean()-Z mean
-	tBodyAccJerk-std()-X mean
-	tBodyAccJerk-std()-Y mean
-	tBodyAccJerk-std()-Z mean
-	tBodyGyro-mean()-X mean
-	tBodyGyro-mean()-Y mean
-	tBodyGyro-mean()-Z mean
-	tBodyGyro-std()-X mean
-	tBodyGyro-std()-Y mean
-	tBodyGyro-std()-Z mean
-	tBodyGyroJerk-mean()-X mean
-	tBodyGyroJerk-mean()-Y mean
-	tBodyGyroJerk-mean()-Z mean
-	tBodyGyroJerk-std()-X mean
-	tBodyGyroJerk-std()-Y mean
-	tBodyGyroJerk-std()-Z mean
-	tBodyAccMag-mean() mean
-	tBodyAccMag-std() mean
-	tGravityAccMag-mean() mean
-	tGravityAccMag-std() mean
-	tBodyAccJerkMag-mean() mean
-	tBodyAccJerkMag-std() mean
-	tBodyGyroMag-mean() mean
-	tBodyGyroMag-std() mean
-	tBodyGyroJerkMag-mean() mean
-	tBodyGyroJerkMag-std() mean
-	fBodyAcc-mean()-X mean
-	fBodyAcc-mean()-Y mean
-	fBodyAcc-mean()-Z mean
-	fBodyAcc-std()-X mean
-	fBodyAcc-std()-Y mean
-	fBodyAcc-std()-Z mean
-	fBodyAccJerk-mean()-X mean
-	fBodyAccJerk-mean()-Y mean
-	fBodyAccJerk-mean()-Z mean
-	fBodyAccJerk-std()-X mean
-	fBodyAccJerk-std()-Y mean
-	fBodyAccJerk-std()-Z mean
-	fBodyGyro-mean()-X mean
-	fBodyGyro-mean()-Y mean
-	fBodyGyro-mean()-Z mean
-	fBodyGyro-std()-X mean
-	fBodyGyro-std()-Y mean
-	fBodyGyro-std()-Z mean
-	fBodyAccMag-mean() mean
-	fBodyAccMag-std() mean
-	fBodyBodyAccJerkMag-mean() mean
-	fBodyBodyAccJerkMag-std() mean
-	fBodyBodyGyroMag-mean() mean
-	fBodyBodyGyroMag-std() mean
-	fBodyBodyGyroJerkMag-mean() mean
-	fBodyBodyGyroJerkMag-std() mean