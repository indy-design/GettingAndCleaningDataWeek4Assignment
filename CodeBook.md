
5/7/2020  Author:  indy-design

## Required Libraries 

dplyr,data.table

## Code Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Purpose of Code
1.Merges the training and the test sets to create one data set.

2.Extracts only the measurements on the mean and standard deviation for each measurement.

3.Uses descriptive activity names to name the activities in the data set

4.Appropriately labels the data set with descriptive variable names.

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How This Code Works
1.Merges the training and the test sets to create one data set.
  
  ・Set Directory
  
  ・Download & Read related files
  
  ・Merge of related data

2.Extracts only the measurements on the mean and standard deviation for each measurement.
　・Extract character which shows the mean and standard deviation
  
  ・Use the logical vector to make a data

3.Uses descriptive activity names to name the activities in the data set
　　
  ・Merge related data with appropriate name
  
4.Appropriately labels the data set with descriptive variable names.
 
  ・This was done by the previous phase
  
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

　・Use the previous data to make the final tidy data set
 
## Dataset includes:

'README.txt'

'features_info.txt': Shows information about the variables used on the feature vector.

'features.txt': List of all features.

'activity_labels.txt': Links the class labels with their activity name.

'train/X_train.txt': Training set.

'train/y_train.txt': Training labels.

'test/X_test.txt': Test set.

'test/y_test.txt': Test labels. The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

More information is available at this site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
