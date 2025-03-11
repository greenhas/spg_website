library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Relationships", pattern = ".md", full.names = TRUE)

# read_lines(file_list[1])

for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <<- read_lines(file_list[i])
  
  # print(temp_file)
  
  for(j in 1:length(temp_file)){
    
    if(grepl("tags:",temp_file[j])){
      
      temp_tags <<- unlist(str_split(temp_file[j],","))
      temp_type <<- str_extract(temp_tags[1],"\"[a-z]*\"")
      
      if(length(temp_tags) > 2) {
        new_tags <<- str_flatten(c(temp_tags[3:length(temp_tags)]), collapse = ",")
      }
      
      if(length(temp_tags) == 2) {
        new_tags <<- "\"\"]"
      }
      
      
      new_tags <<- str_flatten(c("tags: [",new_tags))
    
      
      temp_file <<- c(
        temp_file[1:j-1],
        new_tags,
        temp_file[(j+1):length(temp_file)]
      )
      
      # print(temp_file)
      
    }
    
    
    
  }
  
  
  new_file <- c(
   temp_file[1],
   str_flatten(c("type: [",temp_type,"]")),
   temp_file[2:length(temp_file)]
   )

    # print(new_file)

    # write_lines(temp_file, str_replace(file_list[i],pattern = "spg_website/content", replacement = "Desktop"))
    print(file_list[i])
    write_lines(new_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  
  # print(i)
  
}
