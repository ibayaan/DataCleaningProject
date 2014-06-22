
###Getting and Cleaning Data Course Project\
####run_analysis tidy data Codebook\
#####Ibrahiim Bayaan 6/21/14\

This analysis builds off of the Human Activities Recognition (HAR) Using Smartphones Dataset, looking at experiments using 30 volunteers conducting six activities wearing a smartphone on their waist.  Data on 561 measurement variables is collected for each of the subjects in each activity.  See the README file for additional details

The run_analysis.R script extracts only the variables involving the mean and standard deviation, then creates the tidydata.txt file to store the average of each extracted variable for each activity and each subject

The coding in the tidydata.txt follows the conventions established in the HAR dataset to replace generic column names.  For additional information on units of measurement and definitions, see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data in the tidydata.txt file extracts only the measurement variables involving the mean and standard deviation
