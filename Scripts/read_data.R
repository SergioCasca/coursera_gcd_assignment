read_data <- function(directory,filename,...){
    
    filepath <- paste(directory,filename,sep="/")

    temp_ds <- read.table(filepath,nrows = 30)
    classes <- lapply(temp_ds,class)
    
    ds <- read.table(filepath,colClasses=classes,...)
    
    invisible(ds)
}