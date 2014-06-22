## Codebook:

The following files are included:

=========================================
1. run_analysis.R script which shows the R code used to read, manipulate and analyze the   data from the original text files.
2. CodeBook.md which lists/describes the variable and file names
3. tidyDataSet.txt which contains all data for each subject, each activity and each variable.
4. tidyDataSet2.txt which contains the averages for each variable, for each activity and for each subject. 

Tidy data sets notes: 
* a. Each variable measured is in one column
* b. Each different observation of that variable should be in a different row.
* c. The analyzed variable names are descriptive.


###Variables description:
===============

Activity labels:
* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING


subjectID range is from 1 to 30 and each row of the tidy data sets, identifies the subject who performed the activity.


###Data description:
============
* - Each row contains the test and training data
* - Each row lists the subjects, the activityID, activity label, tBodyAcc-mean()-X, tBodyAcc-mean()-Y, and tBodyAcc-mean()-Z.


subjectID range is from 1 to 30 and each row of the tidy data sets, identifies the subject who performed the activity.

