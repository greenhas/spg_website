library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Communities", pattern = ".md", full.names = TRUE)

temp_file <- read_lines(file_list[length(file_list)])

grepl("linkblog",temp_file[3])

for(i in 2:length(file_list)){
  
  temp_file <- read_lines(file_list[i])
  
  if(grepl("linkblog",temp_file[3])){
    
    temp_file[4] <- "tags: [\"linkblog\",\"Communities\"]"
    write_lines(temp_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  }
  print(i)
  
}