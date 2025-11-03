<?php

use App\Http\Controllers\CustomerController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\OrderDetailController;
use App\Http\Controllers\OrderSummaryController;
use App\Http\Controllers\ProductController;
use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResource('customers', CustomerController::class);
Route::apiResource('products', ProductController::class);
Route::apiResource('orders', OrderDetailController::class);
Route::apiResource('summary', OrderSummaryController::class);
Route::get('/dashboard', [DashboardController::class,'getDashboard']);
