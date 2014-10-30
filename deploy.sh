#!/bin/bash

echo -e "\033[0;32mDeploying sofa.io blog...\033[0m"

# delete old gh-pages branch
git branch -D deploy

git checkout -b deploy

# Add changes to git.
git add -f _site

# Commit changes.
msg="chore(*): adding dist `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git subtree split -P _site -b deploy-dist

# Push source and build repos.
git push -f origin deploy-dist:gh-pages
git branch -D deploy-dist
git checkout dev
git branch -D deploy
