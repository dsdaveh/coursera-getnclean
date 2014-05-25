#CodeBook
This CodeBook accompanies the project deliverables for Coursera/Getting and Cleaning Data

##Study Design (Background and Acknowledgement)
This section is take from the README.txt file provided with the raw dataset.
Note that this section addresses the **raw dataset** and not the processed (tidy) dataset which is described in subsequent sections.
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Codebook
This section is specific to the data provided as part of the Coursera project deliverables

### Measurment Data
*tidy_data.csv*

subject_id:  identifies the subject (study participant)
	1-30
	
activity:  the activity being performed when the measurements were taken
	[ laying, sitting, standing, walking, walking_downstairs, walking_upstairs ]
	
group: the data group from which the data came
	[ test, train ]
	
timeBodyAcc.mean.X  
timeBodyAcc.mean.Y
timeBodyAcc.mean.Z
timeBodyAcc.std.X
timeBodyAcc.std.Y
timeBodyAcc.std.Z
timeGravityAcc.mean.X
timeGravityAcc.mean.Y
timeGravityAcc.mean.Z
timeGravityAcc.std.X
timeGravityAcc.std.Y
timeGravityAcc.std.Z
timeBodyAccJerk.mean.X
timeBodyAccJerk.mean.Y
timeBodyAccJerk.mean.Z
timeBodyAccJerk.std.X
timeBodyAccJerk.std.Y
timeBodyAccJerk.std.Z
timeBodyGyro.mean.X
timeBodyGyro.mean.Y
timeBodyGyro.mean.Z
timeBodyGyro.std.X
timeBodyGyro.std.Y
timeBodyGyro.std.Z
timeBodyGyroJerk.mean.X
timeBodyGyroJerk.mean.Y
timeBodyGyroJerk.mean.Z
timeBodyGyroJerk.std.X
timeBodyGyroJerk.std.Y
timeBodyGyroJerk.std.Z
timeBodyAccMag.mean
timeBodyAccMag.std
timeGravityAccMag.mean
timeGravityAccMag.std
timeBodyAccJerkMag.mean
timeBodyAccJerkMag.std
timeBodyGyroMag.mean
timeBodyGyroMag.std
timeBodyGyroJerkMag.mean
timeBodyGyroJerkMag.std
freqBodyAcc.mean.X
freqBodyAcc.mean.Y
freqBodyAcc.mean.Z
freqBodyAcc.std.X
freqBodyAcc.std.Y
freqBodyAcc.std.Z
freqBodyAccJerk.mean.X
freqBodyAccJerk.mean.Y
freqBodyAccJerk.mean.Z
freqBodyAccJerk.std.X
freqBodyAccJerk.std.Y
freqBodyAccJerk.std.Z
freqBodyGyro.mean.X
freqBodyGyro.mean.Y
freqBodyGyro.mean.Z
freqBodyGyro.std.X
freqBodyGyro.std.Y
freqBodyGyro.std.Z
freqBodyAccMag.mean
freqBodyAccMag.std
freqBodyBodyAccJerkMag.mean
freqBodyBodyAccJerkMag.std
freqBodyBodyGyroMag.mean
freqBodyBodyGyroMag.std
freqBodyBodyGyroJerkMag.mean
freqBodyBodyGyroJerkMag.std

### Summary Data
*tidy_data_means.csv*

Contains the mean measurement for each subject_id, acivity and measurement.
Rows = time/freq measurements listed above
Column = n.activity, 
+ n = subject_id
+ example the value in cell  Row=feqBodyGyro.std.Y Col=3.laying represents the standard deviation of all feqBodyGyro.std.Y measurements taken for subject #3 (of 30) during the "laying" activity 