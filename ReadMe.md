# Tidy Dataset

**As required per the "Getting and Cleaning Data" course of JHU on Coursera**

Source: *Human Activity Recognition Using Smartphones Dataset.*

## Dataset

The dataset is produced from the original sets through the script "run_analysis.R". The output or tidy dataset can be found on "clean_set.txt".

The clean dataset (clean_set.txt) can be read into R through:

	clean_set <- read.table("clean_set.txt", TRUE)
	
## What is provided

The document provides the mean for each activity and subject of all the measurements on the mean and standard deviation for each measurement on the original dataset. Mean and standard deviation measurements have been understood as all of those which ended in mean() or std(), as only those are supposed to be the "measurements on the mean and standard deviation" for that particular measurement, as per the "features_info.txt" document that accompany of the original dataset (it can be found on the "data" folder).