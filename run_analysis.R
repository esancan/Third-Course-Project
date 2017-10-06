
#1. Merges the training and the test sets to create one data set

subject_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

body_acc_x_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

test<-data.frame("subject_test"=subject_test[1:2947,],"X_test"=X_test[1:2947,], "y_test"=y_test[1:2947,],"body_acc_x_test"=body_acc_x_test[1:2947,],"body_acc_y_test"=body_acc_y_test[1:2947,],"body_acc_z_test"=body_acc_z_test[1:2947,],"body_gyro_x_test"=body_gyro_x_test[1:2947,],"body_gyro_y_test"=body_gyro_y_test[1:2947,],"body_gyro_z_test"=body_gyro_z_test[1:2947,], "total_acc_x_test"=total_acc_x_test[1:2947,], "total_acc_y_test"=total_acc_y_test[1:2947,], "total_acc_z_test"=total_acc_z_test[1:2947,])


subject_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")

body_acc_x_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train<-read.table("./course 3/project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

train<-data.frame("subject_train"=subject_train[1:7352,],"X_train"=X_train[1:7352,], "y_train"=y_train[1:7352,],"body_acc_x_train"=body_acc_x_train[1:7352,],"body_acc_y_train"=body_acc_y_train[1:7352,],"body_acc_z_train"=body_acc_z_train[1:7352,],"body_gyro_x_train"=body_gyro_x_train[1:7352,],"body_gyro_y_train"=body_gyro_y_train[1:7352,],"body_gyro_z_train"=body_gyro_z_train[1:7352,], "total_acc_x_train"=total_acc_x_train[1:7352,], "total_acc_y_train"=total_acc_y_train[1:7352,], "total_acc_z_train"=total_acc_z_train[1:7352,])

data_set<- merge(test,train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
mean<-apply(data_set, 2, mean)
sd<-apply(data_set, 2, mean)

# 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
second_data_set<- merge(mean,sd)
