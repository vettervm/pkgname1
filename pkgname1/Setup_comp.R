#in the following we use the excellent usethis package
#with this package git interaction works like a charm
#set a license
usethis::use_mit_license(copyright_holder = "Ulfunkel")
#now we setup git without the terminal
usethis::use_git_config(user.name = "sprocketsullivan", user.email = "toelch@gmail.com")
#this is a git init
usethis::use_git()
#now we create a token on git
#you need to login to git and copy the token
usethis::create_github_token()
#execute the next line and paste your token
gitcreds::gitcreds_set()
#now we create a repo called project push to a repository
usethis::use_github(private = FALSE)
#create a readme file and edit later 
rrtools::use_readme_rmd()
#create and analysis folder
#data is not shared on github
rrtools::use_analysis(data_in_git = FALSE)
#commit and push repo again
#press the launch binder button and let the magic happen

