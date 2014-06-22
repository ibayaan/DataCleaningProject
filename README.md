Data Cleaning Project
=====================


###About the Human Activities Recognition Using Smartphones Dataset

The Human Activities Recognition (HAR) Using Smartphones Dataset captures various measurements of 30 volunteers conducting 6 different activities while wearing a Samsung Galaxy S II smartphone on their waist. The subjects were divided into two groups: 1) the testing group, comprising of 30% of the volunteers, and 2) the training group, comprised of the remaining 70% of volunteers.  The data files can be obtained here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset is contatined in several .txt files contaning the volunteer (subject) ids, the activity ids, and 561 measurement variables while wearing the smartphone.  For more information about the measurements and data, see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


###The run_analysis.R Script

The purpose of the run_analysis script is to:

* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


##### Reading in the data
The first step in this script is to read the data in the .txt files into R, along with the activity labels and subject labels.  The read.table commands at the start of the script create 6 seperate data frames from the testing and training .txt files in the HAR dataset.  In addition, the activity labels are read into R for later use to give the activities descriptions instead of numbers.  Lastly, the measurement variable names are read into R into the 'features' data frame, with the second column isolated into the 'headings' vector.  These variable names are then passed to both the testing and training measurement variable data frames 

##### Extracting the relevant variables
The next step is to filter the data set, extracting only the measurment variable sthat capture the mean and standard deviations of the various measurements. The'grepl()' function searches through the strings of the headings to find either 'mean' or 'std', which indicates a measurement variabel that should be extracted.  The 'meandev' vector is a series of TRUE/FALSE which is then used to subset both the training and the testing measurement variable data frames to extract only the variables of interest

##### Merging the data
Once the data has been extracted, the script then binds the data sets.  The 'alldata' is a row bind of the extracted measurement variables of the training and testing data sets.  The 'allsubjects' data frame is a row bind of the subject id's of the training and testing groups.  The 'alllabels' data frame is a row bind of the activity labels of the testing and training groups.  The subject id and activity label are then column binded to the extracted measurement variables to form the 'mergeddata' data frame.  The scrpit then assigns variable names for subject id and activity label.

##### Creating the second data set

The last step is to create a second data set that contains the average of each measurement variable for each activity and each sunject.  The 'reshape2' library is necessary for this part of the script as the 'aggregate()' function is a part of that package.  This function allows to calculate the mean of each measurement variable by activity ID and subject ID.  Also, the descriptive activity labels are passed to the final data frame, using the 'factor()' function to match the string descriptions to the numbers in the Activity column.  The final data frame is then written out to the tidydata.txt file.
