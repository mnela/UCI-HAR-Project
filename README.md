# TIDY DATA SET 
### based on 
## Human Activity Recognition Using Smartphones Dataset  Version 1.0

This project includes the following files:
- README.md
- CodeBook.md
- run_analysis.R


The script **run_analysis.R** takes data from the Human Activity Recognition Using Smartphones Data Set found here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was downloaded from the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
on May 18 2014.

Please see the CodeBook for more information about the data included in this dataset including a list of the activities and features.

The script does the following:

1. Reads in data from the **test** and **train** directories and the **features.txt** and **activity_labels.txt** files, all found in the UCI HAR Dataset directory which should be in your working directory.
2. Merges the training and the test sets (**X_train.txt** and **X_test.txt**) to create one data set. Merges the the test labels **y_train.txt** and **y_test.txt**, and merges the the subject files, **subject_train.txt** and **subject_test.txt** files.
3. After labeling the data set with by naming the X dataset with the appropriate labels from the features file, extracts only the measurements on the mean and standard deviation for each measurement.
4. Adds the subject IDs from the subject files and the information about what activity was being done (coded 1-6) while the data was collected from the y files.
5. Merges (based on the activity code) the X dataset with the information from the activity_labels file to give names to the activities in the dataset. This dataset has named columns which describes what data is found in each column. 
5. Through the use of the **reshape2** package, creates a second, independent tidy data set (named **tidydata**) with the average of each variable for each activity and each subject.

