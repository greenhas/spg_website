library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Relationships", pattern = ".md", full.names = TRUE)



for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  
  temp_file
  
  
  if(grepl("link",temp_file[2])){
    
    temp_file[6]
    
    # temp_link <- temp_file[length(temp_file)] %>% str_remove("\\[.*\\(") %>% str_remove("\\)$")
    # 
    # temp_source <- temp_link %>% str_remove("https://") %>% str_remove("/.*$") %>% str_remove("www\\.")
    # 
    # if(grepl("title:",temp_file[4])){
    #   
    #   temp_title <<- temp_file[4] %>% 
    #     str_remove("just read '") %>%
    #     str_remove("my thoughts on '") %>%
    #     str_remove("mes pensées sur '")
    #     
    #   temp_art_title <- temp_title %>%
    #     str_remove("title: \"🔗 linkblog: ") %>%
    #     str_remove("'\"")
    #   
    # }
    # if(grepl("title:",temp_file[4])){
    #   
    #   temp_title <<- temp_file[4] %>% 
    #     str_remove("my thoughts on '") %>%
    #     str_remove("mes pensées sur '")
    #     
    #   temp_art_title <- temp_title %>%
    #     str_remove("title: \"🔗 linkblog: ") %>%
    #     str_remove("'\"")
    #   
    # }
    # 
    # if(grepl("tags:",temp_file[4])){
    #   
    #   temp_tags <<- temp_file[4]
    #   
    # }
    # 
    # if(grepl("title:",temp_file[5])){
    #   
    #   temp_title <<- temp_file[5] %>% 
    #     str_remove("my thoughts on '") %>%
    #     str_remove("mes pensées sur '")
    #   
    #   temp_art_title <- temp_title %>%
    #     str_remove("title: \"🔗 linkblog: ") %>%
    #     str_remove("'\"")
    #   
    # }
    # 
    # if(grepl("tags:",temp_file[5])){
    #   
    #   temp_tags <<- temp_file[5]
    #   
    # }
    # 
    # 
    # 
    temp_file <- c(
      temp_file[1:7],
      temp_file[8] %>% str_replace("source","sources"),
      temp_file[9:(length(temp_file))]
    )
    
    # print(temp_file)

    #write_lines(temp_file, str_replace(file_list[i],pattern = "spg_website/content", replacement = "Desktop"))
    write_lines(temp_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  }
  print(i)
  
}
