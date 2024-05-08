#!/bin/bash
# Stash changes
git stash
# Pull latest changes from remote
git pull
# Pop stash
git stash pop
# Add all changes
git add .
# Commit changes
git commit -m "更新上传"
# Push changes to remote
git push

