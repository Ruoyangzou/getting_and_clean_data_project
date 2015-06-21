## Project Description:
This goal of this project is to combine both training and testing dataset, extract mean and standard deviation data for measurements on all activities for all subjects.

## Study Design and Data processing
### Collection of raw data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Creating the tidy data
###Cleaning of the data
Combine training and testing dataset, change column names and row value to be more descirptive titles, remove unnecessary columns with only mean and standard deviation data.
 
##Description of the variables in the run_analysis.R file
run_analysis.R will process and produce vairiables that are necessary for analysis. the description are shown below.
 
###x_all:
data set for both training and testing data.
 - data.frame.
 - 561 feature vectors on 30 subjects
 - 10299*561

###y_all
labels for both training and testing data.
 - data.frame
 - labeling type of activity for each row in x_all
 - 10299*1

###subject_all 
 subject index for both training and testing data
 - data.frame
 - labeling monitoring target for each row in x_all
 - 10299*1

###dataset
a dataset with descriptive labeling and column names for all measurements and activities
 - data.frame
 - 10299*563

###mean\_and\_std
independent tidy data set with the average of each variable for each activity and each subject.
 - data.frame