Coursera/Getting and Cleaning Data - Project Submission
===========================================================
This repo contains the deliverables for the project and an explanation of how to use them

## Background
The project involves assembling and cleaning a publicly available dataset in order to practice and demonstrate various techniques learned as part of the 4 week Coursera course "Getting and Cleaning Data".  The data for the project is research data collected using the motion sensor devices in a Samsung Galaxy S II.  The goal of the research is to train machine learning (ML) algorythms in the hopes of being able to detect the type of activity users were engaged in based on the sensor measurements.  No analysis was done as part of this project, as the goal was to perform the data preparation step that might be used in such an analysis.

More information on the motion study is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Data
The raw data used for this project is available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The zip file contains a single top level directory called "UCI HAR Dataset" which contains
+ test - directory containing raw data for randomly selected observations to be used for ML testing 
+ train - directory containing raw data for randomly selected observations to be used for ML training
+ activity_labels.txt - describes the activity categories 
+ features.txt - names for the 561 columns of measurement data
+ features_info.txt - detail on the meaning of the measurement data and column names

The test and train directory each contain
+ Intertia Signals - directory containing additional measurement data that was not used in this project
+ X_*dirname*.txt - column data containing sensor measurements. Each record represents measurements for a single subject (study participant) and activity.  The 561 columns in this dataset correspond to the features named in features.txt  
+ y_*dirname*.txt - integer indicator (1-6) indicating the activity corresponding to sensor measurements record for a subject and activity. 
+ subject_*dirname*.txt - ID for the subject corresponding to a sensor measurements record.

**test/y_test.txt** contain 2947 measurement records.
**train/y_train.txt** contains 7352 measurement records.
For the purpose of this project, the test and train represent 2 sources of identical data types, so the final data set contains 10299 measurement records

## Cleaning the Dataset
the R script **run_analysis.R** can be executed in order to preprocess the raw data into a tidy dataset suitable for further analysis.  Run the script from the directory containing the "test" and "train" subdirectories.  The script performs the following actions.
+ combine data for both test and train into a single dataset
+ add column headers to the sensor measurements from features.txt
+ discard all columns except those for mean and standard deviation measurments (per the project instructions).  These were determined by the presence of -mean() and std() in the column names [66 columns kept]  
+ rename columns
  + prefix frequency domain data with "freq" and time domain data with "time"
  + replace special characters per Google's R Style guide https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml
+ prepends three columns to the sensor measurement data
  + the subject ID 
  + the activity description - taken from activity labels and converted to lower case
  + the data group  (test or train)

The R script also creates a second dataset that reports the average for each measurement by subject and ID.

## Output
+ **tidy_data.csv** - a CSV file containing the tidy data as described above  [ 10299 data rows x 69 cols ]
+ **tidy_data_means.csv** - CSV file contianing measurement averages by subject and ID [ 69 rows x 180 cols ]

See CodeBook.md for more details.
