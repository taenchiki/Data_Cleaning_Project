Data_Cleaning_Project
=====================

Course project - Getting and Cleaning Data

The data analysis was performed using the following steps:

A.	Prepare the activity labels data frame and use descriptive names 
a.	Read the activity_labels.txt into a data frame
b.	Change the columns names to a more descriptive names (i.e. activityID, activity_label)
B.	Prepare the test data and use descriptive names.  
a.	Read and create data frames for the following files: subject_test.txt, X_test.txt, and y_test.txt.
b.	Make some column names more descriptive (i.e. subjectID, activityID).
c.	Merge Y_test and activity labels by activityID
d.	Concanate subject_test, test_activities and X_test to make a single data set
C. Prepare the training data and use descriptive names.
a.	Read and create data frames for the following files: subject_test.txt, X_test.txt, and y_test.txt.
b.	Make some column names more descriptive (i.e. subjectID, activityID).
c.	Merge Y_test and activity labels by activityID
d.	Concanate subject_train, train_activities and X_train to make a single data set
(The above steps satisfy the Project Task 3.)

D. Project Task 1 Merge the above two test data sets.
a.	Merge the test and training data sets using the common key variables “subject” and “label”.
b.	Write the oneDataSet to a tidyDataSet.txt file - do not include the data frame index numbers.

E. Project Task 2 - Extracts the measurements on the mean and standard deviation. 
a.	create a data frame with a subset of the first nine columns of the oneDataSet (see above step D).

F. Project Task 4 - use appropriate variable names for the extracted data set. 
a. Rename the 6 columns that correspond to the means and standard deviations.

G. Project Task 5 - create a second tidy data set with the averages of each subject.
a. Create a subset with the subjectID, activity_label and the three mean variables.
a.	b. Export this data frame to tidyData2.txt.  Do not include the data frame index numbers.


