#!/usr/bin/env bash

# prompt the user for the SSH link to their repo
echo "Please provide the SSH link to your repository:"
read ssh_link

# create the directory for the repository using the `mkdir` command
mkdir 1970

# create the README.md file using the `touch` command
touch 1970/README.md

# navigate to the repository directory using the `cd` command
cd 1970

# initialize git in the repository using the `git init` command
git init

# create a variable for the date
date="1970-01-01 00:00"

# set the origin using the `git remote add origin` command
# and the ssh_link provided by the user
git remote add origin $ssh_link

# create a commit dated back to 1970 and push it to the repository
# using the given authentication credentials
# create the commit
git commit -m "Initial commit dated back to 1970" --date="$date"
# push the commit to the repository
git push origin master

# write a success message in the console
echo "Successfully created commit dated back to 1970 and pushed it to repository!"
