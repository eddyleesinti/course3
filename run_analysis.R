
# Check for existence of data directory and if not exists, create the directory
# and redownload and extract out the data file
if (!file.exists("./data")) {
    dir.create("./data")
    zip.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(zip.url, "UCI HAR Dataset.zip")
    unzip(zipfile = "UCI HAR Dataset.zip", exdir = "./data")
}

extracted.loc = "./data/UCI HAR Dataset/"

# Construct the file path for both train and test data files
# Data files within Inertial Signals subdirectory are not in used for this assignment
train.locations <- c("subject_train.txt", "x_train.txt","y_train.txt")
test.locations <- c("subject_test.txt", "x_test.txt","y_test.txt")
train.locations <- paste(extracted.loc, "train", train.locations, sep="/")
test.locations <- paste(extracted.loc, "test", test.locations, sep="/")

# 1.Merges the training and the test sets to create one data set.
# Load data and merge into their respective data sets from train and test files
subject.data <- rbind(read.table(train.locations[1]),read.table(test.locations[1]) ) 
x.data <- rbind(read.table(train.locations[2]),read.table(test.locations[2]) ) 
y.data <- rbind(read.table(train.locations[3]),read.table(test.locations[3]) ) 


# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# Read in the features metadata and Select only those mean() and std() features from x dataset
features.data <- read.table(paste(extracted.loc, "features.txt", sep="/"))
features.mean.sd <- grep("-mean\\(\\)|-std\\(\\)", features.data[, 2])
x.data.mean.sd <- x.data[,features.mean.sd]

# 3.Uses descriptive activity names to name the activities in the data set
activities.data <- read.table(paste(extracted.loc, "activity_labels.txt", sep="/"))
y.data[,1] <- activities.data[y.data[,1], 2]


# 4.Appropriately labels the data set with descriptive variable names. 
# Remove () and change all to lower case for feature names in dataset x
features.mean.sd.names <- features.data[features.mean.sd, 2]
features.mean.sd.names <- gsub("\\(\\)","",features.mean.sd.names)
features.mean.sd.names <- tolower(features.mean.sd.names)
names(x.data.mean.sd) <- features.mean.sd.names

# Provide descriptive variable names for y and subject data sets
names(y.data) <- "activity"
names(subject.data) <- "subject"

# Tidy data set merging all data sets
tidy.data <- cbind(subject.data, x.data.mean.sd, y.data)


# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy.data.mean <- aggregate(x=tidy.data, by=list("activity-group"=tidy.data$activity, "subject-group"=tidy.data$subject), FUN=mean)
tidy.data.mean <- tidy.data.mean[, !(colnames(tidy.data.mean) %in% c("activity","subject"))]

# Persist the tidy data sets to file
# First tidy data set is tidy.data
# Second tidy data set is tidy.data.mean
write.table(tidy.data, "tidy.data.txt")
write.table(tidy.data.mean, "tidy.data.mean.txt")

