library(plyr)
library(reshape2)

X_test<-read.table(file="./UCI HAR Dataset/test/X_test.txt") ## the test data
X_train<-read.table(file="./UCI HAR Dataset/train/X_train.txt") ## the training data
y_test<-read.table(file="./UCI HAR Dataset/test/y_test.txt") ## the activities of the test data
y_train<-read.table(file="./UCI HAR Dataset/train/y_train.txt") ## the activities of the training data
subject_test<-read.table(file="./UCI HAR Dataset/test/subject_test.txt") ## the subjects of the test data
subject_train<-read.table(file="./UCI HAR Dataset/train/subject_train.txt") ## the subjects of the training data

labels<-read.table(file="./UCI HAR Dataset/activity_labels.txt") ## the descriptive names of the activities
features<-read.table(file="./UCI HAR Dataset/features.txt") ## the descriptive names of the variables

test.raw<-cbind(subject_test,y_test,X_test) ## add the subjects and activities to the test data
train.raw<-cbind(subject_train,y_train,X_train) ## add the subjects and activities to the training data

raw<-rbind(test.raw,train.raw)   ## merge the training and the test sets to create one data set

extract<-grepl("std",features[,2])|grepl("mean",features[,2])&(!grepl("meanFreq",features[,2])) ## return a logical vector to indicate which variable is on the mean and standard deviation for each measurement.
extract.add<-c(TRUE,TRUE,extract) ## add two TRUEs to the front of the logical vector to indicate that we want to keep the columns for Subject and Activity.
raw.extract<-raw[,extract.add] ## extract the wanted columns

colnames(raw.extract)[1]<-"Subject"
colnames(raw.extract)[2]<-"Activity" 
N<-dim(raw.extract)[2]
colnames(raw.extract)[3:N]<-as.character(features[extract,2]) ##Appropriately labels the data set with descriptive variable names. 

for(i in 1:dim(raw.extract)[1]){
  if(raw.extract[i,2]==1){raw.extract[i,2]<-as.character(labels[1,2])}
  else if(raw.extract[i,2]==2){raw.extract[i,2]<-as.character(labels[2,2])}
  else if(raw.extract[i,2]==3){raw.extract[i,2]<-as.character(labels[3,2])}
  else if(raw.extract[i,2]==4){raw.extract[i,2]<-as.character(labels[4,2])}
  else if(raw.extract[i,2]==5){raw.extract[i,2]<-as.character(labels[5,2])}
  else {raw.extract[i,2]<-as.character(labels[6,2])}
} ## Uses descriptive activity names to name the activities in the data set

tidydata<-aggregate(data=raw.extract,.~Subject+Activity,FUN=mean) ## Create a tidy data set with the average of each variable for each activity and each subject. 

write.table(tidydata,file="TaisongJing_rprog-004_Project_TidyDataSet.txt") ## output
