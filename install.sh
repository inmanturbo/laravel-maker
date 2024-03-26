curl -o artisan "https://raw.githubusercontent.com/laravel/laravel/11.x/artisan"
chmod +x artisan
curl -o maker "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/maker"
chmod +x maker
curl "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/bootstrap.sh" | bash
composer require --dev laravel/framework laravel/pint laravel/tinker spatie/laravel-ignition