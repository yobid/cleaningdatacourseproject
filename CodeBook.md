Code Book - Getting and Cleaning Data Course Project


activity
    activity done in the study

subject
    id number of the subject in the study

The next features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz.
These signals were used to estimate variables of the feature vector for each
pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions, we
selected means and standard deviation for the measures. Values are means of
these variables for both activities and subjects.

tbodyacc-mean-x
tbodyacc-mean-y
tbodyacc-mean-z
tbodyacc-std-x
tbodyacc-std-y
tbodyacc-std-z
tgravityacc-mean-x
tgravityacc-mean-y
tgravityacc-mean-z
tgravityacc-std-x
tgravityacc-std-y
tgravityacc-std-z
tbodyaccjerk-mean-x
tbodyaccjerk-mean-y
tbodyaccjerk-mean-z
tbodyaccjerk-std-x
tbodyaccjerk-std-y
tbodyaccjerk-std-z
tbodygyro-mean-x
tbodygyro-mean-y
tbodygyro-mean-z
tbodygyro-std-x
tbodygyro-std-y
tbodygyro-std-z
tbodygyrojerk-mean-x
tbodygyrojerk-mean-y
tbodygyrojerk-mean-z
tbodygyrojerk-std-x
tbodygyrojerk-std-y
tbodygyrojerk-std-z
tbodyaccmag-mean
tbodyaccmag-std
tgravityaccmag-mean
tgravityaccmag-std
tbodyaccjerkmag-mean
tbodyaccjerkmag-std
tbodygyromag-mean
tbodygyromag-std
tbodygyrojerkmag-mean
tbodygyrojerkmag-std
fbodyacc-mean-x
fbodyacc-mean-y
fbodyacc-mean-z
fbodyacc-std-x
fbodyacc-std-y
fbodyacc-std-z
fbodyacc-meanfreq-x
fbodyacc-meanfreq-y
fbodyacc-meanfreq-z
fbodyaccjerk-mean-x
fbodyaccjerk-mean-y
fbodyaccjerk-mean-z
fbodyaccjerk-std-x
fbodyaccjerk-std-y
fbodyaccjerk-std-z
fbodyaccjerk-meanfreq-x
fbodyaccjerk-meanfreq-y
fbodyaccjerk-meanfreq-z
fbodygyro-mean-x
fbodygyro-mean-y
fbodygyro-mean-z
fbodygyro-std-x
fbodygyro-std-y
fbodygyro-std-z
fbodygyro-meanfreq-x
fbodygyro-meanfreq-y
fbodygyro-meanfreq-z
fbodyaccmag-mean
fbodyaccmag-std
fbodyaccmag-meanfreq
fbodybodyaccjerkmag-mean
fbodybodyaccjerkmag-std
fbodybodyaccjerkmag-meanfreq
fbodybodygyromag-mean
fbodybodygyromag-std
fbodybodygyromag-meanfreq
fbodybodygyrojerkmag-mean
fbodybodygyrojerkmag-std
fbodybodygyrojerkmag-meanfreq
angle(tbodyaccmean,gravity)
angle(tbodyaccjerkmean),gravitymean)
angle(tbodygyromean,gravitymean)
angle(tbodygyrojerkmean,gravitymean)
angle(x,gravitymean)
angle(y,gravitymean)
angle(z,gravitymean)

source of the data :
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
