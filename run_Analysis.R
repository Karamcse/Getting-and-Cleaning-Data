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

colnames(xtest)<-features$V2
colnames(xtrain)<-features$V2
colnames(ytrain)<-c("ActivityId")
colnames(ytest)<-c("ActivityId")
colnames(subject_train)<-c("SubjectId")
colnames(subject_test)<-c("SubjectId")

#1) Merges the training and the test sets to create one data set.
master_train<-cbind(xtrain,ytrain,subject_train)
master_test<-cbind(xtest,ytest,subject_test)
master<-rbind(master_train,master_test)

#2) Extracts only the measurements on the mean and 
#standard deviation for each measurement. 
mean1<-apply(master,2,mean,na.rm=TRUE)
sd1<-apply(master,2,mean,na.rm=TRUE)
mean1
sd1
