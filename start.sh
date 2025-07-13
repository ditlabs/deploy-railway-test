#!/bin/sh

# Hentikan skrip jika ada perintah yang gagal
set -e

# 1. Jalankan migrasi database
echo "Running database migrations..."
php artisan migrate --force

# 2. Jalankan proses utama aplikasi (PHP-FPM)
echo "Starting PHP-FPM..."
php-fpm