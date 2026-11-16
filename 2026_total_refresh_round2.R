library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Communities", pattern = ".md", full.names = TRUE)

for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  
  
  # fix photoposts
  
  if(temp_file[2] == 'types: ["photo"]'){
    
    alt_text <- temp_file[length(temp_file)] |> 
      str_remove("!\\[") |>
      str_remove("\\].*") |>
      str_replace_all("\"","'")
    
    stop_point <- length(temp_file) - 2
    
    temp_file <- c(temp_file[1:5],paste0('alt_text : "',alt_text,'"'),temp_file[6:stop_point])
      }
  
  temp_file |> write_lines(file_list[i])
  print(i)
  
}