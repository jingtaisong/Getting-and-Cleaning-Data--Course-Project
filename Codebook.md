Codebook for Course Project of "Getting and Cleaning Data""
========================================================
Taisong Jing
========================================================
Observations are named in Subject and Activity:

Subject: the subject of the experiment; range from 1 to 30.

Activity: the activity of the experiment; one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Variables are named as follows:

tBodyAcc-mean()-X           
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z           
tBodyAcc-std()-X           
tBodyAcc-std()-Y            
tBodyAcc-std()-Z           
tGravityAcc-mean()-X        
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z        
tGravityAcc-std()-X        
tGravityAcc-std()-Y         
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X       
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z       
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y        
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X          
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z          
tBodyGyro-std()-X          
tBodyGyro-std()-Y           
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X      
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z      
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y       
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()          
tBodyAccMag-std()          
tGravityAccMag-mean()       
tGravityAccMag-std()       
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()         
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()     
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z           
fBodyAcc-std()-X           
fBodyAcc-std()-Y            
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X       
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z       
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y        
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X          
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z          
fBodyGyro-std()-X          
fBodyGyro-std()-Y           
fBodyGyro-std()-Z          
fBodyAccMag-mean()          
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() 

The features come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ, where 't' stands for time signals. The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean() and std() stand for the mean and standard deviation estimated from these signals.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

=============================================
For reference of the variables, see the "features_info.txt" file in the folder "UCI HAR Dataset".