features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityId", "activityName"))

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityId")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityId")

X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
mergedData <- cbind(Subject, Y, X)

mean_std_columns <- grepl("mean\\(\\)|std\\(\\)", features[,2])
selectedData <- mergedData[, c(TRUE, TRUE, mean_std_columns)] 

selectedData <- merge(selectedData, activities, by.x = "activityId", by.y = "activityId")
selectedData$activityId <- NULL

names(selectedData) <- gsub("^t", "Time", names(selectedData))
names(selectedData) <- gsub("^f", "Frequency", names(selectedData))
names(selectedData) <- gsub("Acc", "Accelerometer", names(selectedData))
names(selectedData) <- gsub("Gyro", "Gyroscope", names(selectedData))
names(selectedData) <- gsub("Mag", "Magnitude", names(selectedData))
names(selectedData) <- gsub("BodyBody", "Body", names(selectedData))

library(dplyr)

tidyData <- selectedData %>%
  group_by(subject, activityName) %>%
  summarise_all(mean)

write.table(tidyData, "tidy_data.txt", row.name = FALSE)


