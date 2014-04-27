getwd()
setwd("j:/Coursera/R/getting and cleaning assignement data/UCI HAR Dataset/")
activity_label<-read.table("activity_labels.txt")
activity_label
features<-read.table("features.txt")
features

subject_test<-read.table("./test/subject_test.txt")
xtest<-read.table("./test/X_test.txt")
ytest<-read.table("./test/y_test.txt")

subject_train<-read.table("./train/subject_train.txt")
xtrain<-read.table("./train/X_train.txt")
ytrain<-read.table("./train/y_train.txt")
