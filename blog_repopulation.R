library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/hugo-testing/content/Myself", pattern = ".md", full.names = TRUE)

for(i in 2:length(file_list)){
  
  temp_file <- read_lines(file_list[i])
  
  
  if(temp_file[4] == "tags: [\"micro\"]"){
    
    temp_file[6] <- temp_file[3] %>% str_replace("title: \"","") %>% str_replace("\"","")    
    temp_file[3] <- "title: \"\""
    temp_file[4] <- "tags: [\"micro\",\"Myself\"]"
    
    write_lines(temp_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
    next
  }
  
  if(temp_file[4] == "tags: [\"link\"]"){
    
    temp_file[4] <- "tags: [\"micro\",\"Myself\"]"
    write_lines(temp_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  }
  print(i)
  
}