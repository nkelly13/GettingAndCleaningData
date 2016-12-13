# Define lists to contain column names for the features and the activities
columnNames <- readLines("UCI HAR Dataset/features.txt")
activityNames <- c("activity")


# Read in (X/y)_(test/train) using the previously defined lists
X_test  <- read.csv("UCI HAR Dataset/test/X_test.txt"   , sep="", header = FALSE, col.names = columnNames)
y_test  <- read.csv("UCI HAR Dataset/test/y_test.txt"   , sep="", header = FALSE, col.names = activityNames)
X_train <- read.csv("UCI HAR Dataset/train/X_train.txt" , sep="", header = FALSE, col.names = columnNames)
y_train <- read.csv("UCI HAR Dataset/train/y_train.txt" , sep="", header = FALSE, col.names = activityNames)

# find column names for measurements of mean/standard deviation
extractIndices <- grep("mean\\(\\)|std\\(\\)",columnNames)
extractColumns <- columnNames[extractIndices]

# Extract the columns related to standard deviation/mean and attach the record's activity
testExtract  <- cbind(X_test[extractIndices],y_test)
trainExtract <- cbind(X_train[extractIndices],y_train)

allExtract <- rbind(testExtract,trainExtract)
# Check for NA's
max(sapply(testExtract,function(x){sum(is.na(x))}))
# returns 0

activityDescriptions <- read.table("UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE, col.names = c("numericActivity","descriptiveActivity"))
activityDescriptions

head(allExtract)
