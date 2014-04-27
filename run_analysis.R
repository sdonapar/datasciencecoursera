# Created by Sasidhar Donaparthi

setwd("~/coursera/Prog_R/gcd_week3")

# downloading the file
file_url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.fil(file_url,destfile="./getdata-projectfiles-UCI HAR Dataset.zip", method="curl")
file_created_date <- date()
write(file_created_date,"file_created_date.txt")

#unzip the file, remove the directory if already exists
if (file.exists("UCI_HAR_Dataset")) {
        system("rm -rf UCI_HAR_Dataset")
}
system("unzip \"getdata-projectfiles-UCI HAR Dataset.zip\"")
system("mv \"UCI HAR Dataset\" UCI_HAR_Dataset")

# X_train.txt and X_test.txt contains multiple spaces, cleaning the files using unix sed commands
system("sed -f ./UCI_HAR_Dataset/cleanup.sed ./UCI_HAR_Dataset/train/X_train.txt > ./UCI_HAR_Dataset/train/x_train.txt")
system("sed -f ./UCI_HAR_Dataset/cleanup.sed ./UCI_HAR_Dataset/test/X_test.txt > ./UCI_HAR_Dataset/test/x_test.txt")

#reading the data files common to both test and train data sets

activity_labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt",sep=" ", 
                              col.names=c("activity_id","activity_label"),
                              colClasses=c("integer","character"))
features <- read.table("./UCI_HAR_Dataset/features.txt",sep=" ", 
                              col.names=c("feature_id","feature_name"),
                              colClasses=c("integer","character"))
mod_features <- read.table("./modified_features.txt",sep="\t", header=TRUE,
                           colClasses="character")
mod_features[,"feature_id"] <- as.integer(mod_features[,"feature_id"])
subject_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt",sep =" ",
                              col.names = c("subject_id"), colClasses = c("integer"))
#reading the train data files

y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt",sep =" ",
                            col.names = c("activity_id"), colClasses = c("integer"))
x_train <- read.table("./UCI_HAR_Dataset/train/x_train.txt",sep =" ",
                      col.names = features$feature_name, colClasses = c("double"))
subject_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt",sep =" ",
                            col.names = c("subject_id"), colClasses = c("integer"))

#reading the test data files

y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt",sep =" ",
                      col.names = c("activity_id"), colClasses = c("integer"))
x_test <- read.table("./UCI_HAR_Dataset/test/x_test.txt",sep =" ",
                      col.names = features$feature_name, colClasses = c("double"))

# combining and merging the data sets, creating final data set

tot_subject = rbind(subject_train,subject_test)
tot_y <- rbind(y_train,y_test)
tot_x <- rbind(x_train,x_test)
tot_df = data.frame(tot_subject,tot_y,tot_x)
tot_df_merge <- merge(x=tot_df,y=activity_labels, by.x="activity_id",by.y="activity_id")
cols <- mod_features$feature_id
final_data <- data.frame(tot_df_merge[,1],tot_df_merge[,564],tot_df_merge[,2],tot_df_merge[,cols])
col_names <- c("activity_id","activity_label","subject_id",mod_features$feature_name)
names(final_data) <- col_names
write.table(final_data, file="tidy_data.txt",sep="\t")

