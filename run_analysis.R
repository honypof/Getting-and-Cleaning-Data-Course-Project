##Load data and check
testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
#head(testx)
#str(testx)
##'data.frame':  2947 obs. of  561 variables:
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
#head(testy)
#str(testy)
##'data.frame':  2947 obs. of  1 variable:
testSub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
#head(testSub)
#str(testSub)
##'data.frame':  2947 obs. of  1 variable:
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
#head(trainx)
#str(trainx)
##'data.frame':  7352 obs. of  561 variables:
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
#head(trainy)
#str(trainy)
##'data.frame':  7352 obs. of  1 variable:
trainSub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
#head(trainSub)
#str(trainSub)
##'data.frame':  7352 obs. of  1 variable:
features <- read.table("./UCI HAR Dataset/features.txt")
#head(features)
#str(features)
##'data.frame':  561 obs. of  2 variables:

##*1  Merges the training and the test sets to create one data set.
combx <- rbind(testx, trainx)

##Add subjects information and name columns
names(combx) <- features[,2]
comby <- rbind(testy, trainy)
names(comby) <- "activities"
combx$activities <- comby
combSub <- rbind(testSub, trainSub)
names(combSub) <- "subjects"
combx$subjects <- combSub

##*2 Extracts only the measurements on the mean and standard deviation for each measurement.
means <- combx[,grepl("mean()", names(combx), fixed = TRUE)]
means$activities <- comby
means$subjects <- combSub[,1]
stds <- combx[,grepl("std()", names(combx), fixed = TRUE)]
stds$activities <- comby
stds$subjects <- combSub[,1]

##*3 Uses descriptive activity names to name the activities in the data set
acNames <- read.table("./activity_labels.txt")
acNames <- as.vector(acNames[,2])
comby2 <- as.vector(comby$activities)

##*4 Appropriately labels the data set with descriptive activity names. 
comby3 <- 1:length(comby2)
for(i in 1:length(comby2)){
  comby3[i] <- acNames[comby2[i]]
}
means$activities <- comby3
stds$activities <- comby3

##*5Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
write.table(means,"tidyaverage.txt")


