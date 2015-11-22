## Read test and training data
train <- read.table("UCI HAR Dataset/train/X_train.txt")
test <- read.table("UCI HAR Dataset/test/X_test.txt")

## Read the column names from file features.txt and add them to train and test datasets
colDesc <- read.table("UCI HAR Dataset/features.txt")
colDescVector <- colDesc[,2]
colnames(train) = colDescVector
colnames(test) = colDescVector

## Read the activity from y_train.txt and y_test.txt, and add a column for the activity to train and test
activityTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
activityTest <- read.table("UCI HAR Dataset/test/y_test.txt")
activityTrainVector <- activityTrain[,1]
activityTestVector <- activityTest[,1]


## Read the subject numbers from subject_train.txt, and add those numbers as 1st col of train
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjectTrainVector <- subjectTrain[,1]
trainData <- cbind(subjectTrainVector, activityTrainVector, train)

## Read the subject numbers from subject_train.txt, and add as first col of test
subjectTest <-read.table("UCI HAR Dataset/test/subject_test.txt")
subjectTestVector <- subjectTest[,1]
testData <- cbind(subjectTestVector, activityTestVector, test)

## Add column name for 1st column in trainData (subjects' numbers)
## and column name for 2nd column in trainData (activity ID)
colnames(trainData)[1] <- "Participant"
colnames(trainData)[2] <- "Activity"

## Add column name for 1st column in testData (subjects' number ID) 
## and column name for 2nd column in testData (activity ID)
colnames(testData)[1] <- "Participant"
colnames(testData)[2] <- "Activity"

## Combine the test and train datasets
allData <- rbind(trainData, testData)

library(dplyr)
## Get all column names that contain "mean" or "std"
meanNames <- grep("mean()", names(allData), value=TRUE)
stdNames <- grep("std()", names(allData), value=TRUE)
keepNames <- c("Participant", "Activity", meanNames, stdNames)

## Keep only the columns with names in keepNames
newData <- subset(allData, select=keepNames)

## Create a new dataframe which initially only includes activity and participant columns
## with one row corresponding to each (participant, activity) pair. 
partic <- c(rep(1, 30), rep(2, 30), rep(3, 30), rep(4, 30), rep(5, 30), rep(6, 30))
activ <- rep(1:30, 6)
tidyData <- data.frame("Participant"=partic, "Activity"=activ)

## Create data frame with means of each variable for each participant and activity
tidyData <- newData %>% group_by(Participant, Activity) %>% summarise_each(funs(mean))
tidyData <- as.data.frame(tidyData)

## Change the activity numbers to activity names
for(i in 1:nrow(tidyData)) {
     val <- tidyData[i,2]
     if(val == 1) tidyData[i,2] <- "Walking"
     else if(val == 2) tidyData[i,2] <- "Walking Upstairs"
     else if(val == 3) tidyData[i,2] <- "Walking Downstairs"
     else if(val == 4) tidyData[i,2] <- "Sitting"
     else if(val == 5) tidyData[i,2] <- "Standing"
     else if(val == 6) tidyData[i,2] <- "Laying"
}

## Add "Mean" to the column names for column numbers 3 and higher. 
for(i in 3:ncol(tidyData)) {
     colnames(tidyData)[i] <- paste("Mean(",colnames(tidyData)[i], ")",sep="")
}

## Remove () from mean() and std() in column names, and
## replace the string "BodyBody" with "Body". 
install.packages("stringr")
library(stringr) 

cols <- colnames(tidyData)
for(i in 1:length(cols)) {
     cols[i] <- sub("\\(\\)", "", cols[i])
     
     cols[i] <- sub("BodyBody", "Body", cols[i])
}
colnames(tidyData) <- cols

print(tidyData)



