Experiment Overview
The raw data comes from experiments with 30 volunteers, each wearing a Samsung Galaxy S II at the waist. The smartphone has an embedded accelerometer and gyroscope. The accelerometer measures acceleration applied to the device, including the force of gravity, using the standard XYZ three-dimensional space coordinate system. The gyroscope measures the rate of rotation around the device's X, Y and Z axes. Rotation is considered positive in the counter-clockwise position. 

Raw Data
The original data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Script Processing Overview
The run_analysis.R script reads the raw data, including the training and test data files, and:
1. Adds columns to the data for the number (1-30) that represents the human volunteer and the activity (Walking, Standing, Walking Upstairs, Walking Downstairs, Sitting, or Laying) of the participant when the measurement was taken.
2. Combines the training and test data into one file, adding meaningful variable names to the columns that describe the measurements that were taken with the accelerometer and gyroscope.
3. Cleans up the column names, removing extraneous characters, and redundant strings that were part of the original measurement descriptions. 
4. Pares down the data to only include measurements on the mean and standard deviation for each measurement. 
5. Creates a separate data set called tidyData which contains, for each (participant, activity) pair, the mean of the measurements of each type described in step 3.  The variable names have the format Mean(X), where X is the type of measurement from the original data that was averaged. 

Running the Script
The libraries dplyr and stringr are used in the run_analysis.R script. To run the script, do the following in RStudio:
1. source("run_analysis.R")

Note that the script installs and loads the necessary libraries. 
