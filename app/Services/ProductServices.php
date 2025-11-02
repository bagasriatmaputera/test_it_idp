<?php

namespace App\Services;

use App\Models\Product;
use App\Repositories\ProductRepositories;
use Illuminate\Support\Str;

use function PHPUnit\Framework\isEmpty;

class ProductServices
{
    protected ProductRepositories $productRepositories;

    public function __construct(ProductRepositories $productRepositories)
    {
        $this->productRepositories = $productRepositories;
    }

    public function getAll(array $fields = ['*'])
    {
        return $this->productRepositories->getAll($fields);
    }

    public function getById(int $id, array $fields = ['*'])
    {
        return $this->productRepositories->getById($id, $fields);
    }

    private function generateKodeBarang(): string
    {
        $lastProduct = Product::latest('id')->first();

        if (!$lastProduct) {
            return 'BRG001';
        }

        $lastNumber = (int) Str::after($lastProduct->kode_barang, 'BRG');
        $newNumber = $lastNumber + 1;

        return 'BRG' . str_pad($newNumber, 3, '0', STR_PAD_LEFT);
    }

    public function create(array $data)
    {
        $data['kode_barang'] = $this->generateKodeBarang();
        return $this->productRepositories->create($data);
    }

    public function update(int $id, array $data)
    {
        $product = $this->getById($id, $fields ?? ['*']);
        if (!$product) {
            throw new \Exception("Produk dengan ID {$id} tidak ditemukan.");
        }

        if (empty($data['nama_barang'])) {
            $data['nama_barang'] = $product->nama_barang;
        }

        if (empty($data['harga'])) {
            $data['harga'] = $product->harga;
        }

        if (empty($data['jumlah_stok'])) {
            $data['jumlah_stok'] = $product->jumlah_stok;
        }
        return $this->productRepositories->update($id, $data);
    }

    public function delete(int $id)
    {
        return $this->productRepositories->delete($id);
    }
}
