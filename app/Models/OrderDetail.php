<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    use HasFactory;
    protected $fillable = [
        'no_order',
        'kode_barang',
        'nama_barang',
        'quantity',
        'harga_per_unit',
        'total_harga'
    ];
    public function product()
{
    return $this->belongsTo(Product::class);
}

public function orderSummary()
{
    return $this->belongsTo(OrderSumary::class);
}

}
