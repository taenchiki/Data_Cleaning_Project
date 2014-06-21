###### The below code follows the plan that I listed below ############################
# A. Prepare the activity labels data fram and use descriptive names (Project Task 3).# 
# B. Prepare the test data and use descriptive names (Project Task 3).                #
# C. Prepare the training data and use descriptive names (Project Task 3).            #
# D- Project Task 1 Merge the two test data sets.                                     #
# E. Project Task 2 - Extracts the measurements on the mean and standard deviation.   #
# F. Project Task 4 - use appropriate variable names for the extracted data set.      #
# G. Project Task 5 - create a second tidy data set with the averages of each subject.#
#    and corresponding activity.                                                      #
#######################################################################################



################ A. Prepare the activity labels data fram and use descriptive names (Project Task 3)  ###########################
activity <- read.table(
        file="./CleaningData/projectDataset/activity_labels.txt")
library(reshape)
# Change the V1 default column name to "activityID"
activity <- rename(activity,c("V1"="activityID"))
# Change the V1 default column name to "subjectID"
activity <- rename(activity,c("V2"="activity_label"))


################ B. Prepare the test data and use descriptive names (Project Task 3) ###########

subject_test <- read.table(
        file="./CleaningData/projectDataset/test/subject_test.txt")

X_test <- read.table(
        file="./CleaningData/projectDataset/test/X_test.txt")

Y_test <- read.table(
        file="./CleaningData/projectDataset/test/y_test.txt")
#rename some columns 
library(reshape)
# Change the V1 default column name to "subjectID"
subject_test <- rename(subject_test,c("V1"="subjectID"))
# Change the V1 default column name to "activityID"
Y_test <- rename(Y_test,c("V1"="activityID"))
# Change the V1, V2, .. V561 default column names to "set1, set2, ..., set561"
        #names(X_test)[1:561] <- paste("set", 1:561, sep="")

# Merge Y_test and activity labels by activityID 
test_activities<- merge(Y_test, activity, by = "activityID")
# Concanate subject_test, test_activities and X_test 
testData<- cbind(subject_test, test_activities, X_test)

################ C. Prepare the training data and use descriptive names (Project Task 3) ##########
subject_train <- read.table(
        file="./CleaningData/projectDataset/train/subject_train.txt")

X_train <- read.table(
        file="./CleaningData/projectDataset/train/X_train.txt")

Y_train <- read.table(
        file="./CleaningData/projectDataset/train/y_train.txt")
#rename some columns 
# Change the V1 default column name to "subject"
subject_train <- rename(subject_train,c("V1"="subjectID"))

# Change the V1 default column name to "activityID"
Y_train <- rename(Y_train,c("V1"="activityID"))
# Merge Y_train and activity labels by activityID 
train_activities<- merge(Y_train, activity, by = "activityID")
# Change the V1, V2, .. V561 default column names to "set1, set2, ..., set561"
        #names(X_train)[1:561] <- paste("set", 1:561, sep="")
# Concanate subject_train, Y_train and X_train 
trainData<- cbind(subject_train, train_activities, X_train)


########### D- Project Task 1 Merge the two test data sets ######################

# Merge the test and training data sets using the common key variables “subject” and “label”.
oneDataSet <- rbind(trainData, testData)

# Write the oneDataSet to a csv file - do not include the data frame index numbers.
write.table(oneDataSet, file = "./CleaningData/projectDataset/tidyDataSet.txt", row.names = FALSE)


########## E. Project Task 2 - Extracts the measurements on the mean and standard deviation ########
extractedData <- oneDataSet[,c(1:9)]


########## F. Project Task 4 - use appropriate variable names for the extracted data set ########
extractedData <- rename(extractedData, c("V1"="tBodyAcc-mean()-X", "V2"="tBodyAcc-mean()-Y",
                                         "V3"="tBodyAcc-mean()-Z", "V4"="tBodyAcc-std()-X",
                                         "V5"="tBodyAcc-std()-Y", "V6"= "tBodyAcc-std()-Z"))


# G. Project Task 5 - create a second tidy data set with the averages of each subject and corresponding activity ###
extractedData2 <- extractedData[,c(1,3:5)]
write.table(extractedData2, file = "./CleaningData/projectDataset/tidyDataSet2.txt", row.names = FALSE)