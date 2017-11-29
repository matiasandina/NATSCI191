## This script pulls all the files generated and creates a table with counts by factor
## It was made to read the results of Priming_task.m 

library(dplyr)

read_priming_task <- function(folder, task_pattern){

  li <- list()
  
  # Read from matlab output files into list
  
  mypath <- file.path(getwd(), folder,"output")
  
  print(mypath)
  
  list.counter <- 1
  
  for (i in list.files(pattern= task_pattern, path = mypath, full.names=T)){

    print(paste("trying to read", i))
    
    
    # We define col classes so that numeric IDs and keystrokes get parsed correctly
    tidy_a <- read.csv(i, stringsAsFactors=F,
                       colClasses = c("character", "numeric", "character", "numeric"))
    
    
    # get a trialID variable 
    tidy_a$trialID <- 1:nrow(tidy_a)
    
    li[[list.counter]] <- tidy_a
    
    
    list.counter <- list.counter+1
      
  }
  
  # produce   
  all_trials <- dplyr::bind_rows(li)  
  
  # count by group and trial ID
  count_trials <- all_trials %>% group_by(group, trialID) %>% count(keys)

  write.csv(all_trials, paste0(mypath, "/", task_pattern, "_all_trials.csv"), row.names=FALSE)
  
  write.csv(count_trials, paste0(mypath, "/", task_pattern, "_count_trials.csv"), row.names=FALSE)
  
  
}

