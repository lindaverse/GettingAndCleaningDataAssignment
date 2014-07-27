# Codebook: Coursera Getting and Cleaning Data Assignment - Human Activity Recognition Using Smartphone Data Set 
        
## Introduction: Data Source

This codebook provides an overview of the variables in the tidy data set created as part of the Coursera Getting and Cleaning Data assignment, and details the transformations made to the original data set.^1

The data used in this assignment is from the following site: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data linked to above represents data collected from the accelerometers from the Samsung Galaxy S smartphone. As the site linked to above explains:

*In total, 30 volunteers between the ages of 19 and 28 took part in experiments. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, those undertaking the research captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data.* 
        
*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.* 

The steps taken to transform the data for the purposes of this assignment are shown in the section below.

Other points to note:
* Variables are normalized and bounded within [-1,1].
* Each row in the outputted text file ("tidyData.txt") corresponds to a row in the data.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Data Transformation

1. Two files ("X_test.txt" and "X_train.txt") were read into R and combined.
2. A separate file ("features.txt") was also imported, and the variable names in this were set as the meta-data for the previous data.
3. For the purposes of this assignment, only variables containing the mean or standard deviation were needed. All others were removed from the data.
4. Two files ("y_test.txt" and "y_train.txt") containing class labels were read into R and combined. 
5. Another file ("activity_labels.txt") containing the activity names that correspond with the class labels was also read into R. The class labels were then added to the data. 
6. Participants' subject number was also added to the data.
7. The meta-data was altered so as to make it human-readable. To this end, CamelCase was used.
8. A second, tidy dataset was then created. This contains the mean for each activity and person.

## Variables 

Variables are normalized and bounded within [-1,1].

**"activity":** Activity undertaken whilst wearing smartphone (char): 
* WALKING 
* WALKING_UPSTAIRS 
* WALKING_DOWNSTAIRS 
* SITTING 
* STANDING 
* LAYING

**"subjectNumber":** Integer assigned to each participant (1-30). 

**"timeBodyAccelerometerMeanXaxis":** Mean of time domain body acceleration signals on the X-axis using accelerometer (int).
        
**"timeBodyAccelerometerMeanYaxis":** Mean of time domain body acceleration signals on the Y-axis using accelerometer (int).  

**"timeBodyAccelerometerMeanZaxis":** Mean of time domain body acceleration signals on the Z-axis using accelerometer (int). 

**"timeBodyAccelerometerStandardDeviationXaxis":** Standard deviation of time domain body acceleration signals on the X-axis using accelerometer (int).

**"timeBodyAccelerometerStandardDeviationYaxis":** Standard deviation of time domain body acceleration signals on the Y-axis using accelerometer (int). 

**"timeBodyAccelerometerStandardDeviationZaxis":** Standard deviation of time domain body acceleration signals on the Z-axis using accelerometer (int). 

**"timeGravityAccelerometerMeanXaxis":** Mean of time domain gravity signals on the X-axis Accelerometer (int). 

**"timeGravityAccelerometerMeanYaxis":** Mean of time domain gravity signals on the Y-axis using accelerometer (int).  

**"timeGravityAccelerometerMeanZaxis":** Mean of time domain gravity signals on the Z-axis using accelerometer (int).  

**"timeGravityAccelerometerStandardDeviationXaxis":** Standard deviation of time domain gravity signals on the X-axis using accelerometer (int). 

**"timeGravityAccelerometerStandardDeviationYaxis":** Standard deviation of time domain gravity signals on the Y-axis using accelerometer (int).  

**"timeGravityAccelerometerStandardDeviationZaxis":** Standard deviation of time domain gravity signals on the Z-axis using accelerometer (int).  

**"timeBodyAccelerometerJerkMeanXaxis":** Mean of time domain body jerk signals on the X-axis using accelerometer (int).

**"timeBodyAccelerometerJerkMeanYaxis":** Mean of time domain body jerk signals on the Y-axis using acccelerometer (int). 

**"timeBodyAccelerometerJerkMeanZaxis":** Mean of time domain body jerk signals on the Z-axis using accelerometer (int). 

**"timeBodyAccelerometerJerkStandardDeviationXaxis":** Standard deviation of time domain body jerk signals on the X-axis using accelerometer (int).

**"timeBodyAccelerometerJerkStandardDeviationYaxis":** Standard deviation of time domain body jerk signals on the Y-axis using accelerometer (int). 

**"timeBodyAccelerometerJerkStandardDeviationZaxis":** Standard deviation of time domain body jerk signals on the Z-axis using accelerometer (int). 

**"timeBodyGyroMeanXaxis":** Mean of time domain body acceleration signals on the X-axis using gyroscope (int).

**"timeBodyGyroMeanYaxis":** Mean of time domain body acceleration signals on the Y-axis using gyroscope (int).

**"timeBodyGyroMeanZaxis":** Mean of time domain body acceleration signals on the Z-axis using gyroscope (int).

**"timeBodyGyroStandardDeviationXaxis":** Standard deviation of time domain body acceleration signals on the X-axis using gyroscope (int).

**"timeBodyGyroStandardDeviationYaxis":** Standard deviation of time domain body acceleration signals on the Y-axis using gyroscope (int).

**"timeBodyGyroStandardDeviationZaxis":** Standard deviation of time domain body acceleration signals on the Z-axis using gyroscope (int).

**"timeBodyGyroJerkMeanXaxis":** Mean of time domain body jerk signals on the X-axis using gyroscope (int).

**"timeBodyGyroJerkMeanYaxis":** Mean of time domain body jerk signals on the Y-axis using gyroscope (int).

**"timeBodyGyroJerkMeanZaxis":** Mean of time domain body jerk signals on the Z-axis using gyroscope (int).

**"timeBodyGyroJerkStandardDeviationXaxis":** Standard deviation of time domain body jerk signals on the X-axis using gyroscope (int).

**"timeBodyGyroJerkStandardDeviationYaxis":** Standard deviation of time domain body jerk signals on the Y-axis using gyroscope (int).

**"timeBodyGyroJerkStandardDeviationZaxis":** Standard deviation of time domain body jerk signals on the Z-axis using gyroscope (int).

**"timeBodyAccelerometerMagnitudeMean":** Mean of time domain body acceleration signals magnitude using accelerometer (int).

**"timeBodyAccelerometerMagnitudeStandardDeviation":** Standard deviation of time domain body acceleration signals magnitude using accelerometer (int).

**"timeGravityAccelerometerMagnitudeMean":** Mean of time domain gravity signals magnitude using accelerometer (int)

**"timeGravityAccelerometerMagnitudeStandardDeviation":** Standard deviation of time domain gravity signals magnitude using accelerometer (int)

**"timeBodyAccelerometerJerkMagnitudeMean":** Mean of time domain body jerk signals magnitude using accelerometer (int).

**timeBodyAccelerometerJerkMagnitudeStandardDeviation":** Standard deviation of time domain body jerk signals magnitude using accelerometer (int).

**"timeBodyGyroMagnitudeMean":** Mean of time domain body acceleration signals magnitude using gyroscope (int).

**"timeBodyGyroMagnitudeStandardDeviation":** Standard deviation of time domain body acceleration signals magnitude using gyroscope (int).

**"timeBodyGyroJerkMagnitudeMean":** Mean of time domain body jerk signals magnitude using gyroscope (int).

**"timeBodyGyroJerkMagnitudeStandardDeviation":** Standard deviation of time domain body jerk signals magnitude using gyroscope (int).

**"frequencyBodyAccelerometerMeanXaxis":** Mean of frequency domain body acceleration signals on the X-axis using accelerometer (int). 

**"frequencyBodyAccelerometerMeanYaxis":** Mean of frequency domain body acceleration signals on the Y-axis using accelerometer (int).

**"frequencyBodyAccelerometerMeanZaxis":** Mean of frequency domain body acceleration signals on the Z-axis using accelerometer (int).

**"frequencyBodyAccelerometerStandardDeviationXaxis":** Standard deviation of frequency domain body acceleration signals on the X-axis using accelerometer (int). 

**"frequencyBodyAccelerometerStandardDeviationYaxis":** Standard deviation of frequency domain body acceleration signals on the Y-axis using accelerometer (int). 

**"frequencyBodyAccelerometerStandardDeviationZaxis":** Standard deviation of frequency domain body acceleration signals on the Z-axis using accelerometer (int). 

**"frequencyBodyAccelerometerJerkMeanXaxis":** Mean of frequency domain body jerk signals on the X-axis using accelerometer (int).

**"frequencyBodyAccelerometerJerkMeanYaxis":** Mean of frequency domain body jerk signals on the Y-axis using accelerometer (int).

**"frequencyBodyAccelerometerJerkMeanZaxis":** Mean of frequency domain body jerk signals on the Z-axis using accelerometer (int).

**"frequencyBodyAccelerometerJerkStandardDeviationXaxis":** Standard deviation of frequency domain body jerk signals on the X-axis using accelerometer (int).

**"frequencyBodyAccelerometerJerkStandardDeviationYaxis":** Standard deviation of frequency domain body jerk signals on the Y-axis using accelerometer (int).

**"frequencyBodyAccelerometerJerkStandardDeviationZaxis":** Standard deviation of frequency domain body jerk signals on the Z-axis using accelerometer (int).

**"frequencyBodyGyroMeanXaxis":** Mean of frequency domain body acceleration signals on the X-axis using gyroscope (int).

**"frequencyBodyGyroMeanYaxis":** Mean of frequency domain body acceleration signals on the Y-axis using gyroscope (int).

**"frequencyBodyGyroMeanZaxis":** Mean of frequency domain body acceleration signals on the Z-axis using gyroscope (int).

**"frequencyBodyGyroStandardDeviationXaxis":** Standard deviation of frequency domain body acceleration signals on the X-axis using gyroscope (int).

**"frequencyBodyGyroStandardDeviationYaxis":** Standard deviation of frequency domain body acceleration signals on the Y-axis using gyroscope (int).

**"frequencyBodyGyroStandardDeviationZaxis":** Standard deviation of frequency domain body acceleration signals on the Z-axis using gyroscope (int).

**"frequencyBodyAccelerometerMagnitudeMean":** Mean of frequency domain body acceleration signals magnitude using accelerometer (int).

**"frequencyBodyAccelerometerMagnitudeStandardDeviation":** Standard deviation of frequency domain body acceleration signals magnitude using accelerometer (int).

**"frequencyBodyAccelerometerJerkMagnitudeMean":** Mean of frequency domain body jerk signals magnitude using accelerometer (int).

**"frequencyBodyAccelerometerJerkMagnitudeStandardDeviation":** Standard deviation of frequency domain body jerk signals magnitude using accelerometer (int).

**"frequencyBodyGyroMagnitudeMean":** Mean of frequency domain body acceleration signals magnitude using gyroscope (int).

**"frequencyBodyGyroMagnitudeStandardDeviation":** Standard deviation of frequency domain body acceleration signals magnitude using gyroscope (int).

**"frequencyBodyGyroJerkMagnitudeMean":** Mean of frequency domain body jerk signals magnitude using gyroscope (int).

**"frequencyBodyGyroJerkMagnitudeStandardDeviation":** Standard deviation of frequency domain body jerk signals magnitude using gyroscope (int).