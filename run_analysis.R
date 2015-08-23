## Class Project: Parse, join, and summarize UCI HAR dataset
# This script show how to collect, clean, and work with a data set. Specifically it
# analyzes the UCI HAR dataset about wearable computing, measured via smartphone.
# It generates a tidy dataset showing the mean of each mean and standard deviation
# of each variable on a per-participant, per-activity basis measured in the 
# original dataset. This dataset can be found in average-by-subject-and-activity.txt.
#
### Assumptions
# This script assumers that the dataset UCI HAR Dataset.zip
# with an md5sum of d29710c9530a31f303801b6bc34bd895 has been unzipped
# from the directory containing this script into UCI-HAR-Dataset. Note that 
# the spaces in the original directory name have been replaced with dashes.

### Annotated Code:
#import necessary libraries
#```
library(data.table)
library(dplyr)
#```

### Merge training and test measurement data: addresses portion of point #1
# place test and train together using rbind. Leaves our data in
# the X variable, which matches the description in the UCI HAR data. 
#```
xtst <- read.table("UCI-HAR-Dataset/test/X_test.txt")
xtrn <- read.table("UCI-HAR-Dataset/train/X_train.txt")
X <- rbind(xtst, xtrn)

#```
### Label the columns, addresses point #4
# Read the feature names from features.txt and assign them to
# a list of names. Remove '()' from the names to improve readability.
# The features are numbered, but we only want the names so we take only
# the second column (names) and use these to set the column names of X.
# At this point we have addressed parts of points 1 and 4. 
#```
names <- read.table("UCI-HAR-Dataset/features.txt")
new_names <- gsub("\\(\\)", "", names[,2])
colnames(X) <- new_names

#```
### Associate activities with the rows in X,  portion of point #1
# what was each participant
# doing when the given measurements were taken?
# Here we bind train and test together and mark which activities
# the data in X corresponds to. This activity column is named 'activity',
# keeping our labels per point #4.
#```
ytst <- read.table("UCI-HAR-Dataset/test/y_test.txt")
ytrn <- read.table("UCI-HAR-Dataset/train/y_train.txt")
activities <- rbind(ytst, ytrn)
colnames(activities) <- c("activity")

#```
### Add descriptive activity names, point #3
# We read in the activity labels, allowing us to turn numbers from above
# into human-readable labels here. We map from what is in activities
# to what we have read into actLabels. At this point we've addressed point 3
# and portions of 1 and 4.
#```
actLabels <- read.table("UCI-HAR-Dataset/activity_labels.txt")
activities$activity <- actLabels[activities$activity,2]
X <- cbind(X, activities)
dim(X)

#```
### Add subject data to the measurements
# We associate subjects with the measurements, joining that with our current
# X data. At this point we add no more columns, and we have addressed parts
# 1, 3, and 4. 
#```
stest <- read.table("UCI-HAR-Dataset/train/subject_train.txt")
strain <- read.table("UCI-HAR-Dataset/test/subject_test.txt")
subj <- rbind(stest, strain)
colnames(subj) <- c("subject")
X <- cbind(X, subj)

#```
### Extract only measurements with mean and standard deviation, addressing point 3.
# Here we only take columns with the word mean, std, subject, or activity. We did
# not split things previously to simplify labeling. After this block we have
# completely addressed points 1,2,3, and 4. Note that this data will be a wide tidy 
# data as described here: 
# https://class.coursera.org/getdata-031/forum/thread?thread_id=113
#```
XMeanSubset <- X[, like(colnames(X), "mean")    | like(colnames(X), "std") | 
                   like(colnames(X), "subject") | like(colnames(X), "activity")]

#```
### Create an average of each variable, completes point 5. 
# At this point we group the data by subject and activity and summarize each
# group using the mean function. We additionally rename the columns so that,
# other than subject and activity, the first 2 columns, they each note that they
# now contain a measurement of the means of multiple values. 
#```
group_by_subj_act <- group_by(XMeanSubset, subject, activity)
subj_activity_mean <- (group_by_subj_act %>% summarise_each(funs(mean)))
colnames(subj_activity_mean) <- c("subject", "activity", paste("mean_of_", sep="", colnames(subj_activity_mean[c(-1,-2)])))

#```
## Summary
# At this point we've addressed steps 1-5 of the assignment and written the
# output to average-by-subject-and-activity.txt.
#```
write.table(subj_activity_mean, 
            file="average-by-subject-and-activity.txt", 
            row.name=FALSE)
#```
