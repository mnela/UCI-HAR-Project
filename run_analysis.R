##This is an attempt to create tidy data from a larger data set
##This file extracts data from 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##which should be unzipped, and in your working directory


#select the test and train folders to read in the appropriate files
D <- c("./UCI HAR Dataset/test", "./UCI HAR Dataset/train")
files <- list.files(path = D, full.names = TRUE)
#removes files from list that won't be used
files <- files[-c(1,5)]
#read in files from test and train folders
ldf <- lapply(files, read.table)

#merge the training and testing tests to create one dataset
#subject contains the subject ID for each observation in the data
subject <- ldf[[1]]
subject <- rbind(subject,ldf[[4]])
#y contains the code for the activity that was being engaged in for each observation
y <- ldf[[3]]
y <- rbind(y,ldf[[6]])
#X is a large data frame containing 10299 observations of 561 features
X <- ldf[[2]]
X <- rbind(X,ldf[[5]])

#read in the file that contains the decifer for the activity code 
activity_factors <- read.table("./UCI HAR Dataset/activity_labels.txt")
#adjust the names to make it easier to read/work with
activity_factors[,2] <- tolower(lapply(activity_factors[,2],gsub, pattern="_", replacement = "."))

#name the columns for the activity table
names(activity_factors) <- c("activity.id", "activity")
#read in the file that lists all the features whose data make up each observation in X
features <- read.table("./UCI HAR Dataset/features.txt")

#add the activity code and subject ID to the large data frame as columns
X <- cbind(y,X)
X <- cbind(subject,X)
#add activity ID and subject ID to the list of features (this will be used to name the columns of the large data frame)
features <- rbind(data.frame(V1=1,V2="activity.id"), features)
features <- rbind(data.frame(V1=1,V2="subject"), features)

#give the columns of the large data frame appropriate labels
names(X) <- features[[2]]
#merge the data frames X and activity_factors by their common column, "activity.id", keeping all columns
merX <- merge(X, activity_factors, all=TRUE)

#select only the data which contain mean or standard deviation for each measurement, putting into new data frame, ndf
meanstdata <- grep("mean|std", names(merX))
ndf <- merX[meanstdata]
#remove those columns which contain "meanFreq"
remove <- grep("meanFreq", names(ndf))
ndf <- ndf[,!(names(ndf) %in% names(ndf[remove]))]

#adjust the names of the variables to make easier to select and reflect the final output (mean of)
names(ndf) <- lapply(names(ndf),gsub, pattern="()", replacement = "", fixed = TRUE)
names(ndf) <- lapply(names(ndf),gsub, pattern="-", replacement = ".", fixed = TRUE)
names(ndf) <- paste0("meanof.", names(ndf))

#add activity and subject ID to the data frame
ndf <- cbind(activity = merX$activity, ndf)
ndf <- cbind(subject = merX$subject, ndf)

# load the reshape2 library to morph the data into final form
library(reshape2)

#begin to morph the data frame from wide to long, selecting subject and activity as ids
activmelt <- melt(ndf, id = c("subject", "activity"))
#then morph back to wide, summarizing the data by taking the mean of every variable per subject/per activity
tidydata <- dcast(activmelt, subject + activity ~variable, mean)
#write the data frame to a text file
write.table(tidydata, "tidydata.txt")

