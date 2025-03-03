library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Communities", pattern = ".md", full.names = TRUE)

# read_lines(file_list[400])

for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  
  if(grepl("movieblog",temp_file[3]) | grepl("movieblog",temp_file[4])){
    print(temp_file)
    
    temp_title <- str_extract(temp_file[3],"for .*") %>% str_remove("for ") %>% str_remove("\"")
    temp_creator <- str_extract(temp_file[3],"by .*$") %>% str_remove("by ") %>% str_remove("\"")
    temp_rating <- str_extract(temp_file[3],"movieblog: .* for") %>% str_remove("movieblog: ") %>% str_remove(" for")
    
    temp_file <- c(
      temp_file[1],
      "layout: movie",
      temp_file[2],
      temp_file[3],
      str_replace(temp_file[4],"\"movie\",",""),
      "media: [\"movie\"]",
      paste0("titles: [\"",temp_title,"\"]"),
      "series: [\"\"]",
      "franchise: [\"\"]",
      paste0("ratings: [\"",temp_rating,"\"]"),
      "params:",
      "  entry:",
      temp_file[5:length(temp_file)]
    )
    
    # print(temp_file)
    
    write_lines(temp_file, str_replace(file_list[i],pattern = "spg_website/content", replacement = "Desktop"))
    # write_lines(temp_file, file_list[i])
    # write_lines(temp_file,paste0("/Users/spencergreenhalgh/hugo-testing/content/",file_list[i]))
  }
  print(i)
  
}
