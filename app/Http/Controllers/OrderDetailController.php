<?php

namespace App\Http\Controllers;

use App\Http\Requests\OrderDetailRequest;
use App\Http\Resources\OrderDetailResource;
use App\Services\OrderDetailServices;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class OrderDetailController extends Controller
{
    protected OrderDetailServices $orderDetailServices;

    public function __construct(OrderDetailServices $orderDetailServices)
    {

        $this->orderDetailServices = $orderDetailServices;
    }

    public function index(): JsonResponse
    {
        $fields = ['no_order', 'kode_barang', 'nama_barang', 'quantity', 'harga_per_unit', 'total_harga'];
        $orderDetails = $this->orderDetailServices->getAll($fields);

        return response()->json(OrderDetailResource::collection($orderDetails));
    }

    public function show(int $id): JsonResponse
    {
        try {
            $orderDetail = $this->orderDetailServices->getById($id, ['*']);
            return response()->json(new OrderDetailResource($orderDetail));
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Data tidak ditemukan: ' . $th->getMessage(),
            ], 404);
        }
    }

    public function store(OrderDetailRequest $request): JsonResponse
    {
        try {
            $orderDetail = $this->orderDetailServices->create($request->validated());
            return response()->json(new OrderDetailResource($orderDetail), 201);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal menyimpan data: ' . $th->getMessage(),
            ], 500);
        }
    }

    public function destroy(int $id): JsonResponse
    {
        try {
            $this->orderDetailServices->delete($id);
            return response()->json([
                'status' => 'success',
                'message' => 'Order detail berhasil dihapus.',
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => 'error',
                'message' => 'Gagal menghapus data: ' . $th->getMessage(),
            ], 500);
        }
    }
}
