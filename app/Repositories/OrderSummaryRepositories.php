<?php

namespace App\Repositories;

use App\Models\OrderSumary;

class OrderSummaryRepositories
{
    public function getAll(array $fields)
    {
        return OrderSumary::select($fields)->latest()->paginate(15);
    }
    public function getById(int $id, array $fields)
    {
        return OrderSumary::select($fields)->findOrFail($id);
    }
    public function create(array $data)
    {
        return OrderSumary::create($data);
    }
    public function update(int $id, array $data)
    {
        $OrderSumary = OrderSumary::findOrFail($id);
        $OrderSumary->update($data);
        return $OrderSumary;
    }
    public function delete(int $id)
    {
        $OrderSumary = OrderSumary::findOrFail($id);
        $OrderSumary->delete();
    }
}
