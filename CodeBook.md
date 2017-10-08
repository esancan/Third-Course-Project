# `tidyData.txt` CodeBook

## Description

`tidyData.txt` is a tidy dataset based on the original work of ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This dataset was generated entirely in R with the accompanying `run_analysis.R` script.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


This dataset contain 66 features of the original dataset for each subject (volunteers) and activity pair. Its using a wide layout for the dataset, where each pair of subject id and activity contains 66 columns of features.

The original dataset contained multiple feature values for each subject/activity unique pair. This dataset computes the mean for the features associated with the same unique subject/activity pair.

A list of each column is in the Layout section below.

## Reading this dataset in R

To load this dataset in R:
read.table("tidyData.txt", header=TRUE)

## Layout

1. subject (int)
    * A value of discrete numbers from 1 to 30 representing the subject id.
2. activity (factor)
    * A descriptive activity name with the possible values:
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
3. tBodyAcc-mean-X
4. tBodyAcc-mean-Y
5. tBodyAcc-mean-Z
6. tBodyAcc-std-X
7. tBodyAcc-std-Y
8. tBodyAcc-std-Z
9. tGravityAcc-mean-X
10. tGravityAcc-mean-Y
11. tGravityAcc-mean-Z
12. tGravityAcc-std-X
13. tGravityAcc-std-Y
14. tGravityAcc-std-Z
15. tBodyAccJerk-mean-X
16. tBodyAccJerk-mean-Y
17. tBodyAccJerk-mean-Z
18. tBodyAccJerk-std-X
19. tBodyAccJerk-std-Y
20. tBodyAccJerk-std-Z
21. tBodyGyro-mean-X
22. tBodyGyro-mean-Y
23. tBodyGyro-mean-Z
24. tBodyGyro-std-X
25. tBodyGyro-std-Y
26. tBodyGyro-std-Z
27. tBodyGyroJerk-mean-X
28. tBodyGyroJerk-mean-Y
29. tBodyGyroJerk-mean-Z
30. tBodyGyroJerk-std-X
31. tBodyGyroJerk-std-Y
32. tBodyGyroJerk-std-Z
33. tBodyAccMag-mean
34. tBodyAccMag-std
35. tGravityAccMag-mean
36. tGravityAccMag-std
37. tBodyAccJerkMag-mean
38. tBodyAccJerkMag-std
39. tBodyGyroMag-mean
40. tBodyGyroMag-std
41. tBodyGyroJerkMag-mean
42. tBodyGyroJerkMag-std
43. fBodyAcc-mean-X
44. fBodyAcc-mean-Y
45. fBodyAcc-mean-Z
46. fBodyAcc-std-X
47. fBodyAcc-std-Y
48. fBodyAcc-std-Z
49. fBodyAccJerk-mean-X
50. fBodyAccJerk-mean-Y
51. fBodyAccJerk-mean-Z
52. fBodyAccJerk-std-X
53. fBodyAccJerk-std-Y
54. fBodyAccJerk-std-Z
55. fBodyGyro-mean-X
56. fBodyGyro-mean-Y
57. fBodyGyro-mean-Z
58. fBodyGyro-std-X
59. fBodyGyro-std-Y
60. fBodyGyro-std-Z
61. fBodyAccMag-mean
62. fBodyAccMag-std
63. fBodyBodyAccJerkMag-mean
64. fBodyBodyAccJerkMag-std
65. fBodyBodyGyroMag-mean
66. fBodyBodyGyroMag-std
67. fBodyBodyGyroJerkMag-mean
68. fBodyBodyGyroJerkMag-std
