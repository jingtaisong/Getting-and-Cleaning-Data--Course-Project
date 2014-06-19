Getting and Cleaning Data: Course Project
========================================================
Taisong Jing
========================================================

The working directory should contain the folder "UCI HAR Dataset", wich can be extracted from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The original data is from experiments carried by Samsung on human activity recognition using smartphones dataset. In the experiments, 30 volunteers are required to perform 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. Each observation has a vector of features calculated from the time and frequency domain. For a more detailed description of the original data, see the README file in the folder "UCI HAR Dataset".

The script merges the training and the test sets to create one data set. Only the measurements on the mean and standard deviation for each measurement are extracted. The original numerical activity names and variables of the dataset are replaced with more descriptive names. The output of the script is a tidy data set that only contains the average of each variable for each activity and each subject.