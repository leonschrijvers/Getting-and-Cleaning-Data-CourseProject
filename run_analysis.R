# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(reshape2)

# Load activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

# Load features
features <- read.table("./UCI HAR Dataset/features.txt")[,2]

# We only want to address the measurements on the mean and standard deviation for each measurement. 
wanted_features <- grepl("mean|std", features)

# Load train data
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# Set the column names of the data table 
names(x_train) <- features

# Select the wanted features from the data table
x_train <- x_train[,wanted_features]

# Replace the activity ids with the corresponding descriptive activity name
y_train[,1] <- activityLabels[y_train[,1]]

# Set the column names of the subject and activity data tables
names(y_train) <- "Activity"
names(subject_train) = "Subject"

# Combine the subject, measurements and activity data frames
train_data <- cbind(x_train, subject_train, y_train)

# Load test data
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# Set the column names of the data table 
names(x_test) <- features

# Select the wanted features from the data table
x_test <- x_test[,wanted_features]

# Replace the activity ids with the corresponding descriptive activity name
y_test[,1] <- activityLabels[y_test[,1]]

# Set the column names of the subject and activity data tables
names(y_test) <- "Activity"
names(subject_test) = "Subject"

# Combine the subject, measurements and activity data frames
test_data <- cbind(x_test, subject_test, y_test)

# Combine the train data frame and test data frame
total_data <- rbind(train_data, test_data)

# Create the second, independent tidy data set with the average of each variable for each activity and each subject. 

# Melt the data frame
id_columns = c("Subject", "Activity")
measure_columns = setdiff(colnames(total_data), id_columns)
melted_data <- melt(total_data, id=id_columns, measure.vars=measure_columns)

# Recast the melted data 
tidy_data <- dcast(melted_data, Activity + Subject ~ variable, mean) 

# Write the tidy data frame to a text file
write.table(tidy_data, file = "tidy.txt", row.name = FALSE)