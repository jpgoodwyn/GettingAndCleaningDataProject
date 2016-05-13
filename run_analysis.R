# For Coursera Getting and Cleaning Data, May 2016

# Assumptions:
# 1) UCI HAR Dataset folder has been downloaded and unzipped
# 2) Directory has been set for access to the unzipped folder

run_analysis <- function() {

# Load, combine, and rename the participant testing and training data
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt')
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt')
subject_combined <- rbind(subject_train, subject_test)
names(subject_combined) <- "SubjectID"

# Load and combine the raw testing and training data
data_train <- read.table('./UCI HAR Dataset/train/X_train.txt')
data_test <- read.table('./UCI HAR Dataset/test/X_test.txt')
data_combined <- rbind(data_train, data_test)

# Load, combine, and rename the testing and training labels
labels_train <- read.table('./UCI HAR Dataset/train/y_train.txt')
labels_test <- read.table('./UCI HAR Dataset/test/y_test.txt')
labels_combined <- rbind(labels_train, labels_test)
names(labels_combined) <- "ActivityID"

# Load the features data, rename the cols
features <- read.table('./UCI HAR Dataset/features.txt',
                       col.names = c("FeatureID", "FeatureLabel"))
# Extract only measurements on mean and SD for each measurement from features
meanAndSd <- grep('-mean\\(\\)|-std\\(\\)', features$FeatureLabel)
# Subset the raw data by the mean and SD cols
data_combined <- data_combined[,meanAndSd]
# Clean up the names of the mean and SD cols
names(data_combined) <- gsub("\\(\\)", "", features$FeatureLabel[meanAndSd])

# Load the activities data and rename the cols
activities <- read.table('./UCI HAR Dataset/activity_labels.txt',
                         col.names = c("ActivityID", "ActivityLabel"))
# Merge the activities with their labels
activity <- merge(activities, labels_combined, by="ActivityID")

# Combine the three finalized data sets and write it as a table
tidy_data <- cbind(subject_combined, data_combined, activity)
write.table(tidy_data, "tidy.txt")

# Output new data set w/ avg of each variable for each activity and participant
library(data.table)
tidy <- data.table(tidy_data)
means <- tidy[,lapply(.SD, mean), by=c("SubjectID", "ActivityLabel")]
write.table(means, "tidy_data_means.txt", row.name = FALSE)
}