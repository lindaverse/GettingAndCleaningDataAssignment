#Before running this script, set working directory to the directory the downloaded files are in.

#Objective 1: Merge the training and the test sets to create one data set.

#Reads in test and train sets.
test <- read.table("./test/X_test.txt")
train <- read.table("./train/X_train.txt")

#Combines the two data sets into one.
mergedData <- rbind(test, train)

#Reads in the file containing the variable names, and sets as meta-data.
colNames <- read.table("features.txt")
mergedData <- setNames(mergedData, colNames[,2])

#Objective 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

#Gets the column indexes of the relevant columns, and extracts these from data frame. 
relevantColIndexs <- grep("*std|mean\\(\\)*", names(mergedData))
mergedData <- mergedData[relevantColIndexs]

#Objective 3: Uses descriptive activity names to name the activities in the data set.

#Reads in test and train activities (numbers with corresponding activities), and combines the two.
testActivities <- read.table("./test/y_test.txt")
trainActivities <- read.table("./train/y_train.txt")
mergedActivities <- rbind(testActivities, trainActivities)

#Reads in file that links activity numbers and names.
activityLables <- read.table("activity_labels.txt")

#Function to find activity name that corresponds to activity number.
findReplace <- function(x) {
        activityLables[activityLables$V1 == x,]$V2
}

#Creates a new column in mergedActivities that contains name of corresponding activity number. 
mergedActivities$activity <- sapply(mergedActivities$V1, FUN=findReplace)

#Adds activity column to mergedData.
mergedData$activity <- mergedActivities[,2]

#Reads in the files containing the subject numbers of the participants, and combines the two. Adds this to mergedData.
testSubjectNos <- read.table("./test/subject_test.txt")
trainSubjectNos <- read.table("./train/subject_train.txt")
subjectNos <- rbind(testSubjectNos, trainSubjectNos)
mergedData$subjectNumber <- subjectNos[,1]

#Objective 4: Appropriately labels the data set with descriptive variable names.

names(mergedData) <- gsub("^t", "time", names(mergedData))
names(mergedData) <- gsub("^f", "frequency", names(mergedData))
names(mergedData) <- gsub("-X", "Xaxis", names(mergedData))
names(mergedData) <- gsub("-Y", "Yaxis", names(mergedData))
names(mergedData) <- gsub("-Z", "Zaxis", names(mergedData))
names(mergedData) <- gsub("BodyBody", "Body", names(mergedData))
names(mergedData) <- gsub("Acc", "Accelerometer", names(mergedData))
names(mergedData) <- gsub("-mean[(][)]", "Mean", names(mergedData))
names(mergedData) <- gsub("-std[(][)]", "StandardDeviation", names(mergedData))
names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))

#Objective 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#Creates a second, independent data set that contains the mean of each variable for every activity and person.
tidyData <- mergedData
require(plyr)
tidyData <- ddply(mergedData, .(activity, subjectNumber), numcolwise(mean))

#Writes the data frame to current working directory.
write.table(tidyData, "tidyData.txt")



