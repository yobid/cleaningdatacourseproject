#Script for tidying data
#step1:
#1.1 Download and extract the files
#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")
#unzip("dataset.zip")

#1.2 Creating the test table
filePath <- "UCI HAR Dataset/test/y_test.txt"
temp1 <- read.table(filePath)
names(temp1) <- "labels"
filePath <- "UCI HAR Dataset/test/subject_test.txt"
temp2 <- read.table(filePath)
names(temp2) <- "subject"
filePath <- "UCI HAR Dataset/test/X_test.txt"
temp3 <- read.table(filePath)

test <- cbind(temp1, temp2, temp3) 

#1.3 same for train
filePath <- "UCI HAR Dataset/train/y_train.txt"
temp1 <- read.table(filePath)
names(temp1) <- "labels"
filePath <- "UCI HAR Dataset/train/subject_train.txt"
temp2 <- read.table(filePath)
names(temp2) <- "subject"
filePath <- "UCI HAR Dataset/train/X_train.txt"
temp3 <- read.table(filePath)
train <- cbind(temp1, temp2, temp3) 

#1.4 merge to create one data set
library(dplyr)
interNames <- intersect(names(test), names(train))
mergedData <- merge(test, train, by = interNames, all = TRUE)

#step2:
#2.1 put the names from features.txt
filePath <- "UCI HAR Dataset/features.txt"
temp <- read.table(filePath)
names <- as.character(temp[,2])
completeNames <- c("labels", "subject", names)
names(mergedData) <- completeNames

#2.2 extract the means and stds 
temp <- grepl("labels|subject|mean|std", completeNames, ignore.case = TRUE)
msData <- mergedData[,temp]

#step3:
#3.1 get the acitivity names
filePath <- "UCI HAR Dataset/activity_labels.txt"
temp <- read.table(filePath)
nam <- tolower(temp[,2])

#3.2 use descriptive activity names
actfactor <- factor(msData$labels, labels = nam)
nData <- cbind(actfactor, msData)
nData <- rename(nData, activity = actfactor)

#step 4 :
#4.1 remove labels column and clean the names
cleanData <- select(nData, -labels)
names(cleanData) <- tolower(gsub("\\()", "", names(cleanData)))

#step 5:
#5.1 group the data by activity and subjects and find the means
means <- cleanData %>% group_by(activity, subject) %>% summarize_all(.funs = "mean")

#5.2 create the output file
write.table(means, "tidyData.txt", row.names = FALSE)