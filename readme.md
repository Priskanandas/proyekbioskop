# Proyek Bioskop

Aplikasi manajemen bioskop berbasis web yang dikembangkan menggunakan Laravel. Sistem ini memungkinkan admin mengelola daftar film, jadwal tayang, dan melihat data pemesanan pengguna.

## Fitur
- CRUD Film dan Jadwal
- Pemesanan tiket
- Login user dan admin
- Notifikasi berhasil booking

## Teknologi
- Laravel 
- MySQL
- Bootstrap 5
- JavaScript

## Instalasi Lokal
```bash
git clone https://github.com/Priskanandas/proyekbioskop.git
cd proyekbioskop
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve
