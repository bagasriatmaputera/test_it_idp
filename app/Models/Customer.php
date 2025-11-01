<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $fillable =[
        'nama_customer',
        'alamat',
        'kodepos',
        'no_handphone',
        'email',
        'tanggal_bergabung'
    ];

    public function orderSummaries(){
        $this->hasMany(OrderSumary::class);
    }
    public function orderDetail(){
        $this->hasMany(OrderDetail::class);
    }
}
