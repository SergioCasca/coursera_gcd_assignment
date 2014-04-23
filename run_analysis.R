source('Scripts/read_data.R')

#1. Merges the training and the test sets to create one data set.

# get descriptive data
features <-  read_data('Datasets','features.txt')
features_names <- as.character(features[,2])

#load train data
x_train <- read_data('Datasets/train','X_train.txt')
names(x_train) <- features_names
y_train <- read_data('Datasets/train','y_train.txt')
names(y_train) <- 'label_idx'
subject_train <- read_data('Datasets/train','subject_train.txt')
names(subject_train) <- 'subjectIdx'

# col bind train dataset
train_dataset <- cbind(subject_train,x_train,y_train)

#load test data
x_test <- read_data('Datasets/test','X_test.txt')
names(x_test) <- features_names
y_test <- read_data('Datasets/test','y_test.txt')
names(y_test) <- 'label_idx'
subject_test <- read_data('Datasets/test','subject_test.txt')
names(subject_test) <- 'subjectIdx'

# col bind test dataset
test_dataset <- cbind(subject_test,x_test,y_test)

# create complete training and test datasets
dataset <- rbind(train_dataset,test_dataset)

# remove variables
rm(features,features_names,x_train,y_train,subject_train,train_dataset,x_test,y_test,subject_test,test_dataset)

## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

std_columns <- grep('std',names(dataset))
mean_columns <- grep('mean',names(dataset))

ds <- dataset[,c(1,std_columns,mean_columns,length(names(dataset)))]

# remove variables
rm(dataset,std_columns,mean_columns)

## 3.Uses descriptive activity names to name the activities in the data set
activity_labels <-  read_data('Datasets','activity_labels.txt')
names(activity_labels) <- c('label_idx','activity')


# merge activity descriptive labels with corresponding index 'activityIndex'
ds_with_labels <- merge(ds[,],activity_labels,by='label_idx')
# let go label_idx
ds_with_labels <- ds_with_labels[,-1]

# remove variables
rm(activity_labels)

## 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
last_measure <- length(names(ds_with_labels)) - 1
first_measure <- 2
tidy_dataset <- aggregate(ds_with_labels[,first_measure:last_measure],by=list(subjectIdx=ds_with_labels$subjectIdx,activity=ds_with_labels$activity),mean)

# remove variables
rm(ds_with_labels,first_measure,last_measure)

#save file
write.table(tidy_dataset,'Datasets/tidy_dataset.txt',sep='\t',col.names=TRUE,row.names=FALSE)

tidy_dataset