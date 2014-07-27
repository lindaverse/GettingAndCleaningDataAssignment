#  Coursera Getting and Cleaning Data Assignment - Human Activity Recognition Using Smartphone Data Set 

This repository contains the assignment for the Coursera course Getting and Cleaning Data. 

The repo consists of the following files:
* README.md
* CodeBook.md
* run_analysis.R

This assignment uses the Human Activity Recognition Using Smartphones Data Set (available from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

For information on the original data set and the transformations made for the purposes of this project see "CodeBook.md". An overview of the variables contained in the data set is also given in "CodeBook.md".

To use the script "run_analysis.R", first download the data from the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Set your working directory to the directory the downloaded files are in, and then run "run_analysis.R" in R. 

The script will write a file ("tidyData.txt") to your current directory. This contains a tidy data set showing the variable averages (see "CodeBook.md") for 30 individuals for each of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). This file also contains the meta-data for each variable.