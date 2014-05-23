Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning Data Course Project

This repo is for the Course Project in the Coursera course "Getting and Cleaning Data".
This repo contains following files

* README.md	--- This file
* run_analysis.R --- R script to generate a tidy data set
* tidyaverage.txt --- data file geneated by "run_analysis.R" and data in the folder "UCI HAR Dataset"

and a folder.

* "UCI HAR Dataset" --- Data for the project. It was downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "here"). Please read "README.txt" in the folder for detail.

### Expranation about "run_analysis.R" 

I am asked to create one R script called run_analysis.R that does the following. 
* (1) Merges the training and the test sets to create one data set.
* (2) Extracts only the measurements on the mean and standard deviation for each measurement. 
* (3) Uses descriptive activity names to name the activities in the data set
* (4) Appropriately labels the data set with descriptive activity names. 
* (5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Accordingly, run_analysis.R consists of six parts.

####(0) Load data and check

Read seven data files and check the contents 
* "./UCI HAR Dataset/test/X_test.txt"
* "./UCI HAR Dataset/test/y_test.txt"
* "./UCI HAR Dataset/test/subject_test.txt"
* "./UCI HAR Dataset/train/X_train.txt"
* "./UCI HAR Dataset/train/y_train.txt"
* "./UCI HAR Dataset/train/subject_train.txt"
* "./UCI HAR Dataset/features.txt"


#### (1) Merges the training and the test sets to create one data set.

Here, test data and train data are combined. Activity information and subject information are added at the last two columns of the combined data frame (combx)

#### (2) Extracts only the measurements on the mean and standard deviation for each measurement.

Measurements on which names contain "means()" and "std()" are selected and data frame called "means" and "stds" are created, respectively.

#### (3) Uses descriptive activity names to name the activities in the data set

According to the file "./activity_labels.txt", activity codes (numbers) are converted to English-like names (descriptive activity names).  

#### (4) Appropriately labels the data set with descriptive activity names. 

Using the vector created (3), activity information in the data frames "means" and "stds" are converted to English-like names (descriptive activity names).

#### (5) Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Finally a tidy data file "tidyaverage.txt" is created from the data frame "means".

### Expranation about "tidyaverage.txt"

This data set is consists of measurements of means:
"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
"tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
"tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
"tBodyAccMag-mean()"          "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"     
"tBodyGyroMag-mean()"         "tBodyGyroJerkMag-mean()"     "fBodyAcc-mean()-X"          
"fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"      
"fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyGyro-mean()-X"         
"fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"         
"fBodyBodyAccJerkMag-mean()"  "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroJerkMag-mean()"

in addition, activity and subject information are in last two columns.

