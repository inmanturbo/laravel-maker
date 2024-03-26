# Laravel Maker

Decorator for laravel `make` commands which allows you to pass a stub as an option.

### installation

for using make commands during package development

```bash
curl "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/install.sh" | bash
```

for simply adding the maker script to a laravel app

```bash
curl "https://raw.githubusercontent.com/inmanturbo/laravel-maker/main/maker" | bash
```

### Usage

```bash
php maker make:model MyModel --stub="my-model-stub"
