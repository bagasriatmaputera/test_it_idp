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
git clone https://github.com/username/backend-order-system.git
cd backend-order-system
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
DB_DATABASE=order_db
DB_USERNAME=root
DB_PASSWORD=
```

### 4️⃣ Generate Key dan Migrasi Database

```bash
php artisan key:generate
php artisan migrate
php artisan db:seed
```

### 5️⃣ Jalankan Server

```bash
php artisan serve
```

Server akan berjalan di:

```
http://localhost:8000
```

---

## 🖥️ Cara Instalasi Frontend (Vue.js)

Masuk Ke link github berikut


