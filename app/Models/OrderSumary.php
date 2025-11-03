<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderSumary extends Model
{
    use HasFactory;

    protected $fillable = [
        'no_order',
        'tanggal_transaksi',
        'nama_customer',
        'total_harga'
    ];
    public function orderDetails()
    {
        return $this->hasMany(OrderDetail::class);
    }
    public function customer()
    {
        $this->belongsTo(Customer::class);
    }
}
