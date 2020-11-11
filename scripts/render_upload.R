rmarkdown::render(here::here("rmd", "final.Rmd"))

# name study like FTP_CTR_STUDY in environ-file
usethis::edit_r_environ()

# add study name under Sys.getenv 
RCurl::ftpUpload(here::here("rmd", "03_final_0911.html"), Sys.getenv("KEYWORD_LANDSCAPE"))


