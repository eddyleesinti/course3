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


## Data Variables
* tbodyacc-mean-x
* tbodyacc-mean-y
* tbodyacc-mean-z
* tbodyacc-std-x
* tbodyacc-std-y
* tbodyacc-std-z
* tgravityacc-mean-x
* tgravityacc-mean-y
* tgravityacc-mean-z
* tgravityacc-std-x
* tgravityacc-std-y
* tgravityacc-std-z
* tbodyaccjerk-mean-x
* tbodyaccjerk-mean-y
* tbodyaccjerk-mean-z
* tbodyaccjerk-std-x
* tbodyaccjerk-std-y
* tbodyaccjerk-std-z
* tbodygyro-mean-x
* tbodygyro-mean-y
* tbodygyro-mean-z
* tbodygyro-std-x
* tbodygyro-std-y
* tbodygyro-std-z
* tbodygyrojerk-mean-x
* tbodygyrojerk-mean-y
* tbodygyrojerk-mean-z
* tbodygyrojerk-std-x
* tbodygyrojerk-std-y
* tbodygyrojerk-std-z
* tbodyaccmag-mean
* tbodyaccmag-std
* tgravityaccmag-mean
* tgravityaccmag-std
* tbodyaccjerkmag-mean
* tbodyaccjerkmag-std
* tbodygyromag-mean
* tbodygyromag-std
* tbodygyrojerkmag-mean
* tbodygyrojerkmag-std
* fbodyacc-mean-x
* fbodyacc-mean-y
* fbodyacc-mean-z
* fbodyacc-std-x
* fbodyacc-std-y
* fbodyacc-std-z
* fbodyaccjerk-mean-x
* fbodyaccjerk-mean-y
* fbodyaccjerk-mean-z
* fbodyaccjerk-std-x
* fbodyaccjerk-std-y
* fbodyaccjerk-std-z
* fbodygyro-mean-x
* fbodygyro-mean-y
* fbodygyro-mean-z
* fbodygyro-std-x
* fbodygyro-std-y
* fbodygyro-std-z
* fbodyaccmag-mean
* fbodyaccmag-std
* fbodybodyaccjerkmag-mean
* fbodybodyaccjerkmag-std
* fbodybodygyromag-mean
* fbodybodygyromag-std
* fbodybodygyrojerkmag-mean
* fbodybodygyrojerkmag-std

