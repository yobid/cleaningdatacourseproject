ReadMe - Getting and Cleaning Data Course Project

We used data from the source :
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
to create a tidy dataset where you can find for the means and standard deviation
of the accelerometer of Samsung Galaxy S smartphone, the means of these values
for both of the activities and subjects.

To explain the scripts we will use the steps numbered in the comments of the
script : run_analysis.R

The packages dplyr was used, you can install it if needed by the command
install.packages("dplyr"), the "library" call is in the script if you already
have installed this package.

Step 1 : Merges the training and the test sets to create one data set.

1.1 You can use this code if you don't already have the data in your working directory.
1.2 Create a test table by reading the labels, subject, and values tables, and
then binding them together
1.3 Do exactly the same for the training table.
1.4 Merging the two datasets by rows, firstly test then training on the table
mergedData.

Step 2 : Extracts only the measurements on the mean and standard deviation for
each measurement.

2.1  I chose to put the names of the features now, so we can easily identify
the means and standard deviation (std).
2.2 Extract from mergedData, the columns for the measurements of mean and
std to msData.

Step 3 : Uses descriptive activity names to name the activities in the data set

3.1 Read the file activity_labels to get the activity labels.
3.2 Create a column activity to assign the labels to the values of labels. The
table is named nData.

Step 4 : Appropriately labels the data set with descriptive variable names.

4.1 Delete the column labels as we don't need it anymore (as we have the
activity column), and clean the column names by removing the parenthesis and
putting it to lower case. The table is cleanData.

Step 5 : From the data set in step 4, creates a second, independent tidy data
 set with the average of each variable for each activity and each subject.

5.1 Group the data by activity and subjects and find the means
5.2 Create the output file