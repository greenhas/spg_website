library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Myself", pattern = ".md", full.names = TRUE)

for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  post_type <- temp_file[2]
  
  # fix tea posts
  
  if(post_type == 'types: ["tea"]'){
    
    temp_file[2] <- 'types: ["review"]'
    temp_file[10] <- temp_file[10] |> str_remove(("tea_"))
    
  }
  
  # fix media posts
  
  if(post_type == 'types: ["media"]'){
    
    temp_file[2] <- 'types: ["review"]'
    
    temp_title <- ""
    temp_titles <- ""
    temp_artists <- ""
    temp_tags <- ""
    temp_franchise <- ""
    temp_series <- ""
    temp_ratings <- ""
    temp_entry <- ""
    for(j in 1:length(temp_file)){
      # print(j)
      test_word <- word(temp_file[j],1)
      
      if(test_word == "layout:"){
        
        temp_file[j] <- "layout: media"
      }
      
      if(test_word == "title:"){
        temp_title <- 
          temp_file[j] |> 
          str_split("blog:")
        
        title_spot <- j
        
        temp_title <- temp_title[[1]][1]
      }
      
      if(test_word == "titles:"){
        temp_titles <- 
          temp_file[j] |>
          str_split('"')
        
        temp_titles <- temp_titles[[1]][2]
      }
     
      if(test_word == "creators:"){
        
        temp_file[j] <- temp_file[j] |> str_replace(pattern = "creators", replacement = "artists")
        
        temp_artists <- temp_file[j] |> 
          # str_remove_all('\"') |> 
          str_remove('artists: \\["') |>
          str_remove('"\\]') |>
          str_split('","')
        
        temp_artists <- temp_artists[[1]][!temp_artists[[1]] == ""]
      }
      
      if(test_word == "tags:"){
        
        tags_spot <- j
        
        temp_tags <- temp_file[j] |> 
          # str_remove_all('\"') |> 
          str_remove('tags: \\["') |>
          str_remove('"\\]') |>
          str_split('","')
        
        temp_tags <- temp_tags[[1]]
      }
      
      if(test_word == "franchise:"){
    
        temp_franchise <- temp_file[j] |> 
          str_remove_all('\"') |> 
          str_remove("franchise: \\[") |>
          str_remove("\\]") |>
          str_split(",")
        
        temp_franchise <- temp_franchise[[1]][!temp_franchise[[1]] == ""]
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
      # print("snagged!")
      temp_entry <- 
        temp_file[j + 1] |> 
        str_split(":")
      
      temp_entry <- temp_entry[[1]][2]
      break
    }
    
  }
    if(temp_series == ""){
      
      temp_file[title_spot] <- paste0(temp_title,'blog: ',temp_titles,' (',temp_ratings,')"')
    
      
      # print("blank")
    }
    if(temp_series != ""){
      
      if(temp_titles != ""){
      
        temp_file[title_spot] <- paste0(temp_title,'blog: ',temp_series,",",temp_entry,': ', temp_titles,' (',temp_ratings,')"')  
        
      }
      
      if(temp_titles == ""){
        
        temp_file[title_spot] <- paste0(temp_title,'blog: ',temp_series,",",temp_entry,' (',temp_ratings,')"')  
        
      }
      
      
      # print("blank")
    }
    
   
    
    temp_tags <- c(temp_tags, temp_artists, temp_series, temp_franchise, temp_titles) |> unique()
    
    temp_tags <- temp_tags[!temp_tags == ""]
    
    temp_file[tags_spot] <- paste0('tags: ["',str_flatten(temp_tags,collapse ='","'),'"]')
    

      
    
  }
  temp_file |> write_lines(file_list[i])
  print(i)
}
  

