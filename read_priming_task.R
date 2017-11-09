## This script pulls all the files generated and creates a table with counts by factor
## It was made to read the results of Priming_task.m 

library(dplyr)

read_priming_task <- function(folder){

  li <- list()
  
  # Read from matlab output files into list
  
  mypath <- file.path(getwd(), folder,"output")
  
  print(mypath)
  
  list.counter <- 1
  
  for (i in list.files(pattern="_output.txt", path = mypath, full.names=T)){

    print(paste("trying to read", i))
    
    
    # MATLAB writetable structure is a tab separated of only one column,
    # Within that, real columns are separated with commas, quite annoying.
    # It is better to read it with header=F so that all is in one column and we can separate it by that comma
    
    A <- read.table(i, sep="\t", stringsAsFactors = F)
    
    # note unlist(strsplit(first row of A)) that is where the headers are
    # also note that everything will be treated as character
    
    tidy_a <-tidyr::separate(A, col=V1, into=unlist(strsplit(A[1,],split = ',')), sep = ',')
    
    # remove the first row which is duplicated
    tidy_a <- tidy_a[2:nrow(A),]
  
    # get a trialID variable 
    tidy_a$trialID <- 1:nrow(tidy_a)
    
    li[[list.counter]] <- tidy_a
    
    
    list.counter <- list.counter+1
      
  }
  
  # produce   
  all_trials <- dplyr::bind_rows(li)  
  
  # count by group and trial ID
  count_trials <- all_trials %>% group_by(group, trialID) %>% count(keys)

  write.csv(all_trials, paste0(mypath, "/all_trials.csv"), row.names=FALSE)
  
  write.csv(count_trials, paste0(mypath, "/count_trials.csv"), row.names=FALSE)
  
  
}

