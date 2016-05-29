# CookBook

## Output Data Set 1: tidy.data

Analysis Performed:
* Check for existence of data directory and if not exists, create the directory
and redownload and extract out the data file

* Construct the file path for both train and test data files
* Data files within Inertial Signals subdirectory are not in used for this assignment
* Load data and merge into their respective data sets from train and test files
* Read in the features metadata and Select only those mean() and std() features from x dataset
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Remove () and change all to lower case for feature names in dataset x
* Provide descriptive variable names for y and subject data sets
* Tidy data set merging all data sets


## Output Data Set 2: tidy.data.mean

* Using tidy.data data set, average of each variable for each activity and each subject is computed and saved into tidy.data.mean data set. 
* Aggregate function is used to perform the average calculation
* Variable activity_group and subject_group are created as the grouping variable 

