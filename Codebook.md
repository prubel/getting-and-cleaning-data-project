The measurements in average-by-subject-and-activity.txt follow the
data described in the features_info.txt data from the original datafile:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

In addition to fields described in that file, there are two additional
fields:

* subject:
this column contains a number specifying which participant the
measurement belong to.

* activity: 
a factor of 6 values one of either: WALKING, WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING.

The other data columns describe values derived from measurements
described in features_info.txt. Each row of data is a collection of
measurements for a given subject doing a given activity. 
Each column aggregates all measurements for a given activity by a
given subject by taking the mean of all measurements with the same
subject and activity. 

These column names were derived from the names in features.txt in the
UCI data by prepending mean_of to each measurement and removing
(). So for example the mean of measurements of  tBodyAcc-min()-Z from
the UCI data would be found in the column named mean_of_tBodyAcc-min-Z

The following columns are included in this data. For units and a
detailed description please see features_info.txt and README.txt in
the UCI dataset. 

* mean_of_tBodyAcc-mean-X
* mean_of_tBodyAcc-mean-Y
* mean_of_tBodyAcc-mean-Z
* mean_of_tBodyAcc-std-X
* mean_of_tBodyAcc-std-Y
* mean_of_tBodyAcc-std-Z 
* mean_of_tGravityAcc-mean-X
* mean_of_tGravityAcc-mean-Y
* mean_of_tGravityAcc-mean-Z
* mean_of_tGravityAcc-std-X
* mean_of_tGravityAcc-std-Y
* mean_of_tGravityAcc-std-Z
* mean_of_tBodyAccJerk-mean-X
* mean_of_tBodyAccJerk-mean-Y
* mean_of_tBodyAccJerk-mean-Z
* mean_of_tBodyAccJerk-std-X
* mean_of_tBodyAccJerk-std-Y
* mean_of_tBodyAccJerk-std-Z
* mean_of_tBodyGyro-mean-X
* mean_of_tBodyGyro-mean-Y
* mean_of_tBodyGyro-mean-Z
* mean_of_tBodyGyro-std-X
* mean_of_tBodyGyro-std-Y
* mean_of_tBodyGyro-std-Z
* mean_of_tBodyGyroJerk-mean-X
* mean_of_tBodyGyroJerk-mean-Y
* mean_of_tBodyGyroJerk-mean-Z
* mean_of_tBodyGyroJerk-std-X
* mean_of_tBodyGyroJerk-std-Y
* mean_of_tBodyGyroJerk-std-Z
* mean_of_tBodyAccMag-mean
* mean_of_tBodyAccMag-std
* mean_of_tGravityAccMag-mean
* mean_of_tGravityAccMag-std
* mean_of_tBodyAccJerkMag-mean
* mean_of_tBodyAccJerkMag-std
* mean_of_tBodyGyroMag-mean
* mean_of_tBodyGyroMag-std
* mean_of_tBodyGyroJerkMag-mean
* mean_of_tBodyGyroJerkMag-std
* mean_of_fBodyAcc-mean-X
* mean_of_fBodyAcc-mean-Y
* mean_of_fBodyAcc-mean-Z
* mean_of_fBodyAcc-std-X
* mean_of_fBodyAcc-std-Y
* mean_of_fBodyAcc-std-Z
* mean_of_fBodyAcc-meanFreq-X
* mean_of_fBodyAcc-meanFreq-Y
* mean_of_fBodyAcc-meanFreq-Z
* mean_of_fBodyAccJerk-mean-X
* mean_of_fBodyAccJerk-mean-Y
* mean_of_fBodyAccJerk-mean-Z
* mean_of_fBodyAccJerk-std-X
* mean_of_fBodyAccJerk-std-Y
* mean_of_fBodyAccJerk-std-Z
* mean_of_fBodyAccJerk-meanFreq-X
* mean_of_fBodyAccJerk-meanFreq-Y
* mean_of_fBodyAccJerk-meanFreq-Z
* mean_of_fBodyGyro-mean-X
* mean_of_fBodyGyro-mean-Y
* mean_of_fBodyGyro-mean-Z
* mean_of_fBodyGyro-std-X
* mean_of_fBodyGyro-std-Y
* mean_of_fBodyGyro-std-Z
* mean_of_fBodyGyro-meanFreq-X
* mean_of_fBodyGyro-meanFreq-Y
* mean_of_fBodyGyro-meanFreq-Z
* mean_of_fBodyAccMag-mean
* mean_of_fBodyAccMag-std
* mean_of_fBodyAccMag-meanFreq
* mean_of_fBodyBodyAccJerkMag-mean
* mean_of_fBodyBodyAccJerkMag-std
* mean_of_fBodyBodyAccJerkMag-meanFreq
* mean_of_fBodyBodyGyroMag-mean
* mean_of_fBodyBodyGyroMag-std
* mean_of_fBodyBodyGyroMag-meanFreq
* mean_of_fBodyBodyGyroJerkMag-mean
* mean_of_fBodyBodyGyroJerkMag-std
* mean_of_fBodyBodyGyroJerkMag-meanFreq
