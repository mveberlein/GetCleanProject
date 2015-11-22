The experiments were carried out by 30 human volunteers who were 19-48 years old. In the data sets, a number 1-30 represents each volunteer. Each participant wore a Samsung Galaxy S II smartphone at his or her waist, and performed six different activities: walking, walking upstairs, walking downstairs, sitting, standing and laying. 

The original data consisted of two data sets, the training data set and the test data set. From these original data sets, an intermediate data set was formed; only measurements from the original data set that represented the mean or standard deviation (std) of a measurement were retained. The measurements on which the mean and standard deviation were calculated are briefly described below, since an understanding of these measurements is required to understand the measurements in the final, tidy data set.  

 The features in the original data sets came from the 3-axial time domain signals of the accelerometer and gyroscope, and were captured at a rate of 50 Hz. The smartphones' accelerometer and gyroscope were used to capture linear acceleration (tAcc-XYZ) and angular velocity (tGyro-XYZ) in the X, Y and Z directions.  Note that the 't' in the measurements' names stands for time.  Acceleration was measured in g's (where 1 g is approximately 9.8 m/sec^2, the acceleration due to gravity), and angular velocity was measured in rad/sec. 

The acceleration measurements were divided into the acceleration of the body (tBodyAcc-XYZ) and the acceleration due to gravity (tGravityAcc-XYZ). These measurements were used to calculate Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ), where Jerk is the rate of change in acceleration over time. Additionally, the magnitude of these signals was computed with the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  The AccJerk signals were measured in the unit g/sec, and the GyroJerk values are measured in the unit rad/sec^2. The calculated magnitudes were unitless. 

A Fast Fourier Transform was applied to some measurements to yield fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, and fBodyGyroMag. The prefix 'f' indicates frequency domain signals. 

For the above-mentioned measurements, the mean and standard deviation (std) were calculated. These mean and standard deviation measurements are the only values that were retained in the intermediate data set from the original data. The tidy data set contains the means of the measurements in the intermediate data set. 

The features were normalized and bounded in the interval [-1, 1]. 

Variables in the tidy data set, along with their units of measurement:
Participant					              unitless
Activity					                unitless
Mean(tBodyAcc-mean-X)			        g
Mean(tBodyAcc-mean-Y)			        g
Mean(tBodyAcc-mean-Z)			        g
Mean(tGravityAcc-mean-X)			    g
Mean(tGravityAcc-mean-Y)			    g
Mean(tGravityAcc-mean-Z)			    g
Mean(tBodyAccJerk-mean-X)		      g/sec
Mean(tBodyAccJerk-mean-Y)		      g/sec
Mean(tBodyAccJerk-mean-Z)		      g/sec
Mean(tBodyGyro-mean-X)			      rad/sec			
Mean(tBodyGyro-mean-Y)			      rad/sec
Mean(tBodyGyro-mean-Z)			      rad/sec
Mean(tBodyGyroJerk-mean-X)		    rad/sec^2
Mean(tBodyGyroJerk-mean-Y)		    rad/sec^2
Mean(tBodyGyroJerk-mean-Z)		    rad/sec^2
Mean(tBodyAccMag-mean)			      unitless
Mean(tGravityAccMag-mean)		      unitless
Mean(tBodyAccJerkMag-mean)		    unitless
Mean(tBodyGyroMag-mean)		        unitless
Mean(tBodyGyroJerkMag-mean)		    unitless
Mean(fBodyAcc-mean-X)
Mean(fBodyAcc-mean-Y)
Mean(fBodyAcc-mean-Z)
Mean(fBodyAcc-meanFreq-X)
Mean(fBodyAcc-meanFreq-Y)
Mean(fBodyAcc-meanFreq-Z)
Mean(fBodyAccJerk-mean-X)
Mean(fBodyAccJerk-mean-Y)
Mean(fBodyAccJerk-mean-Z)
Mean(fBodyAccJerk-meanFreq-X)
Mean(fBodyAccJerk-meanFreq-Y)
Mean(fBodyAccJerk-meanFreq-Z)
Mean(fBodyGyro-mean-X)
Mean(fBodyGyro-mean-Y)
Mean(fBodyGyro-mean-Z)
Mean(fBodyGyro-meanFreq-X)
Mean(fBodyGyro-meanFreq-Y)
Mean(fBodyGyro-meanFreq-Z)
Mean(fBodyAccMag-mean)
Mean(fBodyAccMag-meanFreq)
Mean(fBodyAccJerkMag-mean)
Mean(fBodyAccJerkMag-meanFreq)
Mean(fBodyGyroMag-mean)
Mean(fBodyGyroMag-meanFreq)
Mean(fBodyGyroJerkMag-mean)
Mean(fBodyGyroJerkMag-meanFreq)
Mean(tBodyAcc-std-X)			      g
Mean(tBodyAcc-std-Y)			      g
Mean(tBodyAcc-std-Z)			      g
Mean(tGravityAcc-std-X)			    g
Mean(tGravityAcc-std-Y)			    g
Mean(tGravityAcc-std-Z)			    g
Mean(tBodyAccJerk-std-X)			  g/sec
Mean(tBodyAccJerk-std-Y)			  g/sec
Mean(tBodyAccJerk-std-Z)			  g/sec
Mean(tBodyGyro-std-X)			      rad/sec
Mean(tBodyGyro-std-Y)			      rad/sec
Mean(tBodyGyro-std-Z)			      rad/sec
Mean(tBodyGyroJerk-std-X)		    rad/sec^2
Mean(tBodyGyroJerk-std-Y)		    rad/sec^2
Mean(tBodyGyroJerk-std-Z)			  rad/sec^2
Mean(tBodyAccMag-std)			      unitless
Mean(tGravityAccMag-std)			  unitless
Mean(tBodyAccJerkMag-std)		    unitless
Mean(tBodyGyroMag-std)			    unitless
Mean(tBodyGyroJerkMag-std)		  unitless
Mean(fBodyAcc-std-X)
Mean(fBodyAcc-std-Y)
Mean(fBodyAcc-std-Z)
Mean(fBodyAccJerk-std-X)
Mean(fBodyAccJerk-std-Y)
Mean(fBodyAccJerk-std-Z)
Mean(fBodyGyro-std-X)
Mean(fBodyGyro-std-Y)
Mean(fBodyGyro-std-Z)
Mean(fBodyAccMag-std)
Mean(fBodyAccJerkMag-std)
Mean(fBodyGyroMag-std)
Mean(fBodyGyroJerkMag-std)


