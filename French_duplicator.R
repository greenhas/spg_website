library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Myself", pattern = ".fr.md", full.names = TRUE)
file_list

for(i in 1:length(file_list)){
  
  temp_file <- read_lines(file_list[i])
  write_lines(temp_file, str_replace(file_list[i],".fr",""))
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  
  print(i)
  
}