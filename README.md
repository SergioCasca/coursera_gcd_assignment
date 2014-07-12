Getting and Cleaning Data, Coursera
===================================

2014-07-12  
Sérgio Casca,

Assignment
==========

In order to read the data I've created a read function. It reads the
first 30 rows to determine the dataset attribute types and afterwards
reads the whole dataset with the class types already attribued.

    source('Scripts/read_data.R')
    library(pander)
    library(plyr)

    read_data <- function(directory,filename,...){
        
        filepath <- paste(directory,filename,sep="/")

        temp_ds <- read.table(filepath,nrows = 30)
        classes <- lapply(temp_ds,class)
        
        ds <- read.table(filepath,colClasses=classes,...)
        
        ds
    }

1. Merges the training and the test sets to create one data set.
----------------------------------------------------------------

The first thing I've did was to gather the attributes descriptions.
Since the data is all 'character' type, my read\_data function always
add a column with numeric indexes. So, I'm interested in the second
column, with the descriptions. The read\_data function also attributes
'factor' type to the descriptions so in order to later used them as
attributes names I had to cast them to character. (Yes, I could have
forced it during the read function)

    # get attributes description data
    features <-  read_data('Datasets','features.txt')
    features_names <- as.character(features[,2])

Then I've loaded the train datasets

    #load train data
    x_train <- read_data('Datasets/train','X_train.txt')
    y_train <- read_data('Datasets/train','y_train.txt')
    subject_train <- read_data('Datasets/train','subject_train.txt')

And I've changed the data.frames column names by assigning the features
descriptions to the x\_train.txt dataset, and personal names to the
activity indexes and subject indexes datasets.

    # Adjust column names
    names(x_train) <- features_names
    names(y_train) <- 'label_idx'
    names(subject_train) <- 'subjectIdx'

Finally I've binded them all, by column, to a single dataset.

    # col bind train dataset
    train_dataset <- cbind(subject_train,x_train,y_train)

Afterwards, I've done the same procedure to the test datasets.

    #load test data
    x_test <- read_data('Datasets/test','X_test.txt')
    y_test <- read_data('Datasets/test','y_test.txt')
    subject_test <- read_data('Datasets/test','subject_test.txt')

    # Adjust column names
    names(x_test) <- features_names
    names(y_test) <- 'label_idx'
    names(subject_test) <- 'subjectIdx'

    # col bind test dataset
    test_dataset <- cbind(subject_test,x_test,y_test)

And finally, I've binded by row both datasets.

    # create complete training and test datasets
    dataset <- rbind(train_dataset,test_dataset)

    # remove variables
    rm(features,features_names,x_train,y_train,subject_train,train_dataset,x_test,y_test,subject_test,test_dataset)

And the original dataset

    str(dataset)

    ## 'data.frame':    10299 obs. of  563 variables:
    ##  $ subjectIdx                          : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ tBodyAcc-mean()-X                   : num  0.289 0.278 0.28 0.279 0.277 ...
    ##  $ tBodyAcc-mean()-Y                   : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
    ##  $ tBodyAcc-mean()-Z                   : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
    ##  $ tBodyAcc-std()-X                    : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
    ##  $ tBodyAcc-std()-Y                    : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
    ##  $ tBodyAcc-std()-Z                    : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
    ##  $ tBodyAcc-mad()-X                    : num  -0.995 -0.999 -0.997 -0.997 -0.998 ...
    ##  $ tBodyAcc-mad()-Y                    : num  -0.983 -0.975 -0.964 -0.983 -0.98 ...
    ##  $ tBodyAcc-mad()-Z                    : num  -0.924 -0.958 -0.977 -0.989 -0.99 ...
    ##  $ tBodyAcc-max()-X                    : num  -0.935 -0.943 -0.939 -0.939 -0.942 ...
    ##  $ tBodyAcc-max()-Y                    : num  -0.567 -0.558 -0.558 -0.576 -0.569 ...
    ##  $ tBodyAcc-max()-Z                    : num  -0.744 -0.818 -0.818 -0.83 -0.825 ...
    ##  $ tBodyAcc-min()-X                    : num  0.853 0.849 0.844 0.844 0.849 ...
    ##  $ tBodyAcc-min()-Y                    : num  0.686 0.686 0.682 0.682 0.683 ...
    ##  $ tBodyAcc-min()-Z                    : num  0.814 0.823 0.839 0.838 0.838 ...
    ##  $ tBodyAcc-sma()                      : num  -0.966 -0.982 -0.983 -0.986 -0.993 ...
    ##  $ tBodyAcc-energy()-X                 : num  -1 -1 -1 -1 -1 ...
    ##  $ tBodyAcc-energy()-Y                 : num  -1 -1 -1 -1 -1 ...
    ##  $ tBodyAcc-energy()-Z                 : num  -0.995 -0.998 -0.999 -1 -1 ...
    ##  $ tBodyAcc-iqr()-X                    : num  -0.994 -0.999 -0.997 -0.997 -0.998 ...
    ##  $ tBodyAcc-iqr()-Y                    : num  -0.988 -0.978 -0.965 -0.984 -0.981 ...
    ##  $ tBodyAcc-iqr()-Z                    : num  -0.943 -0.948 -0.975 -0.986 -0.991 ...
    ##  $ tBodyAcc-entropy()-X                : num  -0.408 -0.715 -0.592 -0.627 -0.787 ...
    ##  $ tBodyAcc-entropy()-Y                : num  -0.679 -0.501 -0.486 -0.851 -0.559 ...
    ##  $ tBodyAcc-entropy()-Z                : num  -0.602 -0.571 -0.571 -0.912 -0.761 ...
    ##  $ tBodyAcc-arCoeff()-X,1              : num  0.9293 0.6116 0.273 0.0614 0.3133 ...
    ##  $ tBodyAcc-arCoeff()-X,2              : num  -0.853 -0.3295 -0.0863 0.0748 -0.1312 ...
    ##  $ tBodyAcc-arCoeff()-X,3              : num  0.36 0.284 0.337 0.198 0.191 ...
    ##  $ tBodyAcc-arCoeff()-X,4              : num  -0.0585 0.2846 -0.1647 -0.2643 0.0869 ...
    ##  $ tBodyAcc-arCoeff()-Y,1              : num  0.2569 0.1157 0.0172 0.0725 0.2576 ...
    ##  $ tBodyAcc-arCoeff()-Y,2              : num  -0.2248 -0.091 -0.0745 -0.1553 -0.2725 ...
    ##  $ tBodyAcc-arCoeff()-Y,3              : num  0.264 0.294 0.342 0.323 0.435 ...
    ##  $ tBodyAcc-arCoeff()-Y,4              : num  -0.0952 -0.2812 -0.3326 -0.1708 -0.3154 ...
    ##  $ tBodyAcc-arCoeff()-Z,1              : num  0.279 0.086 0.239 0.295 0.44 ...
    ##  $ tBodyAcc-arCoeff()-Z,2              : num  -0.4651 -0.0222 -0.1362 -0.3061 -0.2691 ...
    ##  $ tBodyAcc-arCoeff()-Z,3              : num  0.4919 -0.0167 0.1739 0.4821 0.1794 ...
    ##  $ tBodyAcc-arCoeff()-Z,4              : num  -0.191 -0.221 -0.299 -0.47 -0.089 ...
    ##  $ tBodyAcc-correlation()-X,Y          : num  0.3763 -0.0134 -0.1247 -0.3057 -0.1558 ...
    ##  $ tBodyAcc-correlation()-X,Z          : num  0.4351 -0.0727 -0.1811 -0.3627 -0.1898 ...
    ##  $ tBodyAcc-correlation()-Y,Z          : num  0.661 0.579 0.609 0.507 0.599 ...
    ##  $ tGravityAcc-mean()-X                : num  0.963 0.967 0.967 0.968 0.968 ...
    ##  $ tGravityAcc-mean()-Y                : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
    ##  $ tGravityAcc-mean()-Z                : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
    ##  $ tGravityAcc-std()-X                 : num  -0.985 -0.997 -1 -0.997 -0.998 ...
    ##  $ tGravityAcc-std()-Y                 : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
    ##  $ tGravityAcc-std()-Z                 : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
    ##  $ tGravityAcc-mad()-X                 : num  -0.985 -0.998 -1 -0.996 -0.998 ...
    ##  $ tGravityAcc-mad()-Y                 : num  -0.984 -0.99 -0.993 -0.981 -0.989 ...
    ##  $ tGravityAcc-mad()-Z                 : num  -0.895 -0.933 -0.993 -0.978 -0.979 ...
    ##  $ tGravityAcc-max()-X                 : num  0.892 0.892 0.892 0.894 0.894 ...
    ##  $ tGravityAcc-max()-Y                 : num  -0.161 -0.161 -0.164 -0.164 -0.167 ...
    ##  $ tGravityAcc-max()-Z                 : num  0.1247 0.1226 0.0946 0.0934 0.0917 ...
    ##  $ tGravityAcc-min()-X                 : num  0.977 0.985 0.987 0.987 0.987 ...
    ##  $ tGravityAcc-min()-Y                 : num  -0.123 -0.115 -0.115 -0.121 -0.122 ...
    ##  $ tGravityAcc-min()-Z                 : num  0.0565 0.1028 0.1028 0.0958 0.0941 ...
    ##  $ tGravityAcc-sma()                   : num  -0.375 -0.383 -0.402 -0.4 -0.4 ...
    ##  $ tGravityAcc-energy()-X              : num  0.899 0.908 0.909 0.911 0.912 ...
    ##  $ tGravityAcc-energy()-Y              : num  -0.971 -0.971 -0.97 -0.969 -0.967 ...
    ##  $ tGravityAcc-energy()-Z              : num  -0.976 -0.979 -0.982 -0.982 -0.984 ...
    ##  $ tGravityAcc-iqr()-X                 : num  -0.984 -0.999 -1 -0.996 -0.998 ...
    ##  $ tGravityAcc-iqr()-Y                 : num  -0.989 -0.99 -0.992 -0.981 -0.991 ...
    ##  $ tGravityAcc-iqr()-Z                 : num  -0.918 -0.942 -0.993 -0.98 -0.98 ...
    ##  $ tGravityAcc-entropy()-X             : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
    ##  $ tGravityAcc-entropy()-Y             : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
    ##  $ tGravityAcc-entropy()-Z             : num  0.114 -0.21 -0.927 -0.596 -0.617 ...
    ##  $ tGravityAcc-arCoeff()-X,1           : num  -0.59042 -0.41006 0.00223 -0.06493 -0.25727 ...
    ##  $ tGravityAcc-arCoeff()-X,2           : num  0.5911 0.4139 0.0275 0.0754 0.2689 ...
    ##  $ tGravityAcc-arCoeff()-X,3           : num  -0.5918 -0.4176 -0.0567 -0.0858 -0.2807 ...
    ##  $ tGravityAcc-arCoeff()-X,4           : num  0.5925 0.4213 0.0855 0.0962 0.2926 ...
    ##  $ tGravityAcc-arCoeff()-Y,1           : num  -0.745 -0.196 -0.329 -0.295 -0.167 ...
    ##  $ tGravityAcc-arCoeff()-Y,2           : num  0.7209 0.1253 0.2705 0.2283 0.0899 ...
    ##  $ tGravityAcc-arCoeff()-Y,3           : num  -0.7124 -0.1056 -0.2545 -0.2063 -0.0663 ...
    ##  $ tGravityAcc-arCoeff()-Y,4           : num  0.7113 0.1091 0.2576 0.2048 0.0671 ...
    ##  $ tGravityAcc-arCoeff()-Z,1           : num  -0.995 -0.834 -0.705 -0.385 -0.237 ...
    ##  $ tGravityAcc-arCoeff()-Z,2           : num  0.996 0.834 0.714 0.386 0.239 ...
    ##  $ tGravityAcc-arCoeff()-Z,3           : num  -0.996 -0.834 -0.723 -0.387 -0.241 ...
    ##  $ tGravityAcc-arCoeff()-Z,4           : num  0.992 0.83 0.729 0.385 0.241 ...
    ##  $ tGravityAcc-correlation()-X,Y       : num  0.57 -0.831 -0.181 -0.991 -0.408 ...
    ##  $ tGravityAcc-correlation()-X,Z       : num  0.439 -0.866 0.338 -0.969 -0.185 ...
    ##  $ tGravityAcc-correlation()-Y,Z       : num  0.987 0.974 0.643 0.984 0.965 ...
    ##  $ tBodyAccJerk-mean()-X               : num  0.078 0.074 0.0736 0.0773 0.0734 ...
    ##  $ tBodyAccJerk-mean()-Y               : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
    ##  $ tBodyAccJerk-mean()-Z               : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
    ##  $ tBodyAccJerk-std()-X                : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
    ##  $ tBodyAccJerk-std()-Y                : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
    ##  $ tBodyAccJerk-std()-Z                : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
    ##  $ tBodyAccJerk-mad()-X                : num  -0.994 -0.996 -0.991 -0.994 -0.997 ...
    ##  $ tBodyAccJerk-mad()-Y                : num  -0.986 -0.979 -0.979 -0.986 -0.987 ...
    ##  $ tBodyAccJerk-mad()-Z                : num  -0.993 -0.991 -0.987 -0.991 -0.991 ...
    ##  $ tBodyAccJerk-max()-X                : num  -0.985 -0.995 -0.987 -0.987 -0.997 ...
    ##  $ tBodyAccJerk-max()-Y                : num  -0.992 -0.979 -0.979 -0.992 -0.992 ...
    ##  $ tBodyAccJerk-max()-Z                : num  -0.993 -0.992 -0.992 -0.99 -0.99 ...
    ##  $ tBodyAccJerk-min()-X                : num  0.99 0.993 0.988 0.988 0.994 ...
    ##  $ tBodyAccJerk-min()-Y                : num  0.992 0.992 0.992 0.993 0.993 ...
    ##  $ tBodyAccJerk-min()-Z                : num  0.991 0.989 0.989 0.993 0.986 ...
    ##  $ tBodyAccJerk-sma()                  : num  -0.994 -0.991 -0.988 -0.993 -0.994 ...
    ##  $ tBodyAccJerk-energy()-X             : num  -1 -1 -1 -1 -1 ...
    ##  $ tBodyAccJerk-energy()-Y             : num  -1 -1 -1 -1 -1 ...
    ##   [list output truncated]

And the last attribute is the label index (I've subseted the last 4
columns)

    # last index
    last_columns_index <- length(names(dataset))

    str(dataset[,(last_columns_index-4):last_columns_index])

    ## 'data.frame':    10299 obs. of  5 variables:
    ##  $ angle(tBodyGyroJerkMean,gravityMean): num  -0.0184 0.7035 0.8085 -0.4854 -0.616 ...
    ##  $ angle(X,gravityMean)                : num  -0.841 -0.845 -0.849 -0.849 -0.848 ...
    ##  $ angle(Y,gravityMean)                : num  0.18 0.18 0.181 0.182 0.185 ...
    ##  $ angle(Z,gravityMean)                : num  -0.0586 -0.0543 -0.0491 -0.0477 -0.0439 ...
    ##  $ label_idx                           : int  5 5 5 5 5 5 5 5 5 5 ...

2.Extracts only the measurements on the mean and standard deviation for each measurement.
-----------------------------------------------------------------------------------------

In this step I've just selected the column index where the 'std()' and
'mean()' were substrings of the attributes' names. After gathering the
indexes, I've just subset the dataset by the gathered column indexes,
the first column which was my Subject Index attribue and the last column
wich was my ACtivity Index attribute. By choosing **fixed=TRUE** in
**grep** I've leaved out the 'meanFreq()' substrings.

    # gather indexes of desired attributes
    std_columns <- grep("std()",names(dataset),fixed=TRUE)
    mean_columns <- grep("mean()",names(dataset),fixed=TRUE)

    # subset original dataset
    ds <- dataset[,c(1,std_columns,mean_columns,length(names(dataset)))]

    # remove variables
    rm(dataset,std_columns,mean_columns)

And the subset dataset

    str(ds)

    ## 'data.frame':    10299 obs. of  68 variables:
    ##  $ subjectIdx                 : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ tBodyAcc-std()-X           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
    ##  $ tBodyAcc-std()-Y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
    ##  $ tBodyAcc-std()-Z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
    ##  $ tGravityAcc-std()-X        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
    ##  $ tGravityAcc-std()-Y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
    ##  $ tGravityAcc-std()-Z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
    ##  $ tBodyAccJerk-std()-X       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
    ##  $ tBodyAccJerk-std()-Y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
    ##  $ tBodyAccJerk-std()-Z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
    ##  $ tBodyGyro-std()-X          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
    ##  $ tBodyGyro-std()-Y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
    ##  $ tBodyGyro-std()-Z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
    ##  $ tBodyGyroJerk-std()-X      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
    ##  $ tBodyGyroJerk-std()-Y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
    ##  $ tBodyGyroJerk-std()-Z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
    ##  $ tBodyAccMag-std()          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
    ##  $ tGravityAccMag-std()       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
    ##  $ tBodyAccJerkMag-std()      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
    ##  $ tBodyGyroMag-std()         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
    ##  $ tBodyGyroJerkMag-std()     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
    ##  $ fBodyAcc-std()-X           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
    ##  $ fBodyAcc-std()-Y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
    ##  $ fBodyAcc-std()-Z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
    ##  $ fBodyAccJerk-std()-X       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
    ##  $ fBodyAccJerk-std()-Y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
    ##  $ fBodyAccJerk-std()-Z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
    ##  $ fBodyGyro-std()-X          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
    ##  $ fBodyGyro-std()-Y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
    ##  $ fBodyGyro-std()-Z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
    ##  $ fBodyAccMag-std()          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
    ##  $ fBodyBodyAccJerkMag-std()  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
    ##  $ fBodyBodyGyroMag-std()     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
    ##  $ fBodyBodyGyroJerkMag-std() : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
    ##  $ tBodyAcc-mean()-X          : num  0.289 0.278 0.28 0.279 0.277 ...
    ##  $ tBodyAcc-mean()-Y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
    ##  $ tBodyAcc-mean()-Z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
    ##  $ tGravityAcc-mean()-X       : num  0.963 0.967 0.967 0.968 0.968 ...
    ##  $ tGravityAcc-mean()-Y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
    ##  $ tGravityAcc-mean()-Z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
    ##  $ tBodyAccJerk-mean()-X      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
    ##  $ tBodyAccJerk-mean()-Y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
    ##  $ tBodyAccJerk-mean()-Z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
    ##  $ tBodyGyro-mean()-X         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
    ##  $ tBodyGyro-mean()-Y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
    ##  $ tBodyGyro-mean()-Z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
    ##  $ tBodyGyroJerk-mean()-X     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
    ##  $ tBodyGyroJerk-mean()-Y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
    ##  $ tBodyGyroJerk-mean()-Z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
    ##  $ tBodyAccMag-mean()         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
    ##  $ tGravityAccMag-mean()      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
    ##  $ tBodyAccJerkMag-mean()     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
    ##  $ tBodyGyroMag-mean()        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
    ##  $ tBodyGyroJerkMag-mean()    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
    ##  $ fBodyAcc-mean()-X          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
    ##  $ fBodyAcc-mean()-Y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
    ##  $ fBodyAcc-mean()-Z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
    ##  $ fBodyAccJerk-mean()-X      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
    ##  $ fBodyAccJerk-mean()-Y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
    ##  $ fBodyAccJerk-mean()-Z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
    ##  $ fBodyGyro-mean()-X         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
    ##  $ fBodyGyro-mean()-Y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
    ##  $ fBodyGyro-mean()-Z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
    ##  $ fBodyAccMag-mean()         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
    ##  $ fBodyBodyAccJerkMag-mean() : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
    ##  $ fBodyBodyGyroMag-mean()    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
    ##  $ fBodyBodyGyroJerkMag-mean(): num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
    ##  $ label_idx                  : int  5 5 5 5 5 5 5 5 5 5 ...

3. Uses descriptive activity names to name the activities in the data set
-------------------------------------------------------------------------

I've read the activity labels dataset and renamed the columns names. The
activity index column I've nammed the same as the in the original
dataset in order to ease the merge operation.

    activity_labels <-  read_data('Datasets','activity_labels.txt')
    names(activity_labels) <- c('label_idx','activity')

Merged the original dataset with the activities descriptions dataset are
removed the acitivy indexes column. Since the merge operation was by the
activity index, this attribute will be the first column on the merged
dataset.

    # merge activity descriptive labels with corresponding index 'activityIndex'
    ds_with_labels <- merge(ds[,],activity_labels,by='label_idx')
    # let go label_idx
    ds_with_labels <- ds_with_labels[,-1]

    # remove variables
    rm(ds,activity_labels)

resulting in

    str(ds_with_labels)

    ## 'data.frame':    10299 obs. of  68 variables:
    ##  $ subjectIdx                 : int  7 5 6 23 7 7 11 6 10 11 ...
    ##  $ tBodyAcc-std()-X           : num  -0.38 -0.201 -0.337 -0.384 -0.356 ...
    ##  $ tBodyAcc-std()-Y           : num  -0.191 0.133 0.146 -0.204 -0.166 ...
    ##  $ tBodyAcc-std()-Z           : num  0.341 -0.318 -0.446 0.148 0.407 ...
    ##  $ tGravityAcc-std()-X        : num  -0.953 -0.984 -0.965 -0.981 -0.98 ...
    ##  $ tGravityAcc-std()-Y        : num  -0.937 -0.953 -0.939 -0.973 -0.961 ...
    ##  $ tGravityAcc-std()-Z        : num  -0.921 -0.99 -0.946 -0.966 -0.941 ...
    ##  $ tBodyAccJerk-std()-X       : num  -0.472 -0.197 -0.159 -0.333 -0.453 ...
    ##  $ tBodyAccJerk-std()-Y       : num  -0.1607 -0.0446 0.0551 -0.2088 -0.1215 ...
    ##  $ tBodyAccJerk-std()-Z       : num  -0.06331 -0.44016 -0.47746 -0.05011 -0.00443 ...
    ##  $ tBodyGyro-std()-X          : num  -0.512 -0.448 -0.407 -0.501 -0.536 ...
    ##  $ tBodyGyro-std()-Y          : num  -0.254 -0.394 -0.208 0.178 -0.239 ...
    ##  $ tBodyGyro-std()-Z          : num  -0.404 -0.311 -0.288 -0.305 -0.362 ...
    ##  $ tBodyGyroJerk-std()-X      : num  -0.228 -0.3 -0.148 -0.411 -0.235 ...
    ##  $ tBodyGyroJerk-std()-Y      : num  -0.293 -0.454 -0.211 0.173 -0.279 ...
    ##  $ tBodyGyroJerk-std()-Z      : num  -0.56075 -0.09672 -0.00331 -0.44637 -0.55917 ...
    ##  $ tBodyAccMag-std()          : num  -0.219 -0.318 -0.331 -0.25 -0.193 ...
    ##  $ tGravityAccMag-std()       : num  -0.219 -0.318 -0.331 -0.25 -0.193 ...
    ##  $ tBodyAccJerkMag-std()      : num  -0.0879 -0.1895 -0.1146 -0.0714 -0.0674 ...
    ##  $ tBodyGyroMag-std()         : num  -0.359 -0.457 -0.169 0.095 -0.26 ...
    ##  $ tBodyGyroJerkMag-std()     : num  -0.26 -0.432 -0.175 0.135 -0.255 ...
    ##  $ fBodyAcc-std()-X           : num  -0.363 -0.21 -0.384 -0.403 -0.347 ...
    ##  $ fBodyAcc-std()-Y           : num  -0.2983 0.0866 0.0919 -0.272 -0.2047 ...
    ##  $ fBodyAcc-std()-Z           : num  0.319 -0.385 -0.52 0.104 0.41 ...
    ##  $ fBodyAccJerk-std()-X       : num  -0.5 -0.269 -0.219 -0.372 -0.489 ...
    ##  $ fBodyAccJerk-std()-Y       : num  -0.18651 -0.00372 0.12855 -0.18274 -0.09159 ...
    ##  $ fBodyAccJerk-std()-Z       : num  -0.1381 -0.4783 -0.5398 -0.0346 -0.011 ...
    ##  $ fBodyGyro-std()-X          : num  -0.574 -0.491 -0.487 -0.544 -0.598 ...
    ##  $ fBodyGyro-std()-Y          : num  -0.294 -0.387 -0.229 0.201 -0.239 ...
    ##  $ fBodyGyro-std()-Z          : num  -0.445 -0.433 -0.441 -0.373 -0.393 ...
    ##  $ fBodyAccMag-std()          : num  -0.338 -0.505 -0.512 -0.44 -0.333 ...
    ##  $ fBodyBodyAccJerkMag-std()  : num  -0.0685 -0.2309 -0.139 -0.0728 -0.0562 ...
    ##  $ fBodyBodyGyroMag-std()     : num  -0.474 -0.589 -0.331 -0.192 -0.394 ...
    ##  $ fBodyBodyGyroJerkMag-std() : num  -0.269 -0.382 -0.158 0.149 -0.256 ...
    ##  $ tBodyAcc-mean()-X          : num  0.302 0.343 0.27 0.268 0.314 ...
    ##  $ tBodyAcc-mean()-Y          : num  -0.02688 -0.00343 0.01091 -0.01273 -0.0087 ...
    ##  $ tBodyAcc-mean()-Z          : num  -0.0958 -0.1015 -0.0749 -0.0937 -0.1246 ...
    ##  $ tGravityAcc-mean()-X       : num  0.902 0.965 0.96 0.944 0.892 ...
    ##  $ tGravityAcc-mean()-Y       : num  -0.137 -0.145 -0.214 -0.159 -0.147 ...
    ##  $ tGravityAcc-mean()-Z       : num  -0.3428 0.0285 0.0505 -0.1425 -0.3414 ...
    ##  $ tBodyAccJerk-mean()-X      : num  0.1505 -0.1351 0.1262 -0.0358 -0.2256 ...
    ##  $ tBodyAccJerk-mean()-Y      : num  -0.2391 -0.0637 0.2083 -0.0136 -0.0699 ...
    ##  $ tBodyAccJerk-mean()-Z      : num  -0.1533 -0.2631 0.0773 0.2511 -0.0937 ...
    ##  $ tBodyGyro-mean()-X         : num  0.2139 -0.0277 -0.0484 -0.0117 0.0334 ...
    ##  $ tBodyGyro-mean()-Y         : num  -0.049 -0.1253 -0.1036 -0.0135 -0.0969 ...
    ##  $ tBodyGyro-mean()-Z         : num  -0.24527 0.12289 0.08692 0.15683 -0.00968 ...
    ##  $ tBodyGyroJerk-mean()-X     : num  -0.0634 0.0756 0.047 -0.1203 -0.203 ...
    ##  $ tBodyGyroJerk-mean()-Y     : num  0.03158 -0.05686 -0.09651 -0.00423 -0.16378 ...
    ##  $ tBodyGyroJerk-mean()-Z     : num  -0.0112 0.14377 0.00215 -0.18785 0.05743 ...
    ##  $ tBodyAccMag-mean()         : num  -0.0919 -0.0604 -0.1786 -0.1654 -0.0508 ...
    ##  $ tGravityAccMag-mean()      : num  -0.0919 -0.0604 -0.1786 -0.1654 -0.0508 ...
    ##  $ tBodyAccJerkMag-mean()     : num  -0.221 -0.177 -0.154 -0.165 -0.167 ...
    ##  $ tBodyGyroMag-mean()        : num  -0.2319 -0.2911 -0.2321 -0.0934 -0.3111 ...
    ##  $ tBodyGyroJerkMag-mean()    : num  -0.3526 -0.3462 -0.1846 -0.0862 -0.3425 ...
    ##  $ fBodyAcc-mean()-X          : num  -0.426 -0.18 -0.229 -0.337 -0.377 ...
    ##  $ fBodyAcc-mean()-Y          : num  -0.0972 0.0852 0.1118 -0.1718 -0.1915 ...
    ##  $ fBodyAcc-mean()-Z          : num  0.1846 -0.3 -0.4013 0.0634 0.1929 ...
    ##  $ fBodyAccJerk-mean()-X      : num  -0.49 -0.2 -0.174 -0.353 -0.466 ...
    ##  $ fBodyAccJerk-mean()-Y      : num  -0.189 -0.1399 -0.0781 -0.2802 -0.2017 ...
    ##  $ fBodyAccJerk-mean()-Z      : num  0.0147 -0.39925 -0.41452 -0.06667 0.00383 ...
    ##  $ fBodyGyro-mean()-X         : num  -0.321 -0.311 -0.164 -0.368 -0.347 ...
    ##  $ fBodyGyro-mean()-Y         : num  -0.201 -0.414 -0.185 0.127 -0.248 ...
    ##  $ fBodyGyro-mean()-Z         : num  -0.4485 -0.157 -0.0698 -0.2908 -0.4522 ...
    ##  $ fBodyAccMag-mean()         : num  -0.224 -0.196 -0.213 -0.135 -0.168 ...
    ##  $ fBodyBodyAccJerkMag-mean() : num  -0.1081 -0.1625 -0.0958 -0.0753 -0.081 ...
    ##  $ fBodyBodyGyroMag-mean()    : num  -0.356 -0.414 -0.149 0.202 -0.255 ...
    ##  $ fBodyBodyGyroJerkMag-mean(): num  -0.2935 -0.5085 -0.2354 0.0615 -0.2945 ...
    ##  $ activity                   : Factor w/ 6 levels "LAYING","SITTING",..: 4 4 4 4 4 4 4 4 4 4 ...

4. Appropriately labels the data set with descriptive activity names.
---------------------------------------------------------------------

I've split this step into two. First to lower the case of the labels and
second to remove the scores and the parenthesis from the labels.

    #lower cases
    names(ds_with_labels) <- tolower(names(ds_with_labels))

    # define appropriate labels by removing scores and parenthesis
    remove_scores_and_parenthesis <- function(x) {y <- sub('\\(\\)','',x); gsub('-','',y)}

    names(ds_with_labels) <- remove_scores_and_parenthesis(names(ds_with_labels))

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
--------------------------------------------------------------------------------------------------------------------

In this step, I've just aggregate the data, by the two desired factors,
Subject index and Activity, and apply the mean function to all the
remaining columns (std and mean attributes).

    tidy_dataset <- ddply(ds_with_labels,.(subjectidx,activity),numcolwise(mean,na.rm=TRUE))

    # remove variables
    rm(ds_with_labels)

Save the data to a text file

    #save file
    write.table(tidy_dataset,'Datasets/tidy_dataset.txt',sep='\t',col.names=TRUE,row.names=FALSE)

And finally, return the dataset.

    # tidy_dataset
    str(tidy_dataset)

    ## 'data.frame':    180 obs. of  68 variables:
    ##  $ subjectidx              : int  1 1 1 1 1 1 2 2 2 2 ...
    ##  $ activity                : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
    ##  $ tbodyaccstdx            : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
    ##  $ tbodyaccstdy            : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
    ##  $ tbodyaccstdz            : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
    ##  $ tgravityaccstdx         : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
    ##  $ tgravityaccstdy         : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
    ##  $ tgravityaccstdz         : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
    ##  $ tbodyaccjerkstdx        : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
    ##  $ tbodyaccjerkstdy        : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
    ##  $ tbodyaccjerkstdz        : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
    ##  $ tbodygyrostdx           : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
    ##  $ tbodygyrostdy           : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
    ##  $ tbodygyrostdz           : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
    ##  $ tbodygyrojerkstdx       : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
    ##  $ tbodygyrojerkstdy       : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
    ##  $ tbodygyrojerkstdz       : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
    ##  $ tbodyaccmagstd          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
    ##  $ tgravityaccmagstd       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
    ##  $ tbodyaccjerkmagstd      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
    ##  $ tbodygyromagstd         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
    ##  $ tbodygyrojerkmagstd     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
    ##  $ fbodyaccstdx            : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
    ##  $ fbodyaccstdy            : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
    ##  $ fbodyaccstdz            : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
    ##  $ fbodyaccjerkstdx        : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
    ##  $ fbodyaccjerkstdy        : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
    ##  $ fbodyaccjerkstdz        : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
    ##  $ fbodygyrostdx           : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
    ##  $ fbodygyrostdy           : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
    ##  $ fbodygyrostdz           : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
    ##  $ fbodyaccmagstd          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
    ##  $ fbodybodyaccjerkmagstd  : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
    ##  $ fbodybodygyromagstd     : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
    ##  $ fbodybodygyrojerkmagstd : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
    ##  $ tbodyaccmeanx           : num  0.222 0.261 0.279 0.277 0.289 ...
    ##  $ tbodyaccmeany           : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
    ##  $ tbodyaccmeanz           : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
    ##  $ tgravityaccmeanx        : num  -0.249 0.832 0.943 0.935 0.932 ...
    ##  $ tgravityaccmeany        : num  0.706 0.204 -0.273 -0.282 -0.267 ...
    ##  $ tgravityaccmeanz        : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
    ##  $ tbodyaccjerkmeanx       : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
    ##  $ tbodyaccjerkmeany       : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
    ##  $ tbodyaccjerkmeanz       : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
    ##  $ tbodygyromeanx          : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
    ##  $ tbodygyromeany          : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
    ##  $ tbodygyromeanz          : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
    ##  $ tbodygyrojerkmeanx      : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
    ##  $ tbodygyrojerkmeany      : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
    ##  $ tbodygyrojerkmeanz      : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
    ##  $ tbodyaccmagmean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
    ##  $ tgravityaccmagmean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
    ##  $ tbodyaccjerkmagmean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
    ##  $ tbodygyromagmean        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
    ##  $ tbodygyrojerkmagmean    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
    ##  $ fbodyaccmeanx           : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
    ##  $ fbodyaccmeany           : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
    ##  $ fbodyaccmeanz           : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
    ##  $ fbodyaccjerkmeanx       : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
    ##  $ fbodyaccjerkmeany       : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
    ##  $ fbodyaccjerkmeanz       : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
    ##  $ fbodygyromeanx          : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
    ##  $ fbodygyromeany          : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
    ##  $ fbodygyromeanz          : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
    ##  $ fbodyaccmagmean         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
    ##  $ fbodybodyaccjerkmagmean : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
    ##  $ fbodybodygyromagmean    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
    ##  $ fbodybodygyrojerkmagmean: num  -0.942 -0.99 -0.995 -0.319 -0.282 ...

CodeBook
========

2014-07-12  
R build 9200 Windows x86-64

The original dataset, "Human Activity Recognition Using Smartphones Data
Set" can be obtained here
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Raw Data
--------

<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Sat Jul 12 12:39:33 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 
Variables
</TH>  </TR>
  <TR> <TD align="right"> 
1
</TD> <TD> 
tBodyAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
2
</TD> <TD> 
tBodyAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
3
</TD> <TD> 
tBodyAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
4
</TD> <TD> 
tBodyAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
5
</TD> <TD> 
tBodyAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
6
</TD> <TD> 
tBodyAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
7
</TD> <TD> 
tBodyAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
8
</TD> <TD> 
tBodyAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
9
</TD> <TD> 
tBodyAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
10
</TD> <TD> 
tBodyAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
11
</TD> <TD> 
tBodyAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
12
</TD> <TD> 
tBodyAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
13
</TD> <TD> 
tBodyAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
14
</TD> <TD> 
tBodyAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
15
</TD> <TD> 
tBodyAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
16
</TD> <TD> 
tBodyAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
17
</TD> <TD> 
tBodyAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
18
</TD> <TD> 
tBodyAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
19
</TD> <TD> 
tBodyAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
20
</TD> <TD> 
tBodyAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
21
</TD> <TD> 
tBodyAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
22
</TD> <TD> 
tBodyAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
23
</TD> <TD> 
tBodyAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
24
</TD> <TD> 
tBodyAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
25
</TD> <TD> 
tBodyAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
26
</TD> <TD> 
tBodyAcc-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
27
</TD> <TD> 
tBodyAcc-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
28
</TD> <TD> 
tBodyAcc-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
29
</TD> <TD> 
tBodyAcc-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
30
</TD> <TD> 
tBodyAcc-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
31
</TD> <TD> 
tBodyAcc-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
32
</TD> <TD> 
tBodyAcc-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
33
</TD> <TD> 
tBodyAcc-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
34
</TD> <TD> 
tBodyAcc-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
35
</TD> <TD> 
tBodyAcc-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
36
</TD> <TD> 
tBodyAcc-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
37
</TD> <TD> 
tBodyAcc-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
38
</TD> <TD> 
tBodyAcc-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
39
</TD> <TD> 
tBodyAcc-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
40
</TD> <TD> 
tBodyAcc-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
41
</TD> <TD> 
tGravityAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
42
</TD> <TD> 
tGravityAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
43
</TD> <TD> 
tGravityAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
44
</TD> <TD> 
tGravityAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
45
</TD> <TD> 
tGravityAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
46
</TD> <TD> 
tGravityAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
47
</TD> <TD> 
tGravityAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
48
</TD> <TD> 
tGravityAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
49
</TD> <TD> 
tGravityAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
50
</TD> <TD> 
tGravityAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
51
</TD> <TD> 
tGravityAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
52
</TD> <TD> 
tGravityAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
53
</TD> <TD> 
tGravityAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
54
</TD> <TD> 
tGravityAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
55
</TD> <TD> 
tGravityAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
56
</TD> <TD> 
tGravityAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
57
</TD> <TD> 
tGravityAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
58
</TD> <TD> 
tGravityAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
59
</TD> <TD> 
tGravityAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
60
</TD> <TD> 
tGravityAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
61
</TD> <TD> 
tGravityAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
62
</TD> <TD> 
tGravityAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
63
</TD> <TD> 
tGravityAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
64
</TD> <TD> 
tGravityAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
65
</TD> <TD> 
tGravityAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
66
</TD> <TD> 
tGravityAcc-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
67
</TD> <TD> 
tGravityAcc-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
68
</TD> <TD> 
tGravityAcc-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
69
</TD> <TD> 
tGravityAcc-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
70
</TD> <TD> 
tGravityAcc-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
71
</TD> <TD> 
tGravityAcc-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
72
</TD> <TD> 
tGravityAcc-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
73
</TD> <TD> 
tGravityAcc-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
74
</TD> <TD> 
tGravityAcc-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
75
</TD> <TD> 
tGravityAcc-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
76
</TD> <TD> 
tGravityAcc-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
77
</TD> <TD> 
tGravityAcc-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
78
</TD> <TD> 
tGravityAcc-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
79
</TD> <TD> 
tGravityAcc-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
80
</TD> <TD> 
tGravityAcc-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
81
</TD> <TD> 
tBodyAccJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
82
</TD> <TD> 
tBodyAccJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
83
</TD> <TD> 
tBodyAccJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
84
</TD> <TD> 
tBodyAccJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
85
</TD> <TD> 
tBodyAccJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
86
</TD> <TD> 
tBodyAccJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
87
</TD> <TD> 
tBodyAccJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
88
</TD> <TD> 
tBodyAccJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
89
</TD> <TD> 
tBodyAccJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
90
</TD> <TD> 
tBodyAccJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
91
</TD> <TD> 
tBodyAccJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
92
</TD> <TD> 
tBodyAccJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
93
</TD> <TD> 
tBodyAccJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
94
</TD> <TD> 
tBodyAccJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
95
</TD> <TD> 
tBodyAccJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
96
</TD> <TD> 
tBodyAccJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
97
</TD> <TD> 
tBodyAccJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
98
</TD> <TD> 
tBodyAccJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
99
</TD> <TD> 
tBodyAccJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
100
</TD> <TD> 
tBodyAccJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
101
</TD> <TD> 
tBodyAccJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
102
</TD> <TD> 
tBodyAccJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
103
</TD> <TD> 
tBodyAccJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
104
</TD> <TD> 
tBodyAccJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
105
</TD> <TD> 
tBodyAccJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
106
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
107
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
108
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
109
</TD> <TD> 
tBodyAccJerk-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
110
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
111
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
112
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
113
</TD> <TD> 
tBodyAccJerk-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
114
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
115
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
116
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
117
</TD> <TD> 
tBodyAccJerk-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
118
</TD> <TD> 
tBodyAccJerk-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
119
</TD> <TD> 
tBodyAccJerk-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
120
</TD> <TD> 
tBodyAccJerk-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
121
</TD> <TD> 
tBodyGyro-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
122
</TD> <TD> 
tBodyGyro-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
123
</TD> <TD> 
tBodyGyro-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
124
</TD> <TD> 
tBodyGyro-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
125
</TD> <TD> 
tBodyGyro-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
126
</TD> <TD> 
tBodyGyro-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
127
</TD> <TD> 
tBodyGyro-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
128
</TD> <TD> 
tBodyGyro-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
129
</TD> <TD> 
tBodyGyro-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
130
</TD> <TD> 
tBodyGyro-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
131
</TD> <TD> 
tBodyGyro-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
132
</TD> <TD> 
tBodyGyro-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
133
</TD> <TD> 
tBodyGyro-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
134
</TD> <TD> 
tBodyGyro-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
135
</TD> <TD> 
tBodyGyro-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
136
</TD> <TD> 
tBodyGyro-sma()
</TD> </TR>
  <TR> <TD align="right"> 
137
</TD> <TD> 
tBodyGyro-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
138
</TD> <TD> 
tBodyGyro-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
139
</TD> <TD> 
tBodyGyro-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
140
</TD> <TD> 
tBodyGyro-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
141
</TD> <TD> 
tBodyGyro-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
142
</TD> <TD> 
tBodyGyro-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
143
</TD> <TD> 
tBodyGyro-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
144
</TD> <TD> 
tBodyGyro-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
145
</TD> <TD> 
tBodyGyro-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
146
</TD> <TD> 
tBodyGyro-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
147
</TD> <TD> 
tBodyGyro-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
148
</TD> <TD> 
tBodyGyro-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
149
</TD> <TD> 
tBodyGyro-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
150
</TD> <TD> 
tBodyGyro-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
151
</TD> <TD> 
tBodyGyro-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
152
</TD> <TD> 
tBodyGyro-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
153
</TD> <TD> 
tBodyGyro-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
154
</TD> <TD> 
tBodyGyro-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
155
</TD> <TD> 
tBodyGyro-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
156
</TD> <TD> 
tBodyGyro-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
157
</TD> <TD> 
tBodyGyro-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
158
</TD> <TD> 
tBodyGyro-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
159
</TD> <TD> 
tBodyGyro-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
160
</TD> <TD> 
tBodyGyro-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
161
</TD> <TD> 
tBodyGyroJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
162
</TD> <TD> 
tBodyGyroJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
163
</TD> <TD> 
tBodyGyroJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
164
</TD> <TD> 
tBodyGyroJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
165
</TD> <TD> 
tBodyGyroJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
166
</TD> <TD> 
tBodyGyroJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
167
</TD> <TD> 
tBodyGyroJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
168
</TD> <TD> 
tBodyGyroJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
169
</TD> <TD> 
tBodyGyroJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
170
</TD> <TD> 
tBodyGyroJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
171
</TD> <TD> 
tBodyGyroJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
172
</TD> <TD> 
tBodyGyroJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
173
</TD> <TD> 
tBodyGyroJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
174
</TD> <TD> 
tBodyGyroJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
175
</TD> <TD> 
tBodyGyroJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
176
</TD> <TD> 
tBodyGyroJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
177
</TD> <TD> 
tBodyGyroJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
178
</TD> <TD> 
tBodyGyroJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
179
</TD> <TD> 
tBodyGyroJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
180
</TD> <TD> 
tBodyGyroJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
181
</TD> <TD> 
tBodyGyroJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
182
</TD> <TD> 
tBodyGyroJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
183
</TD> <TD> 
tBodyGyroJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
184
</TD> <TD> 
tBodyGyroJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
185
</TD> <TD> 
tBodyGyroJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
186
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,1
</TD> </TR>
  <TR> <TD align="right"> 
187
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,2
</TD> </TR>
  <TR> <TD align="right"> 
188
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,3
</TD> </TR>
  <TR> <TD align="right"> 
189
</TD> <TD> 
tBodyGyroJerk-arCoeff()-X,4
</TD> </TR>
  <TR> <TD align="right"> 
190
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,1
</TD> </TR>
  <TR> <TD align="right"> 
191
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,2
</TD> </TR>
  <TR> <TD align="right"> 
192
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,3
</TD> </TR>
  <TR> <TD align="right"> 
193
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Y,4
</TD> </TR>
  <TR> <TD align="right"> 
194
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,1
</TD> </TR>
  <TR> <TD align="right"> 
195
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,2
</TD> </TR>
  <TR> <TD align="right"> 
196
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,3
</TD> </TR>
  <TR> <TD align="right"> 
197
</TD> <TD> 
tBodyGyroJerk-arCoeff()-Z,4
</TD> </TR>
  <TR> <TD align="right"> 
198
</TD> <TD> 
tBodyGyroJerk-correlation()-X,Y
</TD> </TR>
  <TR> <TD align="right"> 
199
</TD> <TD> 
tBodyGyroJerk-correlation()-X,Z
</TD> </TR>
  <TR> <TD align="right"> 
200
</TD> <TD> 
tBodyGyroJerk-correlation()-Y,Z
</TD> </TR>
  <TR> <TD align="right"> 
201
</TD> <TD> 
tBodyAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
202
</TD> <TD> 
tBodyAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
203
</TD> <TD> 
tBodyAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
204
</TD> <TD> 
tBodyAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
205
</TD> <TD> 
tBodyAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
206
</TD> <TD> 
tBodyAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
207
</TD> <TD> 
tBodyAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
208
</TD> <TD> 
tBodyAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
209
</TD> <TD> 
tBodyAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
210
</TD> <TD> 
tBodyAccMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
211
</TD> <TD> 
tBodyAccMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
212
</TD> <TD> 
tBodyAccMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
213
</TD> <TD> 
tBodyAccMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
214
</TD> <TD> 
tGravityAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
215
</TD> <TD> 
tGravityAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
216
</TD> <TD> 
tGravityAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
217
</TD> <TD> 
tGravityAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
218
</TD> <TD> 
tGravityAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
219
</TD> <TD> 
tGravityAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
220
</TD> <TD> 
tGravityAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
221
</TD> <TD> 
tGravityAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
222
</TD> <TD> 
tGravityAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
223
</TD> <TD> 
tGravityAccMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
224
</TD> <TD> 
tGravityAccMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
225
</TD> <TD> 
tGravityAccMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
226
</TD> <TD> 
tGravityAccMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
227
</TD> <TD> 
tBodyAccJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
228
</TD> <TD> 
tBodyAccJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
229
</TD> <TD> 
tBodyAccJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
230
</TD> <TD> 
tBodyAccJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
231
</TD> <TD> 
tBodyAccJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
232
</TD> <TD> 
tBodyAccJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
233
</TD> <TD> 
tBodyAccJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
234
</TD> <TD> 
tBodyAccJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
235
</TD> <TD> 
tBodyAccJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
236
</TD> <TD> 
tBodyAccJerkMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
237
</TD> <TD> 
tBodyAccJerkMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
238
</TD> <TD> 
tBodyAccJerkMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
239
</TD> <TD> 
tBodyAccJerkMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
240
</TD> <TD> 
tBodyGyroMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
241
</TD> <TD> 
tBodyGyroMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
242
</TD> <TD> 
tBodyGyroMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
243
</TD> <TD> 
tBodyGyroMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
244
</TD> <TD> 
tBodyGyroMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
245
</TD> <TD> 
tBodyGyroMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
246
</TD> <TD> 
tBodyGyroMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
247
</TD> <TD> 
tBodyGyroMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
248
</TD> <TD> 
tBodyGyroMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
249
</TD> <TD> 
tBodyGyroMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
250
</TD> <TD> 
tBodyGyroMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
251
</TD> <TD> 
tBodyGyroMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
252
</TD> <TD> 
tBodyGyroMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
253
</TD> <TD> 
tBodyGyroJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
254
</TD> <TD> 
tBodyGyroJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
255
</TD> <TD> 
tBodyGyroJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
256
</TD> <TD> 
tBodyGyroJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
257
</TD> <TD> 
tBodyGyroJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
258
</TD> <TD> 
tBodyGyroJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
259
</TD> <TD> 
tBodyGyroJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
260
</TD> <TD> 
tBodyGyroJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
261
</TD> <TD> 
tBodyGyroJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
262
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()1
</TD> </TR>
  <TR> <TD align="right"> 
263
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()2
</TD> </TR>
  <TR> <TD align="right"> 
264
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()3
</TD> </TR>
  <TR> <TD align="right"> 
265
</TD> <TD> 
tBodyGyroJerkMag-arCoeff()4
</TD> </TR>
  <TR> <TD align="right"> 
266
</TD> <TD> 
fBodyAcc-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
267
</TD> <TD> 
fBodyAcc-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
268
</TD> <TD> 
fBodyAcc-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
269
</TD> <TD> 
fBodyAcc-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
270
</TD> <TD> 
fBodyAcc-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
271
</TD> <TD> 
fBodyAcc-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
272
</TD> <TD> 
fBodyAcc-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
273
</TD> <TD> 
fBodyAcc-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
274
</TD> <TD> 
fBodyAcc-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
275
</TD> <TD> 
fBodyAcc-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
276
</TD> <TD> 
fBodyAcc-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
277
</TD> <TD> 
fBodyAcc-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
278
</TD> <TD> 
fBodyAcc-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
279
</TD> <TD> 
fBodyAcc-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
280
</TD> <TD> 
fBodyAcc-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
281
</TD> <TD> 
fBodyAcc-sma()
</TD> </TR>
  <TR> <TD align="right"> 
282
</TD> <TD> 
fBodyAcc-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
283
</TD> <TD> 
fBodyAcc-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
284
</TD> <TD> 
fBodyAcc-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
285
</TD> <TD> 
fBodyAcc-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
286
</TD> <TD> 
fBodyAcc-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
287
</TD> <TD> 
fBodyAcc-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
288
</TD> <TD> 
fBodyAcc-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
289
</TD> <TD> 
fBodyAcc-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
290
</TD> <TD> 
fBodyAcc-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
291
</TD> <TD> 
fBodyAcc-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
292
</TD> <TD> 
fBodyAcc-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
293
</TD> <TD> 
fBodyAcc-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
294
</TD> <TD> 
fBodyAcc-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
295
</TD> <TD> 
fBodyAcc-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
296
</TD> <TD> 
fBodyAcc-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
297
</TD> <TD> 
fBodyAcc-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
298
</TD> <TD> 
fBodyAcc-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
299
</TD> <TD> 
fBodyAcc-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
300
</TD> <TD> 
fBodyAcc-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
301
</TD> <TD> 
fBodyAcc-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
302
</TD> <TD> 
fBodyAcc-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
303
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
304
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
305
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
306
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
307
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
308
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
309
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
310
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
311
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
312
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
313
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
314
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
315
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
316
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
317
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
318
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
319
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
320
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
321
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
322
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
323
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
324
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
325
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
326
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
327
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
328
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
329
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
330
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
331
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
332
</TD> <TD> 
fBodyAcc-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
333
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
334
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
335
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
336
</TD> <TD> 
fBodyAcc-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
337
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
338
</TD> <TD> 
fBodyAcc-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
339
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
340
</TD> <TD> 
fBodyAcc-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
341
</TD> <TD> 
fBodyAcc-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
342
</TD> <TD> 
fBodyAcc-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
343
</TD> <TD> 
fBodyAcc-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
344
</TD> <TD> 
fBodyAcc-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
345
</TD> <TD> 
fBodyAccJerk-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
346
</TD> <TD> 
fBodyAccJerk-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
347
</TD> <TD> 
fBodyAccJerk-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
348
</TD> <TD> 
fBodyAccJerk-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
349
</TD> <TD> 
fBodyAccJerk-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
350
</TD> <TD> 
fBodyAccJerk-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
351
</TD> <TD> 
fBodyAccJerk-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
352
</TD> <TD> 
fBodyAccJerk-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
353
</TD> <TD> 
fBodyAccJerk-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
354
</TD> <TD> 
fBodyAccJerk-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
355
</TD> <TD> 
fBodyAccJerk-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
356
</TD> <TD> 
fBodyAccJerk-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
357
</TD> <TD> 
fBodyAccJerk-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
358
</TD> <TD> 
fBodyAccJerk-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
359
</TD> <TD> 
fBodyAccJerk-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
360
</TD> <TD> 
fBodyAccJerk-sma()
</TD> </TR>
  <TR> <TD align="right"> 
361
</TD> <TD> 
fBodyAccJerk-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
362
</TD> <TD> 
fBodyAccJerk-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
363
</TD> <TD> 
fBodyAccJerk-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
364
</TD> <TD> 
fBodyAccJerk-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
365
</TD> <TD> 
fBodyAccJerk-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
366
</TD> <TD> 
fBodyAccJerk-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
367
</TD> <TD> 
fBodyAccJerk-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
368
</TD> <TD> 
fBodyAccJerk-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
369
</TD> <TD> 
fBodyAccJerk-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
370
</TD> <TD> 
fBodyAccJerk-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
371
</TD> <TD> 
fBodyAccJerk-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
372
</TD> <TD> 
fBodyAccJerk-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
373
</TD> <TD> 
fBodyAccJerk-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
374
</TD> <TD> 
fBodyAccJerk-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
375
</TD> <TD> 
fBodyAccJerk-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
376
</TD> <TD> 
fBodyAccJerk-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
377
</TD> <TD> 
fBodyAccJerk-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
378
</TD> <TD> 
fBodyAccJerk-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
379
</TD> <TD> 
fBodyAccJerk-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
380
</TD> <TD> 
fBodyAccJerk-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
381
</TD> <TD> 
fBodyAccJerk-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
382
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
383
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
384
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
385
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
386
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
387
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
388
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
389
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
390
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
391
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
392
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
393
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
394
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
395
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
396
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
397
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
398
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
399
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
400
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
401
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
402
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
403
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
404
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
405
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
406
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
407
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
408
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
409
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
410
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
411
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
412
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
413
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
414
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
415
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
416
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
417
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
418
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
419
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
420
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
421
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
422
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
423
</TD> <TD> 
fBodyAccJerk-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
424
</TD> <TD> 
fBodyGyro-mean()-X
</TD> </TR>
  <TR> <TD align="right"> 
425
</TD> <TD> 
fBodyGyro-mean()-Y
</TD> </TR>
  <TR> <TD align="right"> 
426
</TD> <TD> 
fBodyGyro-mean()-Z
</TD> </TR>
  <TR> <TD align="right"> 
427
</TD> <TD> 
fBodyGyro-std()-X
</TD> </TR>
  <TR> <TD align="right"> 
428
</TD> <TD> 
fBodyGyro-std()-Y
</TD> </TR>
  <TR> <TD align="right"> 
429
</TD> <TD> 
fBodyGyro-std()-Z
</TD> </TR>
  <TR> <TD align="right"> 
430
</TD> <TD> 
fBodyGyro-mad()-X
</TD> </TR>
  <TR> <TD align="right"> 
431
</TD> <TD> 
fBodyGyro-mad()-Y
</TD> </TR>
  <TR> <TD align="right"> 
432
</TD> <TD> 
fBodyGyro-mad()-Z
</TD> </TR>
  <TR> <TD align="right"> 
433
</TD> <TD> 
fBodyGyro-max()-X
</TD> </TR>
  <TR> <TD align="right"> 
434
</TD> <TD> 
fBodyGyro-max()-Y
</TD> </TR>
  <TR> <TD align="right"> 
435
</TD> <TD> 
fBodyGyro-max()-Z
</TD> </TR>
  <TR> <TD align="right"> 
436
</TD> <TD> 
fBodyGyro-min()-X
</TD> </TR>
  <TR> <TD align="right"> 
437
</TD> <TD> 
fBodyGyro-min()-Y
</TD> </TR>
  <TR> <TD align="right"> 
438
</TD> <TD> 
fBodyGyro-min()-Z
</TD> </TR>
  <TR> <TD align="right"> 
439
</TD> <TD> 
fBodyGyro-sma()
</TD> </TR>
  <TR> <TD align="right"> 
440
</TD> <TD> 
fBodyGyro-energy()-X
</TD> </TR>
  <TR> <TD align="right"> 
441
</TD> <TD> 
fBodyGyro-energy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
442
</TD> <TD> 
fBodyGyro-energy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
443
</TD> <TD> 
fBodyGyro-iqr()-X
</TD> </TR>
  <TR> <TD align="right"> 
444
</TD> <TD> 
fBodyGyro-iqr()-Y
</TD> </TR>
  <TR> <TD align="right"> 
445
</TD> <TD> 
fBodyGyro-iqr()-Z
</TD> </TR>
  <TR> <TD align="right"> 
446
</TD> <TD> 
fBodyGyro-entropy()-X
</TD> </TR>
  <TR> <TD align="right"> 
447
</TD> <TD> 
fBodyGyro-entropy()-Y
</TD> </TR>
  <TR> <TD align="right"> 
448
</TD> <TD> 
fBodyGyro-entropy()-Z
</TD> </TR>
  <TR> <TD align="right"> 
449
</TD> <TD> 
fBodyGyro-maxInds-X
</TD> </TR>
  <TR> <TD align="right"> 
450
</TD> <TD> 
fBodyGyro-maxInds-Y
</TD> </TR>
  <TR> <TD align="right"> 
451
</TD> <TD> 
fBodyGyro-maxInds-Z
</TD> </TR>
  <TR> <TD align="right"> 
452
</TD> <TD> 
fBodyGyro-meanFreq()-X
</TD> </TR>
  <TR> <TD align="right"> 
453
</TD> <TD> 
fBodyGyro-meanFreq()-Y
</TD> </TR>
  <TR> <TD align="right"> 
454
</TD> <TD> 
fBodyGyro-meanFreq()-Z
</TD> </TR>
  <TR> <TD align="right"> 
455
</TD> <TD> 
fBodyGyro-skewness()-X
</TD> </TR>
  <TR> <TD align="right"> 
456
</TD> <TD> 
fBodyGyro-kurtosis()-X
</TD> </TR>
  <TR> <TD align="right"> 
457
</TD> <TD> 
fBodyGyro-skewness()-Y
</TD> </TR>
  <TR> <TD align="right"> 
458
</TD> <TD> 
fBodyGyro-kurtosis()-Y
</TD> </TR>
  <TR> <TD align="right"> 
459
</TD> <TD> 
fBodyGyro-skewness()-Z
</TD> </TR>
  <TR> <TD align="right"> 
460
</TD> <TD> 
fBodyGyro-kurtosis()-Z
</TD> </TR>
  <TR> <TD align="right"> 
461
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
462
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
463
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
464
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
465
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
466
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
467
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
468
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
469
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
470
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
471
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
472
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
473
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
474
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
475
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
476
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
477
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
478
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
479
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
480
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
481
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
482
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
483
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
484
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
485
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
486
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
487
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
488
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
489
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,8
</TD> </TR>
  <TR> <TD align="right"> 
490
</TD> <TD> 
fBodyGyro-bandsEnergy()-9,16
</TD> </TR>
  <TR> <TD align="right"> 
491
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,24
</TD> </TR>
  <TR> <TD align="right"> 
492
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,32
</TD> </TR>
  <TR> <TD align="right"> 
493
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,40
</TD> </TR>
  <TR> <TD align="right"> 
494
</TD> <TD> 
fBodyGyro-bandsEnergy()-41,48
</TD> </TR>
  <TR> <TD align="right"> 
495
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,56
</TD> </TR>
  <TR> <TD align="right"> 
496
</TD> <TD> 
fBodyGyro-bandsEnergy()-57,64
</TD> </TR>
  <TR> <TD align="right"> 
497
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,16
</TD> </TR>
  <TR> <TD align="right"> 
498
</TD> <TD> 
fBodyGyro-bandsEnergy()-17,32
</TD> </TR>
  <TR> <TD align="right"> 
499
</TD> <TD> 
fBodyGyro-bandsEnergy()-33,48
</TD> </TR>
  <TR> <TD align="right"> 
500
</TD> <TD> 
fBodyGyro-bandsEnergy()-49,64
</TD> </TR>
  <TR> <TD align="right"> 
501
</TD> <TD> 
fBodyGyro-bandsEnergy()-1,24
</TD> </TR>
  <TR> <TD align="right"> 
502
</TD> <TD> 
fBodyGyro-bandsEnergy()-25,48
</TD> </TR>
  <TR> <TD align="right"> 
503
</TD> <TD> 
fBodyAccMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
504
</TD> <TD> 
fBodyAccMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
505
</TD> <TD> 
fBodyAccMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
506
</TD> <TD> 
fBodyAccMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
507
</TD> <TD> 
fBodyAccMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
508
</TD> <TD> 
fBodyAccMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
509
</TD> <TD> 
fBodyAccMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
510
</TD> <TD> 
fBodyAccMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
511
</TD> <TD> 
fBodyAccMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
512
</TD> <TD> 
fBodyAccMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
513
</TD> <TD> 
fBodyAccMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
514
</TD> <TD> 
fBodyAccMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
515
</TD> <TD> 
fBodyAccMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
516
</TD> <TD> 
fBodyBodyAccJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
517
</TD> <TD> 
fBodyBodyAccJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
518
</TD> <TD> 
fBodyBodyAccJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
519
</TD> <TD> 
fBodyBodyAccJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
520
</TD> <TD> 
fBodyBodyAccJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
521
</TD> <TD> 
fBodyBodyAccJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
522
</TD> <TD> 
fBodyBodyAccJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
523
</TD> <TD> 
fBodyBodyAccJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
524
</TD> <TD> 
fBodyBodyAccJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
525
</TD> <TD> 
fBodyBodyAccJerkMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
526
</TD> <TD> 
fBodyBodyAccJerkMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
527
</TD> <TD> 
fBodyBodyAccJerkMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
528
</TD> <TD> 
fBodyBodyAccJerkMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
529
</TD> <TD> 
fBodyBodyGyroMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
530
</TD> <TD> 
fBodyBodyGyroMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
531
</TD> <TD> 
fBodyBodyGyroMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
532
</TD> <TD> 
fBodyBodyGyroMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
533
</TD> <TD> 
fBodyBodyGyroMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
534
</TD> <TD> 
fBodyBodyGyroMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
535
</TD> <TD> 
fBodyBodyGyroMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
536
</TD> <TD> 
fBodyBodyGyroMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
537
</TD> <TD> 
fBodyBodyGyroMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
538
</TD> <TD> 
fBodyBodyGyroMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
539
</TD> <TD> 
fBodyBodyGyroMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
540
</TD> <TD> 
fBodyBodyGyroMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
541
</TD> <TD> 
fBodyBodyGyroMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
542
</TD> <TD> 
fBodyBodyGyroJerkMag-mean()
</TD> </TR>
  <TR> <TD align="right"> 
543
</TD> <TD> 
fBodyBodyGyroJerkMag-std()
</TD> </TR>
  <TR> <TD align="right"> 
544
</TD> <TD> 
fBodyBodyGyroJerkMag-mad()
</TD> </TR>
  <TR> <TD align="right"> 
545
</TD> <TD> 
fBodyBodyGyroJerkMag-max()
</TD> </TR>
  <TR> <TD align="right"> 
546
</TD> <TD> 
fBodyBodyGyroJerkMag-min()
</TD> </TR>
  <TR> <TD align="right"> 
547
</TD> <TD> 
fBodyBodyGyroJerkMag-sma()
</TD> </TR>
  <TR> <TD align="right"> 
548
</TD> <TD> 
fBodyBodyGyroJerkMag-energy()
</TD> </TR>
  <TR> <TD align="right"> 
549
</TD> <TD> 
fBodyBodyGyroJerkMag-iqr()
</TD> </TR>
  <TR> <TD align="right"> 
550
</TD> <TD> 
fBodyBodyGyroJerkMag-entropy()
</TD> </TR>
  <TR> <TD align="right"> 
551
</TD> <TD> 
fBodyBodyGyroJerkMag-maxInds
</TD> </TR>
  <TR> <TD align="right"> 
552
</TD> <TD> 
fBodyBodyGyroJerkMag-meanFreq()
</TD> </TR>
  <TR> <TD align="right"> 
553
</TD> <TD> 
fBodyBodyGyroJerkMag-skewness()
</TD> </TR>
  <TR> <TD align="right"> 
554
</TD> <TD> 
fBodyBodyGyroJerkMag-kurtosis()
</TD> </TR>
  <TR> <TD align="right"> 
555
</TD> <TD> 
angle(tBodyAccMean,gravity)
</TD> </TR>
  <TR> <TD align="right"> 
556
</TD> <TD> 
angle(tBodyAccJerkMean),gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
557
</TD> <TD> 
angle(tBodyGyroMean,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
558
</TD> <TD> 
angle(tBodyGyroJerkMean,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
559
</TD> <TD> 
angle(X,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
560
</TD> <TD> 
angle(Y,gravityMean)
</TD> </TR>
  <TR> <TD align="right"> 
561
</TD> <TD> 
angle(Z,gravityMean)
</TD> </TR>
   </TABLE>

Tidy Dataset
------------

Only the measurements on the mean and standard deviation for each
measurement were extracted. These are the variables in the tidy dataset.
<!-- html table generated in R 3.1.0 by xtable 1.7-3 package -->
<!-- Sat Jul 12 12:39:33 2014 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> 
Variables
</TH>  </TR>
  <TR> <TD align="right"> 
1
</TD> <TD> 
subjectidx
</TD> </TR>
  <TR> <TD align="right"> 
2
</TD> <TD> 
activity
</TD> </TR>
  <TR> <TD align="right"> 
3
</TD> <TD> 
tbodyaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
4
</TD> <TD> 
tbodyaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
5
</TD> <TD> 
tbodyaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
6
</TD> <TD> 
tgravityaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
7
</TD> <TD> 
tgravityaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
8
</TD> <TD> 
tgravityaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
9
</TD> <TD> 
tbodyaccjerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
10
</TD> <TD> 
tbodyaccjerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
11
</TD> <TD> 
tbodyaccjerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
12
</TD> <TD> 
tbodygyrostdx
</TD> </TR>
  <TR> <TD align="right"> 
13
</TD> <TD> 
tbodygyrostdy
</TD> </TR>
  <TR> <TD align="right"> 
14
</TD> <TD> 
tbodygyrostdz
</TD> </TR>
  <TR> <TD align="right"> 
15
</TD> <TD> 
tbodygyrojerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
16
</TD> <TD> 
tbodygyrojerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
17
</TD> <TD> 
tbodygyrojerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
18
</TD> <TD> 
tbodyaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
19
</TD> <TD> 
tgravityaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
20
</TD> <TD> 
tbodyaccjerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
21
</TD> <TD> 
tbodygyromagstd
</TD> </TR>
  <TR> <TD align="right"> 
22
</TD> <TD> 
tbodygyrojerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
23
</TD> <TD> 
fbodyaccstdx
</TD> </TR>
  <TR> <TD align="right"> 
24
</TD> <TD> 
fbodyaccstdy
</TD> </TR>
  <TR> <TD align="right"> 
25
</TD> <TD> 
fbodyaccstdz
</TD> </TR>
  <TR> <TD align="right"> 
26
</TD> <TD> 
fbodyaccjerkstdx
</TD> </TR>
  <TR> <TD align="right"> 
27
</TD> <TD> 
fbodyaccjerkstdy
</TD> </TR>
  <TR> <TD align="right"> 
28
</TD> <TD> 
fbodyaccjerkstdz
</TD> </TR>
  <TR> <TD align="right"> 
29
</TD> <TD> 
fbodygyrostdx
</TD> </TR>
  <TR> <TD align="right"> 
30
</TD> <TD> 
fbodygyrostdy
</TD> </TR>
  <TR> <TD align="right"> 
31
</TD> <TD> 
fbodygyrostdz
</TD> </TR>
  <TR> <TD align="right"> 
32
</TD> <TD> 
fbodyaccmagstd
</TD> </TR>
  <TR> <TD align="right"> 
33
</TD> <TD> 
fbodybodyaccjerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
34
</TD> <TD> 
fbodybodygyromagstd
</TD> </TR>
  <TR> <TD align="right"> 
35
</TD> <TD> 
fbodybodygyrojerkmagstd
</TD> </TR>
  <TR> <TD align="right"> 
36
</TD> <TD> 
tbodyaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
37
</TD> <TD> 
tbodyaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
38
</TD> <TD> 
tbodyaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
39
</TD> <TD> 
tgravityaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
40
</TD> <TD> 
tgravityaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
41
</TD> <TD> 
tgravityaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
42
</TD> <TD> 
tbodyaccjerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
43
</TD> <TD> 
tbodyaccjerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
44
</TD> <TD> 
tbodyaccjerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
45
</TD> <TD> 
tbodygyromeanx
</TD> </TR>
  <TR> <TD align="right"> 
46
</TD> <TD> 
tbodygyromeany
</TD> </TR>
  <TR> <TD align="right"> 
47
</TD> <TD> 
tbodygyromeanz
</TD> </TR>
  <TR> <TD align="right"> 
48
</TD> <TD> 
tbodygyrojerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
49
</TD> <TD> 
tbodygyrojerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
50
</TD> <TD> 
tbodygyrojerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
51
</TD> <TD> 
tbodyaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
52
</TD> <TD> 
tgravityaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
53
</TD> <TD> 
tbodyaccjerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
54
</TD> <TD> 
tbodygyromagmean
</TD> </TR>
  <TR> <TD align="right"> 
55
</TD> <TD> 
tbodygyrojerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
56
</TD> <TD> 
fbodyaccmeanx
</TD> </TR>
  <TR> <TD align="right"> 
57
</TD> <TD> 
fbodyaccmeany
</TD> </TR>
  <TR> <TD align="right"> 
58
</TD> <TD> 
fbodyaccmeanz
</TD> </TR>
  <TR> <TD align="right"> 
59
</TD> <TD> 
fbodyaccjerkmeanx
</TD> </TR>
  <TR> <TD align="right"> 
60
</TD> <TD> 
fbodyaccjerkmeany
</TD> </TR>
  <TR> <TD align="right"> 
61
</TD> <TD> 
fbodyaccjerkmeanz
</TD> </TR>
  <TR> <TD align="right"> 
62
</TD> <TD> 
fbodygyromeanx
</TD> </TR>
  <TR> <TD align="right"> 
63
</TD> <TD> 
fbodygyromeany
</TD> </TR>
  <TR> <TD align="right"> 
64
</TD> <TD> 
fbodygyromeanz
</TD> </TR>
  <TR> <TD align="right"> 
65
</TD> <TD> 
fbodyaccmagmean
</TD> </TR>
  <TR> <TD align="right"> 
66
</TD> <TD> 
fbodybodyaccjerkmagmean
</TD> </TR>
  <TR> <TD align="right"> 
67
</TD> <TD> 
fbodybodygyromagmean
</TD> </TR>
  <TR> <TD align="right"> 
68
</TD> <TD> 
fbodybodygyrojerkmagmean
</TD> </TR>
   </TABLE>
