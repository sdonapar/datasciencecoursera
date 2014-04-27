Instructions for running the script run_analysis.R

Please note that the above script excepts the following to run successfully

it expects the directory ~/coursera/Prog_R/gcd_week3 as the working directory

this downloads the file from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Following linux system commands are used
	unzip - for extracting the files from the zip file
	sed - for cleaning the multiple spaces in both X_train.txt and X_test.txt files

it expects file modified_features.txt file in the working directory with following columNs. 
This contains the mapping of descriptive lables. feature_name is the one used as the descriptive label
	feature_id
	feature_name_orginal
	time_freq
	first_part
	measure
	sensor
	Direction
	accelration
	Signal
	feature_name

final merged data set is created as tidy_data.txt ( tab delimited) file with 82 columns
