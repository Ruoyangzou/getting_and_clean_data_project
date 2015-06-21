## Create the directory; get data files. 
##if(!file.exists("project")) {
##    dir.create("./project")
##}
##fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(fileUrl, "./project/FUCI_Dataset.zip", method = "curl")
##datafile <- unzip("./project/FUCI_Dataset.zip", exdir = "./project")

## 1. Merge training and testing dataset
## 1-1. get training datatable
x_train <- read.table('./project/UCI HAR Dataset/train/X_train.txt')
y_train <- read.table('./project/UCI HAR Dataset/train/Y_train.txt')
subject_train <- read.table('./project/UCI HAR Dataset/train/subject_train.txt')
## 1-2. get test datatable
x_test <- read.table('./project/UCI HAR Dataset/test/X_test.txt')
y_test <- read.table('./project/UCI HAR Dataset/test/Y_test.txt')
subject_test <- read.table('./project/UCI HAR Dataset/test/subject_test.txt')
## 1-3. get tranning/test datatable
features <- read.table('./project/UCI HAR Dataset/features.txt')
activities <- read.table('./project/UCI HAR Dataset/activity_labels.txt')
x_all <- rbind(x_train, x_test) 
colnames(x_all) <- features[, 2]
y_all <- rbind(y_train, y_test) 
colnames(y_all) <- "activities"
y_all[ , 1] <- activities[y_all[, 1], 2]
subject_all <- rbind(subject_train, subject_test)
colnames(subject_all) <- "subjects"
## 1-4. get the datatable
dataset <- cbind(subject_all,y_all,x_all)

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
mean_and_std <- dataset[ , grepl('(mean|std)\\(\\)|subjects|activities', colnames(dataset))]
