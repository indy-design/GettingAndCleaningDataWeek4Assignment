# load libraries
library(data.table)
library(dplyr)
#1 Merges the training and the test sets to create one data set.
#set directory
if(!file.exists("data")){
  dir.create("data")
}

#download data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip")
unzip(zipfile =  "./data/Dataset.zip",exdir ="./data" )
file_path = file.path("./data","UCI HAR Dataset")
files = list.files(file_path,recursive = TRUE)

#read data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt",header =FALSE )
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt",header =FALSE)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt",header =FALSE)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt",header =FALSE)
s_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",header =FALSE)
s_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header =FALSE)
features <- read.table("./data/UCI HAR Dataset/features.txt",header =FALSE)
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",header =FALSE) 

#4 Appropriately labels the data set with descriptive variable names.
colnames(x_train) <- features[,2]
colnames(x_test) <- features[,2]colnames(ytrain) = "activityId"
colnames(s_train) <- "subjectId"
colnames(s_test) <- "subjectId"
colnames(y_test) <- "activityId"
colnames(y_train) <- "activityId"
colnames(activityLabels) <- c('activityId','activityType')

#merge of training and test sets
train <- cbind(y_train,s_train,x_train)
test <- cbind(y_test,s_test,x_test)
monedate <- rbind(train,test)

#2Extracts only the measurements on the mean and standard deviation for each measurement.

colNames <- colnames(monedate)

mands <- grepl(".*mean\\(\\)|std\\(\\)",colNames)
MeanAndStd <- cbind(monedate[,1:2],monedate[,mands == TRUE])

#3 Uses descriptive activity names to name the activities in the data set
adata <- merge(activityLabels,MeanAndStd, by ='activityId',all.x = TRUE)

#5
dt_mean <- adata %>% group_by(subjectId,activityId) %>% summarize_all(mean)
write.table(dt_mean,"dataset.txt",row.names = FALSE,col.names = TRUE)
