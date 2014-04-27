Instructions for running the script run_analysis.R

Please note that the above script excepts the following to run successfully

it expects the directory ~/coursera/Prog_R/gcd_week3 as the working directory

this downloads the file from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Following linux system commands are used
	unzip - for extracting the files from the zip file
	sed - for cleaning the multiple spaces in both X_train.txt and X_test.txt files
	mv - to renmae the directoy from "UCI HAR Dataset" to "UCI_HAR_Dataset"

	Note: Please note that unzip and sed commands might not work in Windows
	      sed uses cleanup.sed file

it expects file modified_features.txt file in the working directory with following columNs. 
This contains the mapping of descriptive lables. feature_name is the one used as the descriptive label
	feature_id - serial number as appear in feature.txt
	feature_name_orginal - name as appear in features.txt
	time_freq - first letter from the name ( t, f or a)
	first_part - derived from the original name ( time or ferequency)
	measure - mean or stdev
	sensor - accelerometer or gyroscope 
	Direction - X , Y or Z
	accelration - body or Gravity 
	Signal - magnitude, jerk or jerkmag 
	feature_name - derived based on the above values

final merged data set is created as tidy_data.txt ( tab delimited) file with 82 columns
