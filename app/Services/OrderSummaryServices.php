<?php

namespace App\Services;

use App\Repositories\OrderSummaryRepositories;

class OrderSummaryServices
{
    protected OrderSummaryRepositories $orderSummaryRepositories;

    public function __construct(OrderSummaryRepositories $orderSummaryRepositories)
    {
        $this->orderSummaryRepositories = $orderSummaryRepositories;
    }

    public function getAll(array $fields = ['*'])
    {
        return $this->orderSummaryRepositories->getAll($fields);
    }

    public function getById(int $id, array $fields = ['*'])
    {
        return $this->orderSummaryRepositories->getById($id, $fields);
    }

    public function delete(int $id)
    {
        return $this->orderSummaryRepositories->delete($id);
    }
}
