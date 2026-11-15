library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Myself", pattern = ".md", full.names = TRUE)



for(i in 3:3){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  
  post_type <- temp_file[2]
  
  print(post_type)
  
  if(post_type == 'types: ["media"]'){
    temp_file[2] <- 'types: ["review"]'
  }
  
  # print(temp_file[2])
  
  # post_type <- temp_file[str_detect(temp_file, "types")] |> print()
  
  # if(str_detect(post_type, "media")){
  #   print("mediapost!")
  # }
  
}

# temp_file
