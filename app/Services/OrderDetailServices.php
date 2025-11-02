<?php

namespace App\Services;

use App\Models\OrderDetail;
use App\Models\OrderSumary;
use App\Repositories\OrderDetailRepositories;
use App\Repositories\OrderSummaryRepositories;
use App\Repositories\ProductRepositories;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;
use Carbon\Carbon;

class OrderDetailServices
{
    protected OrderDetailRepositories $orderDetailRepositories;
    protected ProductRepositories $productRepositories;
    protected OrderSummaryRepositories $orderSummaryRepositories;

    public function __construct(OrderDetailRepositories $orderDetailRepositories, ProductRepositories $productRepositories, OrderSummaryRepositories $orderSummaryRepositories)
    {
        $this->orderDetailRepositories = $orderDetailRepositories;
        $this->productRepositories = $productRepositories;
        $this->orderSummaryRepositories = $orderSummaryRepositories;
    }

    public function getAll(array $fields = ['*'])
    {
        return $this->orderDetailRepositories->getAll($fields);
    }

    public function getById(int $id, array $fields = ['*'])
    {
        return $this->orderDetailRepositories->getById($id, $fields);
    }

    private function generateNoOrder(): string
    {
        $lastOrder = OrderDetail::latest('id')->first();

        if (!$lastOrder) {
            return 'ORDER001';
        }

        $lastNumber = (int) Str::after($lastOrder->no_order, 'ORDER');
        $newNumber = $lastNumber + 1;

        return 'ORDER' . str_pad($newNumber, 3, '0', STR_PAD_LEFT);
    }

    public function create(array $data)
    {
        return DB::transaction(function () use ($data) {
            $userId = auth()->id();
            $product = $this->productRepositories->getById($data['product_id'], ['id', 'jumlah_stok', 'harga']);

            if ($product->jumlah_stok == 0) {
                throw ValidationException::withMessages([
                    'product' => ['Stok produk ini habis.']
                ]);
            }

            if ($data['quantity'] > $product->jumlah_stok) {
                throw ValidationException::withMessages([
                    'product' => ['Stok produk tidak mencukupi, kurangi quantity.']
                ]);
            }

            $totalHarga = $product->harga * $data['quantity'];

            $product->update([
                'jumlah_stok' => $product->jumlah_stok - $data['quantity']
            ]);

            $orderSummaryData = [
                'no_order' => $this->generateNoOrder(),
                'customer_id' => $userId,
                'tanggal_transaksi' => Carbon::now()->format('Y-m-d'),
                'total_harga' => $totalHarga,
            ];

            $orderSummary = $this->orderSummaryRepositories->create($orderSummaryData);

            $orderDetailData = [
                'no_order' => $this->generateNoOrder(),
                'kode_barang' => $product->nama_barang,
                'nama_barang' => $product->nama_barang,
                'quantity' => $data['quantity'],
                'harga_per_unit' => $product->harga,
                'total_harga' => $totalHarga,
            ];

            $this->orderDetailRepositories->create($orderDetailData);

            return $orderSummary;
        });
    }


    // public function update(int $id, array $data)
    // {
    //     return $this->orderDetailRepositories->update($id, $data);
    // }

    public function delete(int $id)
    {
        return $this->orderDetailRepositories->delete($id);
    }
}
