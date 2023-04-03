## -----------------------------------------
## load packages, test workspace
## -----------------------------------------

# library(webshot2)
library(webshot)
library(tidyverse)
library(here)

## -----------------------------------------
## get list of text files
## -----------------------------------------

file_list <- list.files(
  here::here("data"), 
  pattern = ".txt", 
  full.names = TRUE)

## -----------------------------------------
## screenshot pages
## -----------------------------------------

# highlight lines 25 through the end, then hit CMD+Enter

for(j in 1:length(file_list)){ # "1:length(file_list)" can be replaced with a different set of numbers as needed, for troubleshooting
  
  # grab group name from file path
  
  group_name <- file_list[j] %>% 
    str_replace("/cloud/project/data/post_links_","") %>% 
    str_replace(".txt","")
  
  print(group_name)
  
  # grab post links from appropriate file
  
  link_list <- read_lines(file_list[j])
  
  # change to "oldest first" order
  
  link_list <- rev(link_list)
  
  # grab screenshots of each link
  
  webshot::webshot(
    url = link_list,
    file = paste0(here::here(),"/data/post_screenshots/",group_name,"/",group_name,"_post_.png"),
    delay = 40,
    eval = "casper.then(function() {
    this.clickLabel('Log in');
    this.wait(1000);
    })

    casper.then(function() {
    this.sendKeys('#user_email', 'fo_ch');
    this.sendKeys('#user_password', 'mode2INFLAME.said');
    this.click('button.btn');
    this.wait(1000);
    })",
    # cliprect = "viewport")
    selector = "._UuSG")

  # based on post links, identify unique profiles

  profile_list <- link_list %>%
    str_replace("/posts/[0-9]*","") %>%
    unique()
  
  # cycle through profiles and grab links
  
  for(k in c(1:length(profile_list))){
    webshot::webshot(profile_list[k], 
            paste0(here::here(),"/data/profile_screenshots/",group_name,"/",group_name,"_profile_",k,".png"),
            vwidth = 600,
            vheight = 12000,
            delay = 40, # adjust as needed
            cliprect = "viewport")
  }
  
}


