Getting and Cleaning Data Course Project
========================================

The purpose of the course project is to create a R script called ```run_analysis.R``` that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Dependencies
============

The ```run_analysis.R``` script depends on the the package ```reshape2```. If you don't have it installed, you first have to install it by using the command ```install_packages("reshape2")```

How to run the script of this course project
============================================

1. Download the data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it in a folder on your local hard drive. You now should have a folder called ```UCI HAR Dataset```.
2. Put the ```run_analysis.R script``` in the parent folder of ```UCI HAR Dataset```.
3. In R/RStudio, set your working directory to the parent folder of ```UCI HAR Dataset```, by using the s```etwd()``` command.
4. In R/RStudio, run the command ```source("run_analysis.R")```. This will write the resulting tidy dataset into ```tidy.txt``` in your working directory.

