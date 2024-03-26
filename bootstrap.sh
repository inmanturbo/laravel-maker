#!/bin/bash

temp_dir="temp_laravel_repo"

repo_url="https://github.com/laravel/laravel.git"
branch="11.x"
bootstrap_directory="bootstrap"

git clone --depth 1 --filter=blob:none --sparse $repo_url $temp_dir
cd $temp_dir
git sparse-checkout set $bootstrap_directory

mv $bootstrap_directory ../
cd ..

if [ ! -d "bootstrap/cache" ]; then
    mkdir -p "bootstrap/cache"
    echo -e "*\n!.gitignore" > "bootstrap/cache/.gitignore"
fi

mkdir -p "storage/framework/views"
echo -e "*\n!.gitignore" > "storage/framework/views/.gitignore"

rm -rf $temp_dir

echo "The '$bootstrap_directory' directory has been downloaded and configured."
