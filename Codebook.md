
###Getting and Cleaning Data Course Project
####run_analysis tidy data Codebook
Ibrahiim Bayaan 6/21/14

This analysis builds off of the Human Activities Recognition (HAR) Using Smartphones Dataset, looking at experiments using 30 volunteers conducting six activities wearing a smartphone on their waist.  Data on 561 measurement variables is collected for each of the subjects in each activity.  See the README file for additional details

The run_analysis.R script extracts only the variables involving the mean and standard deviation, then creates the tidydata.txt file to store the average of each extracted variable for each activity and each subject

The coding in the tidydata.txt follows the conventions established in the HAR dataset to replace generic column names.  For additional information on units of measurement and definitions, see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data in the tidydata.txt file extracts only the measurement variables involving the mean and standard deviation of 

Column | Variable
------- | ---------
1	| Subject ID from 1 to 30
2	| Activity (Walking,Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying)
3	| tBodyAcc-mean()-X
4	| tBodyAcc-mean()-Y
5	| tBodyAcc-mean()-Z
6	| tBodyAcc-std()-X
7	| tBodyAcc-std()-Y
8	| tBodyAcc-std()-Z
9	| tGravityAcc-mean()-X
10 |	tGravityAcc-mean()-Y
11 |	tGravityAcc-mean()-Z
12	| tGravityAcc-std()-X
13	| tGravityAcc-std()-Y
14	| tGravityAcc-std()-Z
15	| tBodyAccJerk-mean()-X
16	| tBodyAccJerk-mean()-Y
17	| tBodyAccJerk-mean()-Z
18	| tBodyAccJerk-std()-X
19	| tBodyAccJerk-std()-Y
20	| tBodyAccJerk-std()-Z
21	| tBodyGyro-mean()-X
22	| tBodyGyro-mean()-Y
23	| tBodyGyro-mean()-Z
24	| tBodyGyro-std()-X
25	| tBodyGyro-std()-Y
26	| tBodyGyro-std()-Z
27	| tBodyGyroJerk-mean()-X
28	| tBodyGyroJerk-mean()-Y
29	| tBodyGyroJerk-mean()-Z
30	| tBodyGyroJerk-std()-X
31	| tBodyGyroJerk-std()-Y
32	| tBodyGyroJerk-std()-Z
33	| tBodyAccMag-mean()
34	| tBodyAccMag-std()
35	| tGravityAccMag-mean()
36	| tGravityAccMag-std()
37	| tBodyAccJerkMag-mean()
38	| tBodyAccJerkMag-std()
39	| tBodyGyroMag-mean()
40	| tBodyGyroMag-std()
41	| tBodyGyroJerkMag-mean()
42	| tBodyGyroJerkMag-std()
43	| fBodyAcc-mean()-X
44	| fBodyAcc-mean()-Y
45	| fBodyAcc-mean()-Z
46	| fBodyAcc-std()-X
47	| fBodyAcc-std()-Y
48	| fBodyAcc-std()-Z
49	| fBodyAccJerk-mean()-X
50	| fBodyAccJerk-mean()-Y
51	| fBodyAccJerk-mean()-Z
52	| fBodyAccJerk-std()-X
53	| fBodyAccJerk-std()-Y
54	| fBodyAccJerk-std()-Z
55	| fBodyGyro-mean()-X
56	| fBodyGyro-mean()-Y
57	| fBodyGyro-mean()-Z
58	| fBodyGyro-std()-X
59	| fBodyGyro-std()-Y
60	| fBodyGyro-std()-Z
61	| fBodyAccMag-mean()
62	| fBodyAccMag-std()
63	| fBodyBodyAccJerkMag-mean()
64	| fBodyBodyAccJerkMag-std()
65	| fBodyBodyGyroMag-mean()
66	| fBodyBodyGyroMag-std()
67	| fBodyBodyGyroJerkMag-mean()
68	| fBodyBodyGyroJerkMag-std()
