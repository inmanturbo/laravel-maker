#if artisan is not found, download it
if [ ! -f "artisan" ]; then
    curl -o artisan "https://raw.githubusercontent.com/laravel/laravel/11.x/artisan"
    chmod +x artisan
fi

# if maker is not found, download it
if [ ! -f "maker" ]; then
    curl -o maker "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/maker"
    chmod +x maker
fi

#there is no bootstrap directory, run the bootstrap script
if [ ! -d "bootstrap" ]; then
    curl "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/bootstrap.sh" | bash
fi

# if [ -d "src" ] && [ ! -d "app" ]; then
#     ln -s "$(pwd)/src" "$(pwd)/app"

#     if ! grep -q "app/" .gitignore; then
#         echo "\n app/" >> .gitignore
#     fi
    composer require --dev laravel/framework laravel/pint laravel/tinker spatie/laravel-ignition
# fi
