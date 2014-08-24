# Tidy Dataset

**As required per the "Getting and Cleaning Data" course of JHU on Coursera**

Source: *Human Activity Recognition Using Smartphones Dataset.*

    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - Università degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    www.smartlab.ws
 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. This original dataset has been manipulated to create a tidy dataset with only the mean of the measurements on the mean and standard deviation for each measurement per subject and activity.
 
## Dataset

- **Subject:** Each of the subjects participating in the study.

- **Activity:** The activity being performed when the measurements were taken. It provides the activity for which the mean of each mean and std measurements are computed. There are six possible activity tags: "LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", and "WALKING_UPSTAIRS".

- The rest of variables (columns) are the mean for each measurement on that subject while performing a particular activity.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are the mean (ending in "mean()"), and the standard deviation (ending in "std()").

The mean of the measurements provided, for each mean and std value, and for each of the three-dimensional signals (when appropriate), are:

- tBodyAcc
- tGravityAcc
- tBodyAccJerk
- tBodyGyro
- tBodyGyroJerk
- tBodyAccMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc
- fBodyAccJerk
- fBodyGyro
- fBodyAccMag
- fBodyBodyAccJerkMag
- fBodyBodyGyroMag
- fBodyBodyGyroJerkMag