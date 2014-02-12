#!/bin/sh
DIRECTORY=PATH_TO_YOUR_DIRECTORY

echo "Updating the pages..."
cd $DIRECTORY
git pull origin master
bundle list
bundle exec jekyll build
