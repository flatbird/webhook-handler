#!/bin/sh
DIRECTORY=PATH_TO_YOUR_DIRECTORY

echo "Updating the pages..."
cd $DIRECTORY
git pull origin master

export LANG=ja_JP.UTF-8
bundle exec jekyll build
