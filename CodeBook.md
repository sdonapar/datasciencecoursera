The tidy_data.txt ( tab delimited file) is generated using the data set downloaded from the below link

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

following files are considered while preareing the tidy_data.txt file

activity_labels.txt - This file contains the activity labels
features.txt - This file contains the features list ( column list )

tidy_data.txt file contains 10299 observations with 82 variables ( columns )

	7352 observations from train data set
	2947 observations from test data set

Following are the columns in tidy_data.txt

1 activity_id , integer
2 activity_label , character
3 subject_id , integer
4 time.body.accelerometer.mean.X , numeric
5 time.body.accelerometer.mean.Y , numeric
6 time.body.accelerometer.mean.Z , numeric
7 time.body.accelerometer.stdev.X , numeric
8 time.body.accelerometer.stdev.Y , numeric
9 time.body.accelerometer.stdev.Z , numeric
10 time.Gravity.accelerometer.mean.X , numeric
11 time.Gravity.accelerometer.mean.Y , numeric
12 time.Gravity.accelerometer.mean.Z , numeric
13 time.Gravity.accelerometer.stdev.X , numeric
14 time.Gravity.accelerometer.stdev.Y , numeric
15 time.Gravity.accelerometer.stdev.Z , numeric
16 time.body.accelerometer.mean.X , numeric
17 time.body.accelerometer.mean.Y , numeric
18 time.body.accelerometer.mean.Z , numeric
19 time.body.accelerometer.stdev.X , numeric
20 time.body.accelerometer.stdev.Y , numeric
21 time.body.accelerometer.stdev.Z , numeric
22 time.body.gyroscope.mean.X , numeric
23 time.body.gyroscope.mean.Y , numeric
24 time.body.gyroscope.mean.Z , numeric
25 time.body.gyroscope.stdev.X , numeric
26 time.body.gyroscope.stdev.Y , numeric
27 time.body.gyroscope.stdev.Z , numeric
28 time.body.gyroscope.mean.X , numeric
29 time.body.gyroscope.mean.Y , numeric
30 time.body.gyroscope.mean.Z , numeric
31 time.body.gyroscope.stdev.X , numeric
32 time.body.gyroscope.stdev.Y , numeric
33 time.body.gyroscope.stdev.Z , numeric
34 time.body.accelerometer.mean , numeric
35 time.body.accelerometer.stdev , numeric
36 time.Gravity.accelerometer.mean , numeric
37 time.Gravity.accelerometer.stdev , numeric
38 time.body.accelerometer.mean , numeric
39 time.body.accelerometer.stdev , numeric
40 time.body.gyroscope.mean , numeric
41 time.body.gyroscope.stdev , numeric
42 time.body.gyroscope.mean , numeric
43 time.body.gyroscope.stdev , numeric
44 frequency.body.accelerometer.mean.X , numeric
45 frequency.body.accelerometer.mean.Y , numeric
46 frequency.body.accelerometer.mean.Z , numeric
47 frequency.body.accelerometer.stdev.X , numeric
48 frequency.body.accelerometer.stdev.Y , numeric
49 frequency.body.accelerometer.stdev.Z , numeric
50 frequency.body.accelerometer.mean.X , numeric
51 frequency.body.accelerometer.mean.Y , numeric
52 frequency.body.accelerometer.mean.Z , numeric
53 frequency.body.accelerometer.mean.X , numeric
54 frequency.body.accelerometer.mean.Y , numeric
55 frequency.body.accelerometer.mean.Z , numeric
56 frequency.body.accelerometer.stdev.X , numeric
57 frequency.body.accelerometer.stdev.Y , numeric
58 frequency.body.accelerometer.stdev.Z , numeric
59 frequency.body.accelerometer.mean.X , numeric
60 frequency.body.accelerometer.mean.Y , numeric
61 frequency.body.accelerometer.mean.Z , numeric
62 frequency.body.gyroscope.mean.X , numeric
63 frequency.body.gyroscope.mean.Y , numeric
64 frequency.body.gyroscope.mean.Z , numeric
65 frequency.body.gyroscope.stdev.X , numeric
66 frequency.body.gyroscope.stdev.Y , numeric
67 frequency.body.gyroscope.stdev.Z , numeric
68 frequency.body.gyroscope.mean.X , numeric
69 frequency.body.gyroscope.mean.Y , numeric
70 frequency.body.gyroscope.mean.Z , numeric
71 frequency.body.accelerometer.mean , numeric
72 frequency.body.accelerometer.stdev , numeric
73 frequency.body.accelerometer.mean , numeric
74 frequency.body.accelerometer.mean , numeric
75 frequency.body.accelerometer.stdev , numeric
76 frequency.body.accelerometer.mean , numeric
77 frequency.body.gyroscope.mean , numeric
78 frequency.body.gyroscope.stdev , numeric
79 frequency.body.gyroscope.mean , numeric
80 frequency.body.gyroscope.mean , numeric
81 frequency.body.gyroscope.stdev , numeric
82 frequency.body.gyroscope.mean , numeric

