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
 