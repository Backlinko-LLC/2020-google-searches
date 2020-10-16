rmarkdown::render(here::here("rmd", "final.Rmd"))

# name study like FTP_CTR_STUDY in environ-file
usethis::edit_r_environ()

# add study name under Sys.getenv 
RCurl::ftpUpload(here::here("rmd", "2_final.html"), Sys.getenv("FTP_CTR_STUDY"))


