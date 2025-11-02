<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductRequest;
use App\Http\Resources\ProductResource;
use App\Services\ProductServices;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected ProductServices $productServices;

    public function __construct(ProductServices $productServices)
    {
        $this->productServices = $productServices;
    }

    public function index()
    {
        $fields = ['*'];
        $customers = $this->productServices->getAll($fields);
        return response()->json(ProductResource::collection($customers));
    }

    public function show(int $id)
    {
        try {
            $fields = ['*'];
            $customer = $this->productServices->getById($id, $fields);
            return response()->json(new ProductResource($customer));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 404);
        }
    }

    public function store(ProductRequest $request)
    {
        try {
            $products = $this->productServices->create($request->validated());
            return response()->json(new ProductResource($products), 201);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }

    public function update(ProductRequest $request, int $id)
    {
        try {
            $products = $this->productServices->update($id, $request->validated());
            return response()->json(new ProductResource($products));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }

    public function destroy(int $id)
    {
        try {
            $this->productServices->delete($id);
            return response()->json([
                'status' => 'success',
                'message' => 'Customer deleted successfully.',
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => $th->getMessage(),
            ], 500);
        }
    }
}
