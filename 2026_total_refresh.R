library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Myself", pattern = ".md", full.names = TRUE)

file_list[1512]


for(i in 1515:1515){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  post_type <- temp_file[2]
  
  # fix tea posts
  
  # fix media posts
  
  if(post_type == 'types: ["media"]'){
    
    temp_file[2] <- 'types: ["review"]'
    
    for(j in 1:length(temp_file)){
      print(j)
      test_word <- word(temp_file[j],1)
      
      if(test_word == "title:"){
        temp_title <- 
          temp_file[j] |> 
          str_split("blog:")
        
        temp_title <- temp_title[[1]][1]
      }
      
      if(test_word == "titles:"){
        temp_titles <- 
          temp_file[j] |>
          str_split('"')
        
        temp_titles <- temp_titles[[1]][2]
      }
      
      if(test_word == "series:"){
        temp_series <- 
          temp_file[j] |>
          str_split('"')
        
        temp_series <- temp_series[[1]][2]
      }
      
    if(test_word == "ratings:"){
      temp_ratings <- 
        temp_file[j] |>
        str_split('"')
      
      temp_ratings <- temp_ratings[[1]][2]
    }
      
    if(test_word == "params:"){
      print("snagged!")
      temp_entry <- 
        temp_file[j + 1] |> 
        str_split(":")
      
      temp_entry <- temp_entry[[1]][2]
      break
    }
    
  }
    if(temp_series == ""){
      
      temp_file[5] <- paste0(temp_title,'blog: ',temp_titles,' (',temp_ratings,')"')
    
      
      # print("blank")
    }
    if(temp_series != ""){
      
      temp_file[5] <- paste0(temp_title,'blog: ',temp_series,temp_entry,': ', temp_titles,' (',temp_ratings,')"')
      
      # print("blank")
    }
    
    temp_tags <- temp_file[6] |> 
      str_remove_all('\"') |> 
      str_remove("tags: \\[") |>
      str_remove("\\]") #|>
      # str_split(",")
    
    # temp_file[5]
      
    
  }

}
  

