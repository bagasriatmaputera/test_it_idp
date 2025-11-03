<?php

namespace App\Repositories;

use App\Models\Customer;
use App\Models\OrderSumary;
use App\Models\Product;

class DashboardRepositories
{
    public function getKpi(): array
    {
        $totalCustomers = Customer::count();
        $totalProducts = Product::count();
        $totalOrders = OrderSumary::count();
        $maxPayment = OrderSumary::max('total_harga');

        return [
            'total_customers' => $totalCustomers,
            'total_products' => $totalProducts,
            'total_orders' => $totalOrders,
            'max_payment' => $maxPayment,
        ];
    }
}
