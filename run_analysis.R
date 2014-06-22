library(reshape2)

#Read in testing group data, along with subject variable and activity ID
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Read in training group data, along with subject variable and activity ID
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Read in the activity names to match with activity labels in data sets
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Read in feature names and prepare column headings
features <- read.table("./UCI HAR Dataset/features.txt")
headings <- features[,2]

#Pass the column headings to each data set
names(test) <- headings
names(train) <- headings

#Filter out the headings that contain mean and standard deviation 
meandev <- grepl("mean\\(\\)|std\\(\\)", headings)

#Select the colums in each dataset that contain mean and standard deviation headings
testsubset<- test[,meandev]
trainsubset <- train[,meandev]

#Merge the training and testing data for one large dataset
allsubjects <- rbind(testsubject, trainsubject)
alldata <- rbind(testsubset, trainsubset)
alllabels <- rbind(testlabels, trainlabels)

#Add the subject and activity ID data to the measurment data and rename the ID variables
mergeddata <- cbind(allsubjects, alllabels, alldata)
names(mergeddata)[1] <- "ID"
names(mergeddata)[2] <- "Activity"

#Aggregate the data by subject id and activity id
aggregated <- aggregate(. ~ ID + Activity, data=mergeddata, FUN = mean)

#Assign labels to the activity ID numbers
aggregated$Activity <- factor(aggregated$Activity, labels=activitylabels[,2])

#Write final tidy data set
write.table(aggregated, file="./tidydata.txt", sep="\t", row.names=FALSE)
