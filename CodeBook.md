# Code Book
# Getting and Cleaning Data May 2016

This Code Book describes the variables, data, transformations, and work performed to clean up the data. Overall, the average of each variable for each activity and each subject was caculated.

## Identifiers

* `SubjectID` - the ID of the participant, 30 subjects in total
* `ActivityLabel` - the type of activity that the participant was doing when the measurement was recorded

## Activities

6 different activities were recorded for all 30 of the participants.

* `WALKING` (value `1`): subject was walking
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase
* `SITTING` (value `4`): subject was sitting
* `STANDING` (value `5`): subject was standing
* `LAYING` (value `6`): subject was laying down

## Measurements

Removed the parentheses from each measurement variable. The data was subset to only include mean and standard deviation calculations.

The original "features_info.txt" file has the complete background on how and why each of the following measurements was recorded.

* `tBodyAcc-mean-X`
* `tBodyAcc-mean-Y`
* `tBodyAcc-mean-Z`
* `tBodyAcc-std-X`
* `tBodyAcc-std-Y`
* `tBodyAcc-std-Z`
* `tGravityAcc-mean-X`
* `tGravityAcc-mean-Y`
* `tGravityAcc-mean-Z`
* `tGravityAcc-std-X`
* `tGravityAcc-std-Y`
* `tGravityAcc-std-Z`
* `tBodyAccJerk-mean-X`
* `tBodyAccJerk-mean-Y`
* `tBodyAccJerk-mean-Z`
* `tBodyAccJerk-std-X`
* `tBodyAccJerk-std-Y`
* `tBodyAccJerk-std-Z`
* `tBodyGyro-mean-X`
* `tBodyGyro-mean-Y`
* `tBodyGyro-mean-Z`
* `tBodyGyro-std-X`
* `tBodyGyro-std-Y`
* `tBodyGyro-std-Z`
* `tBodyGyroJerk-mean-X`
* `tBodyGyroJerk-mean-Y`
* `tBodyGyroJerk-mean-Z`
* `tBodyGyroJerk-std-X`
* `tBodyGyroJerk-std-Y`
* `tBodyGyroJerk-std-Z`
* `tBodyAccMag-mean`
* `tBodyAccMag-std`
* `tGravityAccMag-mean`
* `tGravityAccMag-std`
* `tBodyAccJerkMag-mean`
* `tBodyAccJerkMag-std`
* `tBodyGyroMag-mean`
* `tBodyGyroMag-std`
* `tBodyGyroJerkMag-mean`
* `tBodyGyroJerkMag-std`
* `fBodyAcc-mean-X`
* `fBodyAcc-mean-Y`
* `fBodyAcc-mean-Z`
* `fBodyAcc-std-X`
* `fBodyAcc-std-Y`
* `fBodyAcc-std-Z`
* `fBodyAccJerk-mean-X`
* `fBodyAccJerk-mean-Y`
* `fBodyAccJerk-mean-Z`
* `fBodyAccJerk-std-X`
* `fBodyAccJerk-std-Y`
* `fBodyAccJerk-std-Z`
* `fBodyGyro-mean-X`
* `fBodyGyro-mean-Y`
* `fBodyGyro-mean-Z`
* `fBodyGyro-std-X`
* `fBodyGyro-std-Y`
* `fBodyGyro-std-Z`
* `fBodyAccMag-mean`
* `fBodyAccMag-std`
* `fBodyBodyAccJerkMag-mean`
* `fBodyBodyAccJerkMag-std`
* `fBodyBodyGyroMag-mean`
* `fBodyBodyGyroMag-std`
* `fBodyBodyGyroJerkMag-mean`
* `fBodyBodyGyroJerkMag-std`