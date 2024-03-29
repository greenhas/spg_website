library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/Desktop/", pattern = ".md", full.names = TRUE)

for(i in 1:length(file_list)){
  
  temp_file <- read_lines(file_list[i])
  
  if(temp_file[7] == "categories = [\"macro\"]"){
    next
  }
  
  if(temp_file[7] == "categories = [\"micro\"]"){
    temp_file[c(1,8)] <- "---"
    
    temp_file[3] <- temp_file[3] %>% str_replace(" =",":")
    temp_file[4] <- temp_file[4] %>% str_replace(" =",":")
    
    write_name <- temp_file[5] %>% 
      str_replace("slug = \"", "") %>% 
      str_replace("\"","") %>%
      str_replace_all("[!',()]","") %>%
      str_c(".md")
    
    temp_file[7] <- temp_file[7] %>% str_replace("categories =","tags:")
    
    temp_file <- temp_file[c(1,3,4,7,8)]
    
    temp_file
    
    write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",write_name))
    next
  }
  
  if(temp_file[7] == "categories = [\"link\"]"){
    temp_file[c(1,8)] <- "---"
    
    temp_file[3] <- temp_file[3] %>% str_replace(" =",":")
    temp_file[4] <- temp_file[4] %>% str_replace(" =",":")
    
    write_name <- temp_file[5] %>% 
      str_replace("slug = \"", "") %>% 
      str_replace("\"","") %>%
      str_replace_all("[!',()]","") %>%
      str_c(".md")
    
    temp_file[7] <- temp_file[7] %>% str_replace("categories =","tags:")
    
    temp_file <- temp_file[c(1,3,4,7,8,9,10,11)]
    
    write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",write_name))
  }
  print(i)

}