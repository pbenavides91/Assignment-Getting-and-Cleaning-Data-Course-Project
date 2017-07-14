# Assignment-Getting-and-Cleaning-Data-Course-Project

This is the Peer-graded Assignment for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, follows the next steps:

1. Establish the working directory, Create the directory "data", download the dataset in "data" and unzip the dataset.

2. Load required packages.

3. Read subject, activity and data files.

4. Both Activity and Subject files the training and the test sets are merged by row binding. Rename variables "subject" and "activityNum".

5. Combine the DATA training and test files. Name variables according to feature. Column names for activity labels and merge them.

6. Reading "features.txt" and extracting only the mean and standard deviation. Then, take only measurements for the mean and standard deviation and add "subject","activityNum".

7. Enter name of activity into dataTable and create dataTable with variable means sorted by subject and Activity.

8. Write to text file on disk.


