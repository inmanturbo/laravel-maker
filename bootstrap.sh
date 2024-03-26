#!/bin/bash

# Temporary directory for cloning
temp_dir="temp_laravel_repo"

# Repository details
repo_url="https://github.com/laravel/laravel.git"
branch="11.x"
bootstrap_directory="bootstrap"

# Clone the specific branch and directory
git clone --depth 1 --filter=blob:none --sparse $repo_url $temp_dir
cd $temp_dir
git sparse-checkout set $bootstrap_directory

# Move the directory out
mv $bootstrap_directory ../
cd ..

# Check if bootstrap/cache exists, if not create it and add .gitignore
if [ ! -d "bootstrap/cache" ]; then
    mkdir -p "bootstrap/cache"
    echo -e "*\n!.gitignore" > "bootstrap/cache/.gitignore"
fi

# Create storage/framework/cache directory and add .gitignore
mkdir -p "storage/framework/cache/views"
echo -e "*\n!.gitignore" > "storage/framework/cache/.gitignore"

# Cleanup
rm -rf $temp_dir

echo "The '$bootstrap_directory' directory has been downloaded and configured."
