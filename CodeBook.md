CodeBook
========

The code book gives a description of the variables, the data and the transformations that have been performed on the data. The result of the transformation steps is the clean data set.

Original data source
====================

Location of the data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Location of the description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data set information
====================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Data transformation setps
=========================

1. For both the train data set and test data set:
  1. The the x values, the y values and the subject values.
  2. Take the subset of the x values, which only contains the columns which respresents the mean or standard deviation values.
  3. For the y values, replace the activity ids with the corresponding descriptive activity name.
  4. Set the column names of the subject and activity data tables
  5. Combine the subject, measurements and activity data frames
2. Combine the processed train data set and test data set
3. Create the tidy data set:
  1. Melt the data set by specifying the ```Subject``` and ```Activity``` columns as the ID columns.
  2. Recast the melted data set with ```Subject``` and ```Activity``` as the only ID columns and mean as the aggregate function.
  3. Write the tidy data set to a text file, called ```tidy.txt```.

Variable description
====================

The variables from the resulting tidy data set were derived from the original data source. Part of the description of these variables was taken from the original data description.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

This resulting tidy data set contains the following columns. The feature value columns (3 to 81) contain the average of the value for each activity and each subject.

1. Activity (Factor with the description of the activity)
2. Subject (int)
3. tBodyAcc-mean()-X (numeric)
4. tBodyAcc-mean()-Y (numeric)
5. tBodyAcc-mean()-Z (numeric)
6. tBodyAcc-std()-X (numeric)
7. tBodyAcc-std()-Y (numeric)
8. tBodyAcc-std()-Z (numeric)
9. tGravityAcc-mean()-X (numeric)
10. tGravityAcc-mean()-Y (numeric)
11. tGravityAcc-mean()-Z (numeric)
12. tGravityAcc-std()-X (numeric)
13. tGravityAcc-std()-Y (numeric)
14. tGravityAcc-std()-Z (numeric)
15. tBodyAccJerk-mean()-X (numeric)
16. tBodyAccJerk-mean()-Y (numeric)
17. tBodyAccJerk-mean()-Z (numeric)
18. tBodyAccJerk-std()-X (numeric)
19. tBodyAccJerk-std()-Y (numeric)
20. tBodyAccJerk-std()-Z (numeric)
21. tBodyGyro-mean()-X (numeric)
22. tBodyGyro-mean()-Y (numeric)
23. tBodyGyro-mean()-Z (numeric)
24. tBodyGyro-std()-X (numeric) 
25. tBodyGyro-std()-Y (numeric)
26. tBodyGyro-std()-Z (numeric)
27. tBodyGyroJerk-mean()-X (numeric)
28. tBodyGyroJerk-mean()-Y (numeric)
29. tBodyGyroJerk-mean()-Z (numeric)
30. tBodyGyroJerk-std()-X (numeric)
31. tBodyGyroJerk-std()-Y (numeric)
32. tBodyGyroJerk-std()-Z (numeric)
33. tBodyAccMag-mean() (numeric)
34. tBodyAccMag-std() (numeric)
35. tGravityAccMag-mean() (numeric)
36. tGravityAccMag-std() (numeric)
37. tBodyAccJerkMag-mean() (numeric)
38. tBodyAccJerkMag-std() (numeric)
39. tBodyGyroMag-mean() (numeric)
40. tBodyGyroMag-std() (numeric)
41. tBodyGyroJerkMag-mean() (numeric)
42. tBodyGyroJerkMag-std() (numeric)
43. fBodyAcc-mean()-X (numeric)
44. fBodyAcc-mean()-Y (numeric)
45. fBodyAcc-mean()-Z (numeric)
46. fBodyAcc-std()-X (numeric)
47. fBodyAcc-std()-Y (numeric)
48. fBodyAcc-std()-Z (numeric)
49. fBodyAcc-meanFreq()-X (numeric)
50. fBodyAcc-meanFreq()-Y (numeric)
51. fBodyAcc-meanFreq()-Z (numeric)
52. fBodyAccJerk-mean()-X (numeric)
53. fBodyAccJerk-mean()-Y (numeric)
54. fBodyAccJerk-mean()-Z (numeric)
55. fBodyAccJerk-std()-X (numeric)
56. fBodyAccJerk-std()-Y (numeric)
57. fBodyAccJerk-std()-Z (numeric)
58. fBodyAccJerk-meanFreq()-X (numeric)
59. fBodyAccJerk-meanFreq()-Y (numeric)
60. fBodyAccJerk-meanFreq()-Z (numeric)
61. fBodyGyro-mean()-X (numeric)
62. fBodyGyro-mean()-Y (numeric)
63. fBodyGyro-mean()-Z (numeric)
64. fBodyGyro-std()-X (numeric)
65. fBodyGyro-std()-Y (numeric)
66. fBodyGyro-std()-Z (numeric)
67. fBodyGyro-meanFreq()-X (numeric)
68. fBodyGyro-meanFreq()-Y (numeric)
69. fBodyGyro-meanFreq()-Z (numeric)
70. fBodyAccMag-mean() (numeric)
71. fBodyAccMag-std() (numeric)
72. fBodyAccMag-meanFreq() (numeric)
73. fBodyBodyAccJerkMag-mean() (numeric)
74. fBodyBodyAccJerkMag-std() (numeric)
75. fBodyBodyAccJerkMag-meanFreq() (numeric)
76. fBodyBodyGyroMag-mean() (numeric)
77. fBodyBodyGyroMag-std() (numeric)
78. fBodyBodyGyroMag-meanFreq() (numeric)
79. fBodyBodyGyroJerkMag-mean() (numeric)
80. fBodyBodyGyroJerkMag-std() (numeric)
81. fBodyBodyGyroJerkMag-meanFreq() (numeric)
