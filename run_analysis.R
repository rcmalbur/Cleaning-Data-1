# STEP 1
# Merging the training and the test set to create one data set.

## Reading data
dataX_train <- read.table("data/train/X_train.txt")
dataX_test <- read.table("data/test/X_test.txt")

## Merging data
dataX <- rbind(dataX_train, dataX_test)


# STEP 2
# Selecs only the mean and standard deviation of each measurement

## Reading all features
features <- read.table("data/features.txt")

## Selecting only mean and std features
std <- grepl("-std()", features$V2, fixed=TRUE)
meanstd <- grepl("-mean()", features$V2, fixed=TRUE)
meanstd[std == TRUE] <- TRUE
dataX <- dataX[,meanstd]


# STEP 3
# Descriptive activity names for each activity in the data set

## Reading activity tables
dataactivity_train <- read.table("data/train/y_train.txt")
dataactivity_test <- read.table("data/test/y_test.txt")

## Merging activities for train and test sets; naming the column variable
dataactivity <- rbind(dataactivity_train, dataactivity_test)
names(dataactivity) <- "Activity"

## Reading labels and changing the Activity value to names instead of reference numbers.
labels <- read.table("data/activity_labels.txt")
labels$V2 <- as.character(labels$V2)
for(i in seq_along(labels$V1)){
    dataactivity[dataactivity == labels[i,1]] <- labels[i,2]
}


# STEP 4
# Naming the features (columns) in the dataset.

names(dataX) <- features$V2[meanstd]


# STEP 5
# Independent data set with the average of each variable for each activity and each subject.

## PART A
## Matching features with activities and subjects

### Reading subjects
datasubject_train <- read.table("data/train/subject_train.txt")
datasubject_test <- read.table("data/test/subject_test.txt")

### Merging subjects for train and test sets; naming the column variable
datasubject <- rbind(datasubject_train, datasubject_test)
names(datasubject) <- "Subject"

### Merging the original dataset (train and test) with corresponding activities and subjects.
### Also orders by (1st) subject and (2nd)activity
dataX <- cbind(datasubject, dataactivity, dataX)
dataX <- dataX[order(dataX$Subject, dataX$Activity),]

## PART B
## Creating an independent dataset

### All variables on the same columns ($variable = variable name; $value = variable value)
library(reshape2)
dataf <- melt(dataX, id=c("Subject", "Activity"))

### Dataset with the average of each variable for each activity by subject. 
dataf <- dcast(dataf, Subject + Activity ~ variable, mean)

# FINAL STEP
# Write the dataset into a txt file
write.table(dataf, "clean_set.txt", row.name=FALSE)