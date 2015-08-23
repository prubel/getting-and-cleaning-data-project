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

 [1] "subject"                               "activity"                             
 [3] "mean_of_tBodyAcc-mean-X"               "mean_of_tBodyAcc-mean-Y"              
 [5] "mean_of_tBodyAcc-mean-Z"               "mean_of_tBodyAcc-std-X"               
 [7] "mean_of_tBodyAcc-std-Y"                "mean_of_tBodyAcc-std-Z"               
 [9] "mean_of_tGravityAcc-mean-X"            "mean_of_tGravityAcc-mean-Y"           
[11] "mean_of_tGravityAcc-mean-Z"            "mean_of_tGravityAcc-std-X"            
[13] "mean_of_tGravityAcc-std-Y"             "mean_of_tGravityAcc-std-Z"            
[15] "mean_of_tBodyAccJerk-mean-X"           "mean_of_tBodyAccJerk-mean-Y"          
[17] "mean_of_tBodyAccJerk-mean-Z"           "mean_of_tBodyAccJerk-std-X"           
[19] "mean_of_tBodyAccJerk-std-Y"            "mean_of_tBodyAccJerk-std-Z"           
[21] "mean_of_tBodyGyro-mean-X"              "mean_of_tBodyGyro-mean-Y"             
[23] "mean_of_tBodyGyro-mean-Z"              "mean_of_tBodyGyro-std-X"              
[25] "mean_of_tBodyGyro-std-Y"               "mean_of_tBodyGyro-std-Z"              
[27] "mean_of_tBodyGyroJerk-mean-X"          "mean_of_tBodyGyroJerk-mean-Y"         
[29] "mean_of_tBodyGyroJerk-mean-Z"          "mean_of_tBodyGyroJerk-std-X"          
[31] "mean_of_tBodyGyroJerk-std-Y"           "mean_of_tBodyGyroJerk-std-Z"          
[33] "mean_of_tBodyAccMag-mean"              "mean_of_tBodyAccMag-std"              
[35] "mean_of_tGravityAccMag-mean"           "mean_of_tGravityAccMag-std"           
[37] "mean_of_tBodyAccJerkMag-mean"          "mean_of_tBodyAccJerkMag-std"          
[39] "mean_of_tBodyGyroMag-mean"             "mean_of_tBodyGyroMag-std"             
[41] "mean_of_tBodyGyroJerkMag-mean"         "mean_of_tBodyGyroJerkMag-std"         
[43] "mean_of_fBodyAcc-mean-X"               "mean_of_fBodyAcc-mean-Y"              
[45] "mean_of_fBodyAcc-mean-Z"               "mean_of_fBodyAcc-std-X"               
[47] "mean_of_fBodyAcc-std-Y"                "mean_of_fBodyAcc-std-Z"               
[49] "mean_of_fBodyAcc-meanFreq-X"           "mean_of_fBodyAcc-meanFreq-Y"          
[51] "mean_of_fBodyAcc-meanFreq-Z"           "mean_of_fBodyAccJerk-mean-X"          
[53] "mean_of_fBodyAccJerk-mean-Y"           "mean_of_fBodyAccJerk-mean-Z"          
[55] "mean_of_fBodyAccJerk-std-X"            "mean_of_fBodyAccJerk-std-Y"           
[57] "mean_of_fBodyAccJerk-std-Z"            "mean_of_fBodyAccJerk-meanFreq-X"      
[59] "mean_of_fBodyAccJerk-meanFreq-Y"       "mean_of_fBodyAccJerk-meanFreq-Z"      
[61] "mean_of_fBodyGyro-mean-X"              "mean_of_fBodyGyro-mean-Y"             
[63] "mean_of_fBodyGyro-mean-Z"              "mean_of_fBodyGyro-std-X"              
[65] "mean_of_fBodyGyro-std-Y"               "mean_of_fBodyGyro-std-Z"              
[67] "mean_of_fBodyGyro-meanFreq-X"          "mean_of_fBodyGyro-meanFreq-Y"         
[69] "mean_of_fBodyGyro-meanFreq-Z"          "mean_of_fBodyAccMag-mean"             
[71] "mean_of_fBodyAccMag-std"               "mean_of_fBodyAccMag-meanFreq"         
[73] "mean_of_fBodyBodyAccJerkMag-mean"      "mean_of_fBodyBodyAccJerkMag-std"      
[75] "mean_of_fBodyBodyAccJerkMag-meanFreq"  "mean_of_fBodyBodyGyroMag-mean"        
[77] "mean_of_fBodyBodyGyroMag-std"          "mean_of_fBodyBodyGyroMag-meanFreq"    
[79] "mean_of_fBodyBodyGyroJerkMag-mean"     "mean_of_fBodyBodyGyroJerkMag-std"     
[81] "mean_of_fBodyBodyGyroJerkMag-meanFreq"
