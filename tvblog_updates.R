library(tidyverse)

file_list <- list.files("/Users/spencergreenhalgh/spg_website/content/Relationships", pattern = ".md", full.names = TRUE)

# read_lines(file_list[400])

for(i in 1:length(file_list)){ # 1:length(file_list)
  
  temp_file <- read_lines(file_list[i])
  
  if(grepl("tvblog",temp_file[3]) | grepl("tvblog",temp_file[4])){
    print(temp_file)
    
    temp_title <- str_extract(temp_file[3],"for .* by") %>% str_remove("for ") %>% str_remove(", by")
    temp_rating <- str_extract(temp_file[3],"tvblog: .* for") %>% str_remove("tvblog: ") %>% str_remove(" for")
    
    temp_file <- c(
      temp_file[1],
      "layout: tv",
      temp_file[2],
      temp_file[3],
      str_replace(temp_file[4],"\"tv\",",""),
      "media: [\"tv\"]",
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
