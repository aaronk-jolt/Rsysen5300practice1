library(gert)
library(credentials)

credentials::set_github_pat()
system('git config --global user.name "aaronkumar"')
system('git config --global user.email "greninja75@gmail.com"')

gert::git_pull()                          # pull the most recent changes from GitHub
gert::git_add(dir(all.files = TRUE))      # stage every new or edited file
gert::git_commit_all("my first commit")   # save your record of the edits (a commit)
gert::git_push()                          # push your commit up to GitHub

