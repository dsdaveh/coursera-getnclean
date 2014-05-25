# setwd to the path containing the 'test' and 'train' folders from the zip package

#setwd(Sys.getenv('USERPROFILE'))
#setwd("Google Drive/Coursera/Getting and Cleaning Data/Project")

activity_key <- read.table("activity_labels.txt")
activity_key[,2] <- tolower(activity_key[,2])

readGroupData <- function ( group_name ) {
     x_data = sprintf("%s/X_%s.txt",  group_name, group_name)
     subj_data = sprintf("%s/subject_%s.txt",  group_name, group_name)
     act_data = sprintf("%s/y_%s.txt",  group_name, group_name)
     
     print(sprintf("reading %s...\n",x_data))
     x <- read.fwf( x_data , widths=rep(16,561))
     mNames <- read.table("features.txt", sep=" ")
     names(x) <- mNames$V2
     keep <- grep('-mean\\(|-std\\(', mNames$V2)  #keep on -mean() and -std()
     x <- x[,keep]
     names(x) <- lapply(names(x), sub, pattern="\\()", replacement="") # remove parentheses
     names(x) <- lapply(names(x), gsub, pattern="-", replacement=".")   # swap dashes for periods
     names(x) <- lapply(names(x), sub, pattern="^t", replacement="time")   # t -> time...
     names(x) <- lapply(names(x), sub, pattern="^f", replacement="freq")   # f -> freq...zz2 <- lapply(zz, sub, pattern="\\()", replacement="")
     
     subj <- read.table(subj_data)
     act <- read.table(act_data)
     zz <- activity_key[act[,1],2]
     zz2 <- cbind(act,zz)
     
     x <- cbind(subj, activity_key[act[,1],2] , group_name , x)
     names(x)[1:3] <- c("subject_id", "activity", "group")
     x
}

data <- rbind( readGroupData ("test"), readGroupData ("train") )

write.csv(data, "tidy_data.csv")

data.cell <- split(data[,4:69], list(data$subject_id,data$activity))
data.means <- sapply( data.cell, colMeans)

write.csv(data.means, "tidy_data_means.csv")

#zchk <- table(data$subject_id , data$activity)
#zvals <- data[ data$subject_id == 1 & data$activity == "laying",4]
#mean(zvals)    # should match data.means[1,1]
