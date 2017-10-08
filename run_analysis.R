# Download and unzip the data in the working directory
downloadData <- function() {
  zipName <- "data.zip"
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = zipName)
  unzip(zipName)
}

# Load the feature names from "features.txt" and select the "mean" and "std" features
loadFeaturesTable <- function(rootPath) {
  featuresFilePath <- file.path(rootPath, "features.txt")
  table <- read.table(featuresFilePath, colClasses=c("integer","character"))
  featuresSel <- grepl("mean\\(\\)", table$V2) | grepl("std\\(\\)", table$V2)
  table <- table[featuresSel, ]
  table$V2 <- gsub("\\(\\)", "", table$V2)
  table
}

# Load the feature names from "features.txt", select the "mean" and "std" features
loadData <- function(rootPath, featuresTable, dataType) {
  subjectFilePath <- file.path(rootPath, dataType, paste("subject_", dataType, ".txt", sep=""))
  subjectTable <- read.table(subjectFilePath, colClasses=c("integer"))
  xFilePath <- file.path(rootPath, dataType, paste("X_", dataType, ".txt", sep=""))
  xTable <- read.table(xFilePath)
  xTable <- xTable[,featuresTable$V1]
  names(xTable) = featuresTable$V2
  
  activities = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
  yFilePath <- file.path(rootPath, dataType, paste("y_", dataType, ".txt", sep=""))
  yTable <- read.table(yFilePath, colClasses=c("integer"))
  
  for (i in 1:length(activities)) {
    yTable[yTable$V1 == i,] <- activities[i]
  }
  
  cbind(
    subject=subjectTable$V1,
    xTable,
    activity=yTable$V1
  )
}

tidyDataTable <- function(dataTable) {
  # This creates a skinny data set as in:
  dataMelt <- melt(dataTable, id=c("subject", "activity"))
  dcast(dataMelt, subject + activity ~ variable, mean)
}

downloadData()

rootPath <- file.path(".", "UCI HAR Dataset")

featuresTable <- loadFeaturesTable(rootPath)

tstTable <- loadData(rootPath, featuresTable, "test")
trnTable <- loadData(rootPath, featuresTable, "train")

dataTable <- rbind(tstTable, trnTable)

tidyTable <- tidyDataTable(dataTable)

write.table(tidyTable, "tidyData.txt", row.names=FALSE)

str(tidyTable)