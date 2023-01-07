library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Work", pattern = ".md", full.names = TRUE)

# file_list

for(i in 1:length(file_list)){
  
  temp_file <- read_lines(file_list[i])
  
  if(str_detect(temp_file[3],"\"🔗linkblog:")) {
    
    temp_file <- str_replace(temp_file, "\"🔗linkblog:","\"🔗 linkblog:")
    
    write_lines(temp_file, file_list[i])
    
  }
  
  print(i)
  
}

