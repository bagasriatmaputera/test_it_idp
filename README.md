<img width="1765" height="947" alt="image" src="https://github.com/user-attachments/assets/6511fb4f-cdba-4186-822d-717be7c935af" />

## 📖 Deskripsi

Proyek ini dibuat untuk kebutuhan **tes IT di PT Indonesia Delapan Persen**,
menggunakan **Laravel sebagai backend RESTful API** dan **Vue.js sebagai frontend**.

Sistem ini mengelola data pelanggan (`customers`), produk (`products`), serta transaksi penjualan (`order_summaries` dan `order_details`) dengan arsitektur **Repository–Service Pattern**, untuk menjaga struktur kode yang bersih, modular, dan mudah di-maintain.

---

## ⚙️ Teknologi yang Digunakan

* **Backend:** Laravel 12 (PHP 8.2+)
* **Frontend:** Vue.js 3 + Vite
* **Database:** MySQL
* **Tools:** Composer, Node.js, NPM, Postman

---

## 🚀 Cara Instalasi Backend (Laravel)

### 1️⃣ Clone Repository

```bash
git clone https://github.com/bagasriatmaputera/test_it_idp.git
cd test_it_idp
```

### 2️⃣ Install Dependency

```bash
composer install
```

### 3️⃣ Buat File `.env`

Salin konfigurasi default:

```bash
cp .env.example .env
```

Lalu ubah pengaturan database di file `.env` sesuai dengan lokal kamu:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=test_it_idp
DB_USERNAME=root
DB_PASSWORD=
```

### 4️⃣ Generate Key dan Migrasi Database

```bash
php artisan key:generate
php artisan migrate
```

### 5️⃣ Import Database SQL

Setelah migrasi selesai, **import file SQL** yang sudah disediakan ke database `test_it_idp`
melalui **phpMyAdmin** atau terminal MySQL, contoh:

```bash
mysql -u root -p test_it_idp < database/test_it_idp.sql
```

*(Pastikan file `test_it_idp.sql` sudah ada di folder `database/`.)*

### 6️⃣ Jalankan Server

```bash
php artisan serve
```

Server akan berjalan di:

```
http://localhost:8000
```
Setelah berhasil berjalan maka bisa langsung akses link frontend React js Typescript
---

## 🖥️ Link FE (vercel)

Frontend proyek ini tersedia di link berikut:
👉 https://test-it-idp-reactjs.vercel.app/
github: https://github.com/bagasriatmaputera/test_it_idp_reactjs.git
