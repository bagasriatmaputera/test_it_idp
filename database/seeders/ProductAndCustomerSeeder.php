<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\Customer;
use Faker\Factory as Faker;

class ProductAndCustomerSeeder extends Seeder
{

    public function run(): void
    {
        $faker = Faker::create('id_ID');

        for ($i = 1; $i <= 20; $i++) {
            Customer::create([
                'nama_customer' => $faker->name(),
                'alamat' => $faker->address(),
                'kodepos' => $faker->numberBetween(11111, 99999),
                'no_handphone' => '08' . $faker->numberBetween(1000000000, 9999999999),
                'email' => $faker->unique()->safeEmail(),
                'tanggal_bergabung' => $faker->dateTimeBetween('-2 years', 'now'),
            ]);
        }

        $produkTeknologi = [
            'Laptop ASUS ROG Strix G16',
            'MacBook Pro M3 2024',
            'Lenovo ThinkPad X1 Carbon',
            'HP Pavilion Gaming 15',
            'Acer Predator Helios 300',
            'Samsung Galaxy S24 Ultra',
            'iPhone 15 Pro Max',
            'Xiaomi 14 Ultra',
            'Oppo Find X7 Pro',
            'Vivo X100 Pro',
            'iPad Pro M2 12.9"',
            'Samsung Galaxy Tab S9 Ultra',
            'Apple Watch Series 9',
            'Samsung Galaxy Watch 6 Classic',
            'Sony WH-1000XM5 Headphones',
            'Logitech MX Master 3S Mouse',
            'Razer BlackWidow V4 Keyboard',
            'Canon EOS R6 Mark II Camera',
            'GoPro Hero 12 Black',
            'DJI Mini 4 Pro Drone',
        ];

        foreach ($produkTeknologi as $index => $namaProduk) {
            Product::create([
                'nama_barang' => $namaProduk,
                'kode_barang' => 'BRG' . str_pad($index + 1, 3, '0', STR_PAD_LEFT),
                'harga' => $faker->numberBetween(1000000, 40000000),
                'jumlah_stok' => $faker->numberBetween(5, 50),
            ]);
        }
    }
}
