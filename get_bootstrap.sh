#!/bin/bash

branch=${1:-"11.x"}

# Temporary directory for cloning
temp_dir="temp_laravel_repo"

# Repository details
repo_url="https://github.com/laravel/laravel.git"
directory="bootstrap"

# Clone the specific branch and directory
git clone --depth 1 --filter=blob:none --sparse $repo_url $temp_dir
cd $temp_dir
git sparse-checkout set $directory

# Move the directory out
mv $directory ../
cd ..
rm -rf $temp_dir

echo "The '$directory' directory has been downloaded."