#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Push source and build repos.
git push origin dev

# Checkout temporally branch where we can add _site directory
git checkout -b temp

# Build the project.
jekyll build

# Add changes to git.
git add -A
git add -fA _site

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git branch -D gh-pages
git subtree split -P _site -b gh-pages
git push -f origin gh-pages:gh-pages
git branch -D temp