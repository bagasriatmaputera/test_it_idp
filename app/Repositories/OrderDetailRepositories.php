<?php

namespace App\Repositories;

use App\Models\OrderDetail;

class OrderDetailRepositories
{
    public function getAll(array $fields)
    {
        return OrderDetail::select($fields)->latest()->paginate(10);
    }
    public function getById(int $id, array $fields)
    {
        return OrderDetail::select($fields)->findOrFail($id);
    }
    public function create(array $data)
    {
        return OrderDetail::create($data);
    }
    // public function update(int $id, array $data)
    // {
    //     $OrderDetail = OrderDetail::findOrFail($id);
    //     $OrderDetail->update($data);
    //     return $OrderDetail;
    // }
    public function delete(int $id)
    {
        $OrderDetail = OrderDetail::findOrFail($id);
        $OrderDetail->delete();
    }
}
